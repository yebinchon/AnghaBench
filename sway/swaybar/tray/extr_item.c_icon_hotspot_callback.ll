; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_icon_hotspot_callback.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_item.c_icon_hotspot_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.swaybar_tray* }
%struct.swaybar_tray = type { %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.swaybar_config* }
%struct.swaybar_config = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.swaybar_sni** }
%struct.swaybar_sni = type { i32 }
%struct.swaybar_hotspot = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Clicked on %s\00", align 1
@cmp_sni_id = common dso_local global i32 0, align 4
@ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Guessing click position at (%d, %d)\00", align 1
@HOTSPOT_IGNORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"but it doesn't exist\00", align 1
@HOTSPOT_PROCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swaybar_output*, %struct.swaybar_hotspot*, i32, i32, i32, i8*)* @icon_hotspot_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icon_hotspot_callback(%struct.swaybar_output* %0, %struct.swaybar_hotspot* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.swaybar_output*, align 8
  %9 = alloca %struct.swaybar_hotspot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.swaybar_tray*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.swaybar_sni*, align 8
  %17 = alloca %struct.swaybar_config*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.swaybar_output* %0, %struct.swaybar_output** %8, align 8
  store %struct.swaybar_hotspot* %1, %struct.swaybar_hotspot** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %21 = load i32, i32* @SWAY_DEBUG, align 4
  %22 = load i8*, i8** %13, align 8
  %23 = call i32 (i32, i8*, ...) @sway_log(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.swaybar_output*, %struct.swaybar_output** %8, align 8
  %25 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %24, i32 0, i32 3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.swaybar_tray*, %struct.swaybar_tray** %27, align 8
  store %struct.swaybar_tray* %28, %struct.swaybar_tray** %14, align 8
  %29 = load %struct.swaybar_tray*, %struct.swaybar_tray** %14, align 8
  %30 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i32, i32* @cmp_sni_id, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @list_seq_find(%struct.TYPE_8__* %31, i32 %32, i8* %33)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %104

37:                                               ; preds = %6
  %38 = load %struct.swaybar_tray*, %struct.swaybar_tray** %14, align 8
  %39 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.swaybar_sni**, %struct.swaybar_sni*** %41, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.swaybar_sni*, %struct.swaybar_sni** %42, i64 %44
  %46 = load %struct.swaybar_sni*, %struct.swaybar_sni** %45, align 8
  store %struct.swaybar_sni* %46, %struct.swaybar_sni** %16, align 8
  %47 = load %struct.swaybar_tray*, %struct.swaybar_tray** %14, align 8
  %48 = getelementptr inbounds %struct.swaybar_tray, %struct.swaybar_tray* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.swaybar_config*, %struct.swaybar_config** %50, align 8
  store %struct.swaybar_config* %51, %struct.swaybar_config** %17, align 8
  %52 = load %struct.swaybar_output*, %struct.swaybar_output** %8, align 8
  %53 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.swaybar_config*, %struct.swaybar_config** %17, align 8
  %56 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %54, %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %18, align 4
  %62 = load %struct.swaybar_config*, %struct.swaybar_config** %17, align 8
  %63 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ZWLR_LAYER_SURFACE_V1_ANCHOR_TOP, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %19, align 4
  %67 = load %struct.swaybar_output*, %struct.swaybar_output** %8, align 8
  %68 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %37
  %73 = load %struct.swaybar_config*, %struct.swaybar_config** %17, align 8
  %74 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %76, %77
  br label %91

79:                                               ; preds = %37
  %80 = load %struct.swaybar_output*, %struct.swaybar_output** %8, align 8
  %81 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.swaybar_config*, %struct.swaybar_config** %17, align 8
  %85 = getelementptr inbounds %struct.swaybar_config, %struct.swaybar_config* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %83, %87
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %88, %89
  br label %91

91:                                               ; preds = %79, %72
  %92 = phi i32 [ %78, %72 ], [ %90, %79 ]
  %93 = add nsw i32 %69, %92
  store i32 %93, i32* %20, align 4
  %94 = load i32, i32* @SWAY_DEBUG, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %20, align 4
  %97 = call i32 (i32, i8*, ...) @sway_log(i32 %94, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load %struct.swaybar_sni*, %struct.swaybar_sni** %16, align 8
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @handle_click(%struct.swaybar_sni* %98, i32 %99, i32 %100, i32 %101, i32 1)
  %103 = load i32, i32* @HOTSPOT_IGNORE, align 4
  store i32 %103, i32* %7, align 4
  br label %109

104:                                              ; preds = %6
  %105 = load i32, i32* @SWAY_DEBUG, align 4
  %106 = call i32 (i32, i8*, ...) @sway_log(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @HOTSPOT_PROCESS, align 4
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %91
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @sway_log(i32, i8*, ...) #1

declare dso_local i32 @list_seq_find(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @handle_click(%struct.swaybar_sni*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
