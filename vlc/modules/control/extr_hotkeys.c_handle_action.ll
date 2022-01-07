; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_handle_action.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_handle_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_action = type { i64, i64, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_14__*, i32*, i64)*, i32 (%struct.TYPE_14__*, i32*, i64)*, i32 (%struct.TYPE_14__*, i32*, i64)*, i32 (%struct.TYPE_14__*, i64)* }
%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i64, i64 }

@actions = common dso_local global %struct.vlc_action* null, align 8
@NULL_ACTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"no handler for action %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i64)* @handle_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_action(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vlc_action*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %38, %2
  %11 = load %struct.vlc_action*, %struct.vlc_action** @actions, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %11, i64 %12
  %14 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NULL_ACTION, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %10
  %19 = load %struct.vlc_action*, %struct.vlc_action** @actions, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %19, i64 %20
  %22 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.vlc_action*, %struct.vlc_action** @actions, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %28, i64 %29
  %31 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %41

37:                                               ; preds = %27, %18
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %5, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %5, align 8
  br label %10

41:                                               ; preds = %36, %10
  %42 = load %struct.vlc_action*, %struct.vlc_action** @actions, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %42, i64 %43
  %45 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NULL_ACTION, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = load i64, i64* %4, align 8
  call void @msg_Warn(%struct.TYPE_14__* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %51)
  br label %129

52:                                               ; preds = %41
  %53 = load %struct.vlc_action*, %struct.vlc_action** @actions, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %53, i64 %54
  store %struct.vlc_action* %55, %struct.vlc_action** %6, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %7, align 8
  %61 = load %struct.vlc_action*, %struct.vlc_action** %6, align 8
  %62 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @vlc_playlist_Lock(i32* %66)
  br label %68

68:                                               ; preds = %65, %52
  %69 = load %struct.vlc_action*, %struct.vlc_action** %6, align 8
  %70 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  switch i64 %71, label %119 [
    i64 131, label %72
    i64 129, label %80
    i64 130, label %89
    i64 128, label %89
  ]

72:                                               ; preds = %68
  %73 = load %struct.vlc_action*, %struct.vlc_action** %6, align 8
  %74 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32 (%struct.TYPE_14__*, i64)*, i32 (%struct.TYPE_14__*, i64)** %75, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = load i64, i64* %4, align 8
  %79 = call i32 %76(%struct.TYPE_14__* %77, i64 %78)
  br label %121

80:                                               ; preds = %68
  %81 = load %struct.vlc_action*, %struct.vlc_action** %6, align 8
  %82 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 2
  %84 = load i32 (%struct.TYPE_14__*, i32*, i64)*, i32 (%struct.TYPE_14__*, i32*, i64)** %83, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i64, i64* %4, align 8
  %88 = call i32 %84(%struct.TYPE_14__* %85, i32* %86, i64 %87)
  br label %121

89:                                               ; preds = %68, %68
  %90 = load i32*, i32** %7, align 8
  %91 = call i32* @vlc_playlist_GetPlayer(i32* %90)
  store i32* %91, i32** %8, align 8
  %92 = load %struct.vlc_action*, %struct.vlc_action** %6, align 8
  %93 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 130
  br i1 %95, label %96, label %105

96:                                               ; preds = %89
  %97 = load %struct.vlc_action*, %struct.vlc_action** %6, align 8
  %98 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i32 (%struct.TYPE_14__*, i32*, i64)*, i32 (%struct.TYPE_14__*, i32*, i64)** %99, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i64, i64* %4, align 8
  %104 = call i32 %100(%struct.TYPE_14__* %101, i32* %102, i64 %103)
  br label %118

105:                                              ; preds = %89
  %106 = load i32*, i32** %8, align 8
  %107 = call i32* @vlc_player_vout_Hold(i32* %106)
  store i32* %107, i32** %9, align 8
  %108 = load %struct.vlc_action*, %struct.vlc_action** %6, align 8
  %109 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32 (%struct.TYPE_14__*, i32*, i64)*, i32 (%struct.TYPE_14__*, i32*, i64)** %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = load i64, i64* %4, align 8
  %115 = call i32 %111(%struct.TYPE_14__* %112, i32* %113, i64 %114)
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @vout_Release(i32* %116)
  br label %118

118:                                              ; preds = %105, %96
  br label %121

119:                                              ; preds = %68
  %120 = call i32 (...) @vlc_assert_unreachable()
  br label %121

121:                                              ; preds = %119, %118, %80, %72
  %122 = load %struct.vlc_action*, %struct.vlc_action** %6, align 8
  %123 = getelementptr inbounds %struct.vlc_action, %struct.vlc_action* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @vlc_playlist_Unlock(i32* %127)
  br label %129

129:                                              ; preds = %49, %126, %121
  ret void
}

declare dso_local void @msg_Warn(%struct.TYPE_14__*, i8*, i64) #1

declare dso_local i32 @vlc_playlist_Lock(i32*) #1

declare dso_local i32* @vlc_playlist_GetPlayer(i32*) #1

declare dso_local i32* @vlc_player_vout_Hold(i32*) #1

declare dso_local i32 @vout_Release(i32*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

declare dso_local i32 @vlc_playlist_Unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
