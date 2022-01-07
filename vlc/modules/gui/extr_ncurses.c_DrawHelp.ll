; ModuleID = '/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_DrawHelp.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/gui/extr_ncurses.c_DrawHelp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@C_CATEGORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"[Display]\00", align 1
@C_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c" h,H                    Show/Hide help box\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c" i                      Show/Hide info box\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c" M                      Show/Hide metadata box\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c" L                      Show/Hide messages box\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c" P                      Show/Hide playlist box\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c" B                      Show/Hide filebrowser\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c" S                      Show/Hide statistics box\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c" Esc                    Close Add/Search entry\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c" Ctrl-l                 Refresh the screen\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"[Global]\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c" q, Q, Esc              Quit\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c" s                      Stop\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c" <space>                Pause/Play\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c" f                      Toggle Fullscreen\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c" c                      Cycle through audio tracks\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c" v                      Cycle through subtitles tracks\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c" b                      Cycle through video tracks\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c" n, p                   Next/Previous playlist item\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c" [, ]                   Next/Previous title\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c" <, >                   Next/Previous chapter\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c" <left>,<right>         Seek -/+ 1%%\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c" a, z                   Volume Up/Down\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c" m                      Mute\00", align 1
@.str.25 = private unnamed_addr constant [62 x i8] c" <up>,<down>            Navigate through the box line by line\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c" <pageup>,<pagedown>    Navigate through the box page by page\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c" <start>,<end>          Navigate to start/end of box\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"[Playlist]\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c" r                      Toggle Random playing\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c" l                      Toggle Loop Playlist\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c" R                      Toggle Repeat item\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c" o                      Order Playlist by title\00", align 1
@.str.33 = private unnamed_addr constant [56 x i8] c" O                      Reverse order Playlist by title\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c" g                      Go to the current playing item\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c" /                      Look for an item\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c" ;                      Look for the next item\00", align 1
@.str.37 = private unnamed_addr constant [37 x i8] c" A                      Add an entry\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c" D, <backspace>, <del>  Delete an entry\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c" e                      Eject (if stopped)\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"[Filebrowser]\00", align 1
@.str.41 = private unnamed_addr constant [62 x i8] c" <enter>                Add the selected file to the playlist\00", align 1
@.str.42 = private unnamed_addr constant [67 x i8] c" <space>                Add the selected directory to the playlist\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c" .                      Show/Hide hidden files\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"[Player]\00", align 1
@.str.45 = private unnamed_addr constant [36 x i8] c" <up>,<down>            Seek +/-5%%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @DrawHelp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DrawHelp(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %7, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @C_CATEGORY, align 4
  %14 = call i32 @color_set(i32 %13, i32* null)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  %19 = call i8* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %16, i32 %17, i8* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* @C_DEFAULT, align 4
  %27 = call i32 @color_set(i32 %26, i32* null)
  br label %28

28:                                               ; preds = %25, %15
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %29, i32 %30, i8* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %34, i32 %35, i8* %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  %42 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %39, i32 %40, i8* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %44, i32 %45, i8* %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  %52 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %53 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %49, i32 %50, i8* %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  %57 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %58 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %54, i32 %55, i8* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  %62 = call i8* @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %63 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %59, i32 %60, i8* %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  %67 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0))
  %68 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %64, i32 %65, i8* %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  %72 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  %73 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %69, i32 %70, i8* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  %77 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %74, i32 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %28
  %83 = load i32, i32* @C_CATEGORY, align 4
  %84 = call i32 @color_set(i32 %83, i32* null)
  br label %85

85:                                               ; preds = %82, %28
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  %89 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %90 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %86, i32 %87, i8* %89)
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @C_DEFAULT, align 4
  %97 = call i32 @color_set(i32 %96, i32* null)
  br label %98

98:                                               ; preds = %95, %85
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  %102 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %103 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %99, i32 %100, i8* %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  %107 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %108 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %104, i32 %105, i8* %107)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  %112 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  %113 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %109, i32 %110, i8* %112)
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  %117 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %118 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %114, i32 %115, i8* %117)
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  %122 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0))
  %123 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %119, i32 %120, i8* %122)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  %127 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  %128 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %124, i32 %125, i8* %127)
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  %132 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0))
  %133 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %129, i32 %130, i8* %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  %137 = call i8* @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i64 0, i64 0))
  %138 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %134, i32 %135, i8* %137)
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %140 = load i32, i32* %4, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %4, align 4
  %142 = call i8* @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0))
  %143 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %139, i32 %140, i8* %142)
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  %147 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0))
  %148 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %144, i32 %145, i8* %147)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  %152 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0))
  %153 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %149, i32 %150, i8* %152)
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %4, align 4
  %157 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0))
  %158 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %154, i32 %155, i8* %157)
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %160 = load i32, i32* %4, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %4, align 4
  %162 = call i8* @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0))
  %163 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %159, i32 %160, i8* %162)
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %165 = load i32, i32* %4, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %4, align 4
  %167 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.25, i64 0, i64 0))
  %168 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %164, i32 %165, i8* %167)
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %4, align 4
  %172 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i64 0, i64 0))
  %173 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %169, i32 %170, i8* %172)
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %175 = load i32, i32* %4, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %4, align 4
  %177 = call i8* @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i64 0, i64 0))
  %178 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %174, i32 %175, i8* %177)
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %180 = load i32, i32* %4, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %4, align 4
  %182 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %179, i32 %180, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %98
  %188 = load i32, i32* @C_CATEGORY, align 4
  %189 = call i32 @color_set(i32 %188, i32* null)
  br label %190

