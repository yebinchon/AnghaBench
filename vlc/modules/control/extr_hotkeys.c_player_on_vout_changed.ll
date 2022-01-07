; ModuleID = '/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_player_on_vout_changed.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/control/extr_hotkeys.c_player_on_vout_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }

@VIDEO_ES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"viewpoint-changeable\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"mouse-button-down\00", align 1
@MouseButtonCallback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"mouse-moved\00", align 1
@MouseMovedCallback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"viewpoint-moved\00", align 1
@ViewpointMovedCallback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32*, i32, i32*, i8*)* @player_on_vout_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @player_on_vout_changed(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @VLC_UNUSED(i32 %15)
  %17 = load i8*, i8** %12, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %13, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i64 @vlc_es_id_GetCat(i32* %19)
  %21 = load i64, i64* @VIDEO_ES, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  br label %68

24:                                               ; preds = %6
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @var_GetBool(i32* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %66 [
    i32 129, label %28
    i32 128, label %47
  ]

28:                                               ; preds = %24
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* @MouseButtonCallback, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %32 = call i32 @var_AddCallback(i32* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %30, %struct.TYPE_6__* %31)
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @MouseMovedCallback, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @var_AddCallback(i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %34, %struct.TYPE_6__* %37)
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @ViewpointMovedCallback, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = call i32 @var_AddCallback(i32* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %43, %struct.TYPE_6__* %44)
  br label %46

46:                                               ; preds = %41, %28
  br label %68

47:                                               ; preds = %24
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* @MouseButtonCallback, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %51 = call i32 @var_DelCallback(i32* %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %49, %struct.TYPE_6__* %50)
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @MouseMovedCallback, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = call i32 @var_DelCallback(i32* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %53, %struct.TYPE_6__* %56)
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %47
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* @ViewpointMovedCallback, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = call i32 @var_DelCallback(i32* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %62, %struct.TYPE_6__* %63)
  br label %65

65:                                               ; preds = %60, %47
  br label %68

66:                                               ; preds = %24
  %67 = call i32 (...) @vlc_assert_unreachable()
  br label %68

68:                                               ; preds = %23, %66, %65, %46
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32) #1

declare dso_local i64 @vlc_es_id_GetCat(i32*) #1

declare dso_local i32 @var_GetBool(i32*, i8*) #1

declare dso_local i32 @var_AddCallback(i32*, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @var_DelCallback(i32*, i8*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @vlc_assert_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
