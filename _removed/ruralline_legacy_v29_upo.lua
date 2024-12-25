local Map = game.GetMap():lower() or ""

if Map:find("gm_metro_ruralline_v29") then
    Metrostroi.PlatformMap = "ruralline_legacy"
    Metrostroi.CurrentMap = "ruralline_legacy"
elseif Map:find("gm_metro_ruralline_v3") or Map:find("gm_metro_ruralline_v4") or Map:find("gm_metro_ruralline_v29_old") then
    print("ruralline_legacy_v29_rri.lua: Does not support map versions: V1, V2, V25-V28, Old-V29,V3,V4.")
else
    return
end

Metrostroi.SetUPOAnnouncer({
	--Announcer Startup
	name = "UPO ruralline",
	tone = {"subway_announcers/upo_treschev/tone.mp3", 1.1},
	click1 = {"subway_announcers/upo/click1.mp3", 0.3},
	click2 = {"subway_announcers/upo/click2.mp3", 0.1},
	--Stations
	AVI = {"subway_announcers/ballistic_announcer/stations/aviation_university.mp3", 2.27},
	CIT = {"subway_announcers/ballistic_announcer/stations/cityhall.mp3", 1.36},
	MAR = {"subway_announcers/ballistic_announcer/stations/market_street.mp3", 1.28},
	ROC = {"subway_announcers/ballistic_announcer/stations/rocklake.mp3", 1.10},
	URB = {"subway_announcers/ballistic_announcer/stations/urban_park.mp3", 1.33},
	WHI = {"subway_announcers/ballistic_announcer/stations/white_forest.mp3", 1.57},
	--Station Commands
	NEXIS = {"subway_announcers/ballistic_announcer/special-files/the_next_station_is.mp3", 2.32},
	THIIS = {"subway_announcers/ballistic_announcer/special-files/this_is.mp3", 1.33},
	TERHE = {"subway_announcers/ballistic_announcer/special-files/this_train_terminates_here.mp3", 2.22},
	--Warning Bell
	st_cm = {"subway_announcers/global-sounds/doors_closing/old-doors.mp3", 4.54},
	},
	{
		{
			151, "Market Street",
			arrlast = {{nil},{"THIIS", "MAR", "TERHE"}},
			dep = {{"NEXIS", "AVI", 0.5, "st_cm"},{nil}},
			noises = {1, 2, 3},noiserandom = 0.2,
			right_doors = true,
		},
		{
			153,"Aviation University",
			arr = {{"THIIS", "AVI"},{"THIIS", "AVI"}},
			dep = {{"NEXIS", "CIT", 0.2, "st_cm"},{"NEXIS", "MAR", 0.2, "st_cm"}},
			noises = {1, 2, 3},noiserandom = 0.2,
			right_doors = true,
		},
		{
			154,"Lakeview City Hall",
			arr = {{"THIIS", "CIT"}, {"THIIS", "CIT"}},
			dep = {{"NEXIS", "WHI", 0.2, "st_cm"}, {"NEXIS", "AVI", 0.2, "st_cm"}},
			noises = {1, 2, 3},noiserandom = 0.2,
			right_doors = true,
		},
		{
			155,"White Forest",
			arr = {{"THIIS", "WHI"}, {"THIIS", "WHI"}},
			dep = {{"NEXIS", "URB", 0.2, "st_cm"}, {"NEXIS", "CIT", 0.2, "st_cm"}},
			noises = {1, 2, 3},noiserandom = 0.2,
			right_doors = true,
		},
		{
			156,"Urban Park",
			arr = {{"THIIS", "URB"}, {"THIIS", "URB"}},
			dep = {{"NEXIS", "ROC", 0.2, "st_cm"}, {"NEXIS", "WHI", 0.2, "st_cm"}},
			noises = {1, 2, 3},noiserandom = 0.2,
			right_doors = true,
		},
		{
			157,"Rocklake",
			arrlast = {{"THIIS", "ROC", "TERHE"}, {nil}},
			dep = {{nil}, {"NEXIS", "URB", 0.2, "st_cm"}},
			noises = {1, 2, 3},noiserandom = 0.2,
			right_doors = true,
		}
	}
)