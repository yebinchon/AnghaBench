; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_update.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, i32*, i64, i32* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"Redraw view\00", align 1
@CacheState = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@CAIRO_OPERATOR_SOURCE = common dso_local global i32 0, align 4
@CAIRO_OPERATOR_OVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Background\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"widgets\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_view_update(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @WIDGET(i32 %8)
  %10 = call i32 @widget_need_redraw(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %76

13:                                               ; preds = %2
  %14 = call i32 @g_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (...) @TICK()
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CacheState, i32 0, i32 4), align 8
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @CAIRO_OPERATOR_SOURCE, align 4
  %19 = call i32 @cairo_set_operator(i32* %17, i32 %18)
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CacheState, i32 0, i32 2), align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %13
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CacheState, i32 0, i32 3), align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CacheState, i32 0, i32 2), align 8
  %28 = call i32 @cairo_set_source_surface(i32* %26, i32* %27, double 0.000000e+00, double 0.000000e+00)
  br label %47

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CacheState, i32 0, i32 2), align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CacheState, i32 0, i32 1, i32 1), align 8
  %36 = sub nsw i64 %34, %35
  %37 = sitofp i64 %36 to double
  %38 = fneg double %37
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CacheState, i32 0, i32 1, i32 0), align 8
  %43 = sub nsw i64 %41, %42
  %44 = sitofp i64 %43 to double
  %45 = fneg double %44
  %46 = call i32 @cairo_set_source_surface(i32* %30, i32* %31, double %38, double %45)
  br label %47

47:                                               ; preds = %29, %25
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @cairo_paint(i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @CAIRO_OPERATOR_OVER, align 4
  %52 = call i32 @cairo_set_operator(i32* %50, i32 %51)
  br label %58

53:                                               ; preds = %13
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @cairo_set_source_rgba(i32* %54, i32 0, i32 0, i32 0, double 0.000000e+00)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @cairo_paint(i32* %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = call i32 @TICK_N(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* @CAIRO_OPERATOR_OVER, align 4
  %62 = call i32 @cairo_set_operator(i32* %60, i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @WIDGET(i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @widget_draw(i32 %66, i32* %67)
  %69 = call i32 @TICK_N(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @CacheState, i32 0, i32 0), align 8
  %71 = call i32 @cairo_surface_flush(i32 %70)
  %72 = load i64, i64* %4, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %58
  %75 = call i32 (...) @rofi_view_queue_redraw()
  br label %76

76:                                               ; preds = %12, %74, %58
  ret void
}

declare dso_local i32 @widget_need_redraw(i32) #1

declare dso_local i32 @WIDGET(i32) #1

declare dso_local i32 @g_debug(i8*) #1

declare dso_local i32 @TICK(...) #1

declare dso_local i32 @cairo_set_operator(i32*, i32) #1

declare dso_local i32 @cairo_set_source_surface(i32*, i32*, double, double) #1

declare dso_local i32 @cairo_paint(i32*) #1

declare dso_local i32 @cairo_set_source_rgba(i32*, i32, i32, i32, double) #1

declare dso_local i32 @TICK_N(i8*) #1

declare dso_local i32 @widget_draw(i32, i32*) #1

declare dso_local i32 @cairo_surface_flush(i32) #1

declare dso_local i32 @rofi_view_queue_redraw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
