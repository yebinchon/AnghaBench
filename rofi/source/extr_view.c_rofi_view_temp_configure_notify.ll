; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_temp_configure_notify.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_temp_configure_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64 }

@CacheState = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@xcb = common dso_local global %struct.TYPE_10__* null, align 8
@depth = common dso_local global %struct.TYPE_11__* null, align 8
@visual = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Re-size window based external request: %d %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_view_temp_configure_notify(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 0), align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %130

10:                                               ; preds = %2
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %18, %10
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @WIDGET(i32 %39)
  %41 = call i32 @widget_queue_redraw(i32 %40)
  br label %42

42:                                               ; preds = %26, %18
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %129

58:                                               ; preds = %50, %42
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 2), align 4
  %70 = call i32 @cairo_destroy(i32 %69)
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 1), align 8
  %72 = call i32 @cairo_surface_destroy(i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xcb, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 3), align 8
  %77 = call i32 @xcb_free_pixmap(i32 %75, i32 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xcb, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @xcb_generate_id(i32 %80)
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 3), align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xcb, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** @depth, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 3), align 8
  %89 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 0), align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @xcb_create_pixmap(i32 %84, i32 %87, i32 %88, i64 %89, i64 %92, i64 %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xcb, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 3), align 8
  %101 = load i32, i32* @visual, align 4
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @cairo_xcb_surface_create(i32 %99, i32 %100, i32 %101, i64 %104, i64 %107)
  store i32 %108, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 1), align 8
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 1), align 8
  %110 = call i32 @cairo_create(i32 %109)
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @CacheState, i32 0, i32 2), align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @g_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %113, i64 %116)
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @WIDGET(i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @widget_resize(i32 %121, i64 %124, i64 %127)
  br label %129

129:                                              ; preds = %58, %50
  br label %130

130:                                              ; preds = %129, %2
  ret void
}

declare dso_local i32 @widget_queue_redraw(i32) #1

declare dso_local i32 @WIDGET(i32) #1

declare dso_local i32 @cairo_destroy(i32) #1

declare dso_local i32 @cairo_surface_destroy(i32) #1

declare dso_local i32 @xcb_free_pixmap(i32, i32) #1

declare dso_local i32 @xcb_generate_id(i32) #1

declare dso_local i32 @xcb_create_pixmap(i32, i32, i32, i64, i64, i64) #1

declare dso_local i32 @cairo_xcb_surface_create(i32, i32, i32, i64, i64) #1

declare dso_local i32 @cairo_create(i32) #1

declare dso_local i32 @g_debug(i8*, i64, i64) #1

declare dso_local i32 @widget_resize(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
