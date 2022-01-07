; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_screen.c_screen_switch_fullscreen.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_screen.c_screen_switch_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.screen = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@SDL_WINDOW_FULLSCREEN_DESKTOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not switch fullscreen mode: %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Switched to %s mode\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fullscreen\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"windowed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @screen_switch_fullscreen(%struct.screen* %0) #0 {
  %2 = alloca %struct.screen*, align 8
  %3 = alloca %struct.TYPE_2__, align 4
  %4 = alloca i32, align 4
  store %struct.screen* %0, %struct.screen** %2, align 8
  %5 = load %struct.screen*, %struct.screen** %2, align 8
  %6 = getelementptr inbounds %struct.screen, %struct.screen* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load %struct.screen*, %struct.screen** %2, align 8
  %11 = getelementptr inbounds %struct.screen, %struct.screen* %10, i32 0, i32 1
  %12 = load %struct.screen*, %struct.screen** %2, align 8
  %13 = getelementptr inbounds %struct.screen, %struct.screen* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @get_native_window_size(i32 %14)
  %16 = bitcast %struct.TYPE_2__* %3 to i64*
  store i64 %15, i64* %16, align 4
  %17 = bitcast %struct.TYPE_2__* %11 to i8*
  %18 = bitcast %struct.TYPE_2__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 8, i1 false)
  br label %19

19:                                               ; preds = %9, %1
  %20 = load %struct.screen*, %struct.screen** %2, align 8
  %21 = getelementptr inbounds %struct.screen, %struct.screen* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @SDL_WINDOW_FULLSCREEN_DESKTOP, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ 0, %24 ], [ %26, %25 ]
  store i32 %28, i32* %4, align 4
  %29 = load %struct.screen*, %struct.screen** %2, align 8
  %30 = getelementptr inbounds %struct.screen, %struct.screen* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @SDL_SetWindowFullscreen(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = call i32 (...) @SDL_GetError()
  %37 = call i32 @LOGW(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %74

38:                                               ; preds = %27
  %39 = load %struct.screen*, %struct.screen** %2, align 8
  %40 = getelementptr inbounds %struct.screen, %struct.screen* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.screen*, %struct.screen** %2, align 8
  %46 = getelementptr inbounds %struct.screen, %struct.screen* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.screen*, %struct.screen** %2, align 8
  %48 = getelementptr inbounds %struct.screen, %struct.screen* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %38
  %52 = load %struct.screen*, %struct.screen** %2, align 8
  %53 = getelementptr inbounds %struct.screen, %struct.screen* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.screen*, %struct.screen** %2, align 8
  %56 = getelementptr inbounds %struct.screen, %struct.screen* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.screen*, %struct.screen** %2, align 8
  %60 = getelementptr inbounds %struct.screen, %struct.screen* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @SDL_SetWindowSize(i32 %54, i32 %58, i32 %62)
  br label %64

64:                                               ; preds = %51, %38
  %65 = load %struct.screen*, %struct.screen** %2, align 8
  %66 = getelementptr inbounds %struct.screen, %struct.screen* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %71 = call i32 @LOGD(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load %struct.screen*, %struct.screen** %2, align 8
  %73 = call i32 @screen_render(%struct.screen* %72)
  br label %74

74:                                               ; preds = %64, %35
  ret void
}

declare dso_local i64 @get_native_window_size(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @SDL_SetWindowFullscreen(i32, i32) #1

declare dso_local i32 @LOGW(i8*, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @SDL_SetWindowSize(i32, i32, i32) #1

declare dso_local i32 @LOGD(i8*, i8*) #1

declare dso_local i32 @screen_render(%struct.screen*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