190:                                              ; preds = %187, %98
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %4, align 4
  %194 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  %195 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %191, i32 %192, i8* %194)
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %190
  %201 = load i32, i32* @C_DEFAULT, align 4
  %202 = call i32 @color_set(i32 %201, i32* null)
  br label %203

203:                                              ; preds = %200, %190
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  %207 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0))
  %208 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %204, i32 %205, i8* %207)
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %210 = load i32, i32* %4, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %4, align 4
  %212 = call i8* @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0))
  %213 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %209, i32 %210, i8* %212)
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %215 = load i32, i32* %4, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %4, align 4
  %217 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0))
  %218 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %214, i32 %215, i8* %217)
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %220 = load i32, i32* %4, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %4, align 4
  %222 = call i8* @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.32, i64 0, i64 0))
  %223 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %219, i32 %220, i8* %222)
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %4, align 4
  %227 = call i8* @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.33, i64 0, i64 0))
  %228 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %224, i32 %225, i8* %227)
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %230 = load i32, i32* %4, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %4, align 4
  %232 = call i8* @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.34, i64 0, i64 0))
  %233 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %229, i32 %230, i8* %232)
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %235 = load i32, i32* %4, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %4, align 4
  %237 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.35, i64 0, i64 0))
  %238 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %234, i32 %235, i8* %237)
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %240 = load i32, i32* %4, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %4, align 4
  %242 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.36, i64 0, i64 0))
  %243 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %239, i32 %240, i8* %242)
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %245 = load i32, i32* %4, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %4, align 4
  %247 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.37, i64 0, i64 0))
  %248 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %244, i32 %245, i8* %247)
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %250 = load i32, i32* %4, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %4, align 4
  %252 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0))
  %253 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %249, i32 %250, i8* %252)
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %255 = load i32, i32* %4, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %4, align 4
  %257 = call i8* @_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.39, i64 0, i64 0))
  %258 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %254, i32 %255, i8* %257)
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %260 = load i32, i32* %4, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %4, align 4
  %262 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %259, i32 %260, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %263 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %203
  %268 = load i32, i32* @C_CATEGORY, align 4
  %269 = call i32 @color_set(i32 %268, i32* null)
  br label %270

270:                                              ; preds = %267, %203
  %271 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %272 = load i32, i32* %4, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %4, align 4
  %274 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0))
  %275 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %271, i32 %272, i8* %274)
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %270
  %281 = load i32, i32* @C_DEFAULT, align 4
  %282 = call i32 @color_set(i32 %281, i32* null)
  br label %283

283:                                              ; preds = %280, %270
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %285 = load i32, i32* %4, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %4, align 4
  %287 = call i8* @_(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.41, i64 0, i64 0))
  %288 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %284, i32 %285, i8* %287)
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %290 = load i32, i32* %4, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %4, align 4
  %292 = call i8* @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.42, i64 0, i64 0))
  %293 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %289, i32 %290, i8* %292)
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %295 = load i32, i32* %4, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %4, align 4
  %297 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i64 0, i64 0))
  %298 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %294, i32 %295, i8* %297)
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %300 = load i32, i32* %4, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %4, align 4
  %302 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %299, i32 %300, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %283
  %308 = load i32, i32* @C_CATEGORY, align 4
  %309 = call i32 @color_set(i32 %308, i32* null)
  br label %310

310:                                              ; preds = %307, %283
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %312 = load i32, i32* %4, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %4, align 4
  %314 = call i8* @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i64 0, i64 0))
  %315 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %311, i32 %312, i8* %314)
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %310
  %321 = load i32, i32* @C_DEFAULT, align 4
  %322 = call i32 @color_set(i32 %321, i32* null)
  br label %323

323:                                              ; preds = %320, %310
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %325 = load i32, i32* %4, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %4, align 4
  %327 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.45, i64 0, i64 0))
  %328 = call i32 (%struct.TYPE_5__*, i32, i8*, ...) bitcast (i32 (...)* @MainBoxWrite to i32 (%struct.TYPE_5__*, i32, i8*, ...)*)(%struct.TYPE_5__* %324, i32 %325, i8* %327)
  %329 = load i32, i32* %4, align 4
  ret i32 %329
}

declare dso_local i32 @color_set(i32, i32*) #1

declare dso_local i32 @MainBoxWrite(...) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
