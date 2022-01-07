; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaInstanceGets.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaInstanceGets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_11__***, i32*)* @vlm_ControlMediaInstanceGets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlm_ControlMediaInstanceGets(i32* %0, i32 %1, %struct.TYPE_11__*** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__***, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_11__*** %2, %struct.TYPE_11__**** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.TYPE_10__* @vlm_ControlMediaGetById(i32* %16, i32 %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %10, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %5, align 4
  br label %107

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %26 = call i32 @TAB_INIT(i32 %24, %struct.TYPE_11__** %25)
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %98, %23
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %101

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %36, i64 %38
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %14, align 8
  %41 = call %struct.TYPE_11__* (...) @vlm_media_instance_New()
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %15, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @strdup(i64 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %46, %33
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @vlc_player_Lock(i32 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @vlc_player_GetTime(i32 %60)
  %62 = call i8* @US_FROM_VLC_TICK(i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @vlc_player_GetLength(i32 %67)
  %69 = call i8* @US_FROM_VLC_TICK(i32 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @vlc_player_GetPosition(i32 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @vlc_player_IsPaused(i32 %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @vlc_player_GetRate(i32 %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @vlc_player_Unlock(i32 %92)
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %97 = call i32 @TAB_APPEND(i32 %94, %struct.TYPE_11__** %95, %struct.TYPE_11__* %96)
  br label %98

98:                                               ; preds = %53
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %13, align 4
  br label %27

101:                                              ; preds = %27
  %102 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %103 = load %struct.TYPE_11__***, %struct.TYPE_11__**** %8, align 8
  store %struct.TYPE_11__** %102, %struct.TYPE_11__*** %103, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %101, %21
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.TYPE_10__* @vlm_ControlMediaGetById(i32*, i32) #1

declare dso_local i32 @TAB_INIT(i32, %struct.TYPE_11__**) #1

declare dso_local %struct.TYPE_11__* @vlm_media_instance_New(...) #1

declare dso_local i32 @strdup(i64) #1

declare dso_local i32 @vlc_player_Lock(i32) #1

declare dso_local i8* @US_FROM_VLC_TICK(i32) #1

declare dso_local i32 @vlc_player_GetTime(i32) #1

declare dso_local i32 @vlc_player_GetLength(i32) #1

declare dso_local i32 @vlc_player_GetPosition(i32) #1

declare dso_local i32 @vlc_player_IsPaused(i32) #1

declare dso_local i32 @vlc_player_GetRate(i32) #1

declare dso_local i32 @vlc_player_Unlock(i32) #1

declare dso_local i32 @TAB_APPEND(i32, %struct.TYPE_11__**, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
