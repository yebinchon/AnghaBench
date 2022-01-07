; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_window_update_size.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_window_update_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@XCB_CONFIG_WINDOW_X = common dso_local global i32 0, align 4
@XCB_CONFIG_WINDOW_Y = common dso_local global i32 0, align 4
@XCB_CONFIG_WINDOW_WIDTH = common dso_local global i32 0, align 4
@XCB_CONFIG_WINDOW_HEIGHT = common dso_local global i32 0, align 4
@xcb = common dso_local global %struct.TYPE_7__* null, align 8
@CacheState = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@depth = common dso_local global %struct.TYPE_8__* null, align 8
@visual = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Re-size window based internal request: %dx%d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @rofi_view_window_update_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_view_window_update_size(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load i32, i32* @XCB_CONFIG_WINDOW_X, align 4
  %6 = load i32, i32* @XCB_CONFIG_WINDOW_Y, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @XCB_CONFIG_WINDOW_WIDTH, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @XCB_CONFIG_WINDOW_HEIGHT, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds i32, i32* %12, i64 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds i32, i32* %16, i64 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds i32, i32* %20, i64 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @xcb, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 3), align 4
  %32 = load i32, i32* %3, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %34 = call i32 @xcb_configure_window(i32 %30, i32 %31, i32 %32, i32* %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 1), align 4
  %36 = call i32 @cairo_destroy(i32 %35)
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0), align 4
  %38 = call i32 @cairo_surface_destroy(i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @xcb, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 2), align 4
  %43 = call i32 @xcb_free_pixmap(i32 %41, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @xcb, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @xcb_generate_id(i32 %46)
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 2), align 4
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @xcb, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @depth, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 2), align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 3), align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xcb_create_pixmap(i32 %50, i32 %53, i32 %54, i32 %55, i32 %58, i32 %61)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** @xcb, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 2), align 4
  %67 = load i32, i32* @visual, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cairo_xcb_surface_create(i32 %65, i32 %66, i32 %67, i32 %70, i32 %73)
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0), align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0), align 4
  %76 = call i32 @cairo_create(i32 %75)
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 1), align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @g_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @WIDGET(i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @widget_resize(i32 %87, i32 %90, i32 %93)
  ret void
}

declare dso_local i32 @xcb_configure_window(i32, i32, i32, i32*) #1

declare dso_local i32 @cairo_destroy(i32) #1

declare dso_local i32 @cairo_surface_destroy(i32) #1

declare dso_local i32 @xcb_free_pixmap(i32, i32) #1

declare dso_local i32 @xcb_generate_id(i32) #1

declare dso_local i32 @xcb_create_pixmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cairo_xcb_surface_create(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cairo_create(i32) #1

declare dso_local i32 @g_debug(i8*, i32, i32) #1

declare dso_local i32 @widget_resize(i32, i32, i32) #1

declare dso_local i32 @WIDGET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
