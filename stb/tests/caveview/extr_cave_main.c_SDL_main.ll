; ModuleID = '/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_SDL_main.c'
source_filename = "/home/carl/AnghaBench/stb/tests/caveview/extr_cave_main.c_SDL_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SDL_INIT_VIDEO = common dso_local global i32 0, align 4
@SDL_GL_RED_SIZE = common dso_local global i32 0, align 4
@SDL_GL_GREEN_SIZE = common dso_local global i32 0, align 4
@SDL_GL_BLUE_SIZE = common dso_local global i32 0, align 4
@SDL_GL_DEPTH_SIZE = common dso_local global i32 0, align 4
@SDL_GL_CONTEXT_PROFILE_MASK = common dso_local global i32 0, align 4
@SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = common dso_local global i32 0, align 4
@SDL_GL_CONTEXT_MAJOR_VERSION = common dso_local global i32 0, align 4
@SDL_GL_CONTEXT_MINOR_VERSION = common dso_local global i32 0, align 4
@SDL_GL_MULTISAMPLESAMPLES = common dso_local global i32 0, align 4
@screen_x = common dso_local global i32 0, align 4
@screen_y = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"caveview\00", align 1
@SDL_WINDOWPOS_UNDEFINED = common dso_local global i32 0, align 4
@SDL_WINDOW_OPENGL = common dso_local global i32 0, align 4
@SDL_WINDOW_RESIZABLE = common dso_local global i32 0, align 4
@window = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Couldn't create window\00", align 1
@context = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Couldn't create context\00", align 1
@SDL_TRUE = common dso_local global i32 0, align 4
@initialized = common dso_local global i32 0, align 4
@quit = common dso_local global i32 0, align 4
@SDL_GL_CONTEXT_DEBUG_FLAG = common dso_local global i32 0, align 4
@SDL_GL_CONTEXT_FLAGS = common dso_local global i32 0, align 4
@SDL_HINT_MOUSE_RELATIVE_MODE_WARP = common dso_local global i32 0, align 4
@gl_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SDL_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %7 = call i32 @SDL_Init(i32 %6)
  %8 = call i32 (...) @prepare_threads()
  %9 = load i32, i32* @SDL_GL_RED_SIZE, align 4
  %10 = call i32 @SDL_GL_SetAttribute(i32 %9, i32 8)
  %11 = load i32, i32* @SDL_GL_GREEN_SIZE, align 4
  %12 = call i32 @SDL_GL_SetAttribute(i32 %11, i32 8)
  %13 = load i32, i32* @SDL_GL_BLUE_SIZE, align 4
  %14 = call i32 @SDL_GL_SetAttribute(i32 %13, i32 8)
  %15 = load i32, i32* @SDL_GL_DEPTH_SIZE, align 4
  %16 = call i32 @SDL_GL_SetAttribute(i32 %15, i32 24)
  %17 = load i32, i32* @SDL_GL_CONTEXT_PROFILE_MASK, align 4
  %18 = load i32, i32* @SDL_GL_CONTEXT_PROFILE_COMPATIBILITY, align 4
  %19 = call i32 @SDL_GL_SetAttribute(i32 %17, i32 %18)
  %20 = load i32, i32* @SDL_GL_CONTEXT_MAJOR_VERSION, align 4
  %21 = call i32 @SDL_GL_SetAttribute(i32 %20, i32 3)
  %22 = load i32, i32* @SDL_GL_CONTEXT_MINOR_VERSION, align 4
  %23 = call i32 @SDL_GL_SetAttribute(i32 %22, i32 1)
  %24 = load i32, i32* @SDL_GL_MULTISAMPLESAMPLES, align 4
  %25 = call i32 @SDL_GL_SetAttribute(i32 %24, i32 4)
  store i32 1920, i32* @screen_x, align 4
  store i32 1080, i32* @screen_y, align 4
  %26 = load i32, i32* @SDL_WINDOWPOS_UNDEFINED, align 4
  %27 = load i32, i32* @SDL_WINDOWPOS_UNDEFINED, align 4
  %28 = load i32, i32* @screen_x, align 4
  %29 = load i32, i32* @screen_y, align 4
  %30 = load i32, i32* @SDL_WINDOW_OPENGL, align 4
  %31 = load i32, i32* @SDL_WINDOW_RESIZABLE, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @SDL_CreateWindow(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* @window, align 4
  %34 = load i32, i32* @window, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %2
  %37 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %2
  %39 = load i32, i32* @window, align 4
  %40 = call i32 @SDL_GL_CreateContext(i32 %39)
  store i32 %40, i32* @context, align 4
  %41 = load i32, i32* @context, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* @window, align 4
  %47 = load i32, i32* @context, align 4
  %48 = call i32 @SDL_GL_MakeCurrent(i32 %46, i32 %47)
  %49 = load i32, i32* @SDL_TRUE, align 4
  %50 = call i32 @SDL_SetRelativeMouseMode(i32 %49)
  %51 = call i32 (...) @stbgl_initExtensions()
  %52 = call i32 @SDL_GL_SetSwapInterval(i32 1)
  %53 = call i32 (...) @render_init()
  %54 = call i32 (...) @mesh_init()
  %55 = call i32 (...) @world_init()
  store i32 1, i32* @initialized, align 4
  br label %56

56:                                               ; preds = %66, %45
  %57 = load i32, i32* @quit, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %64, %60
  %62 = call i64 @SDL_PollEvent(i32* %5)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @process_event(i32* %5)
  br label %61

66:                                               ; preds = %61
  %67 = call i32 @getTimestep(float 0x3F60FF9720000000)
  %68 = call i32 @loopmode(i32 %67, i32 1, i32 1)
  br label %56

69:                                               ; preds = %56
  ret i32 0
}

declare dso_local i32 @SDL_Init(i32) #1

declare dso_local i32 @prepare_threads(...) #1

declare dso_local i32 @SDL_GL_SetAttribute(i32, i32) #1

declare dso_local i32 @SDL_CreateWindow(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @SDL_GL_CreateContext(i32) #1

declare dso_local i32 @SDL_GL_MakeCurrent(i32, i32) #1

declare dso_local i32 @SDL_SetRelativeMouseMode(i32) #1

declare dso_local i32 @stbgl_initExtensions(...) #1

declare dso_local i32 @SDL_GL_SetSwapInterval(i32) #1

declare dso_local i32 @render_init(...) #1

declare dso_local i32 @mesh_init(...) #1

declare dso_local i32 @world_init(...) #1

declare dso_local i64 @SDL_PollEvent(i32*) #1

declare dso_local i32 @process_event(i32*) #1

declare dso_local i32 @loopmode(i32, i32, i32) #1

declare dso_local i32 @getTimestep(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
