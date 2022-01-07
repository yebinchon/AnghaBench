; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_cleanup.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Cleanup.\00", align 1
@CacheState = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@XCB_WINDOW_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Unmapping and free'ing window\00", align 1
@xcb = common dso_local global %struct.TYPE_3__* null, align 8
@map = common dso_local global i64 0, align 8
@XCB_COLORMAP_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_view_cleanup() #0 {
  %1 = call i32 @g_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 0), align 8
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 0), align 8
  %6 = call i32 @g_source_remove(i64 %5)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 0), align 8
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 1), align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 1), align 8
  %12 = call i32 @g_source_remove(i64 %11)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 1), align 8
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 8), align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 8), align 8
  %18 = call i32 @cairo_surface_destroy(i32* %17)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 8), align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 7), align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 7), align 8
  %24 = call i32 @cairo_destroy(i32* %23)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 7), align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 6), align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 6), align 8
  %30 = call i32 @cairo_surface_destroy(i32* %29)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 6), align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 2), align 8
  %33 = load i64, i64* @XCB_WINDOW_NONE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %31
  %36 = call i32 @g_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xcb, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 2), align 8
  %41 = call i32 @xcb_unmap_window(i32 %39, i64 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xcb, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 5), align 8
  %46 = call i32 @xcb_free_gc(i32 %44, i32 %45)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xcb, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 4), align 4
  %51 = call i32 @xcb_free_pixmap(i32 %49, i32 %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xcb, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 2), align 8
  %56 = call i32 @xcb_destroy_window(i32 %54, i64 %55)
  %57 = load i64, i64* @XCB_WINDOW_NONE, align 8
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 2), align 8
  br label %58

58:                                               ; preds = %35, %31
  %59 = load i64, i64* @map, align 8
  %60 = load i64, i64* @XCB_COLORMAP_NONE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xcb, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i64, i64* @map, align 8
  %67 = call i32 @xcb_free_colormap(i32 %65, i64 %66)
  %68 = load i64, i64* @XCB_COLORMAP_NONE, align 8
  store i64 %68, i64* @map, align 8
  br label %69

69:                                               ; preds = %62, %58
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xcb, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @xcb_flush(i32 %72)
  %74 = call i32 @g_queue_is_empty(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @CacheState, i32 0, i32 3))
  %75 = call i32 @g_assert(i32 %74)
  ret void
}

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32 @g_source_remove(i64) #1

declare dso_local i32 @cairo_surface_destroy(i32*) #1

declare dso_local i32 @cairo_destroy(i32*) #1

declare dso_local i32 @xcb_unmap_window(i32, i64) #1

declare dso_local i32 @xcb_free_gc(i32, i32) #1

declare dso_local i32 @xcb_free_pixmap(i32, i32) #1

declare dso_local i32 @xcb_destroy_window(i32, i64) #1

declare dso_local i32 @xcb_free_colormap(i32, i64) #1

declare dso_local i32 @xcb_flush(i32) #1

declare dso_local i32 @g_assert(i32) #1

declare dso_local i32 @g_queue_is_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
