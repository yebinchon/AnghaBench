; ModuleID = '/home/carl/AnghaBench/scrcpy/app/src/extr_scrcpy.c_sdl_init_and_configure.c'
source_filename = "/home/carl/AnghaBench/scrcpy/app/src/extr_scrcpy.c_sdl_init_and_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDL_INIT_VIDEO = common dso_local global i32 0, align 4
@SDL_INIT_EVENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not initialize SDL: %s\00", align 1
@SDL_Quit = common dso_local global i32 0, align 4
@SDL_HINT_RENDER_SCALE_QUALITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not enable bilinear filtering\00", align 1
@SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Could not disable minimize on focus loss\00", align 1
@SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH = common dso_local global i32 0, align 4
@SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sdl_init_and_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdl_init_and_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @SDL_INIT_VIDEO, align 4
  br label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @SDL_INIT_EVENTS, align 4
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i32 [ %8, %7 ], [ %10, %9 ]
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @SDL_Init(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = call i32 (...) @SDL_GetError()
  %18 = call i32 @LOGC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %2, align 4
  br label %39

19:                                               ; preds = %11
  %20 = load i32, i32* @SDL_Quit, align 4
  %21 = call i32 @atexit(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %39

25:                                               ; preds = %19
  %26 = load i32, i32* @SDL_HINT_RENDER_SCALE_QUALITY, align 4
  %27 = call i32 @SDL_SetHint(i32 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call i32 @LOGW(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* @SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS, align 4
  %33 = call i32 @SDL_SetHint(i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 @LOGW(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = call i32 (...) @SDL_EnableScreenSaver()
  store i32 1, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %24, %16
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @SDL_Init(i32) #1

declare dso_local i32 @LOGC(i8*, i32) #1

declare dso_local i32 @SDL_GetError(...) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @SDL_SetHint(i32, i8*) #1

declare dso_local i32 @LOGW(i8*) #1

declare dso_local i32 @SDL_EnableScreenSaver(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
