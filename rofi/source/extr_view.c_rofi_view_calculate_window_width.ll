; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_calculate_window_width.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_calculate_window_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { double }
%struct.TYPE_8__ = type { double }
%struct.TYPE_7__ = type { double, i32 }

@CacheState = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@config = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [6 x i8] c"width\00", align 1
@ROFI_ORIENTATION_HORIZONTAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @rofi_view_calculate_window_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rofi_view_calculate_window_width(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 1), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load double, double* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 0), align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store double %8, double* %10, align 8
  br label %64

11:                                               ; preds = %1
  %12 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %13 = fcmp olt double %12, 0.000000e+00
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = call double (...) @textbox_get_estimated_char_width()
  store double %15, double* %3, align 8
  %16 = load double, double* %3, align 8
  %17 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %18 = fmul double %16, %17
  %19 = fneg double %18
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store double %19, double* %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @WIDGET(i32 %24)
  %26 = call i64 @widget_padding_get_padding_width(i32 %25)
  %27 = sitofp i64 %26 to double
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = fadd double %30, %27
  store double %31, double* %29, align 8
  br label %48

32:                                               ; preds = %11
  %33 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %34 = fcmp olt double %33, 1.010000e+02
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load double, double* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @CacheState, i32 0, i32 0, i32 0), align 8
  %37 = fdiv double %36, 1.000000e+02
  %38 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  %39 = fptrunc double %38 to float
  %40 = fpext float %39 to double
  %41 = fmul double %37, %40
  br label %44

42:                                               ; preds = %32
  %43 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @config, i32 0, i32 0), align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi double [ %41, %35 ], [ %43, %42 ]
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  store double %45, double* %47, align 8
  br label %48

48:                                               ; preds = %44, %14
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @WIDGET(i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load double, double* %54, align 8
  %56 = fptrunc double %55 to float
  %57 = call i32 @rofi_theme_get_distance(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), float %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ROFI_ORIENTATION_HORIZONTAL, align 4
  %60 = call float @distance_get_pixel(i32 %58, i32 %59)
  %61 = fpext float %60 to double
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store double %61, double* %63, align 8
  br label %64

64:                                               ; preds = %48, %7
  ret void
}

declare dso_local double @textbox_get_estimated_char_width(...) #1

declare dso_local i64 @widget_padding_get_padding_width(i32) #1

declare dso_local i32 @WIDGET(i32) #1

declare dso_local i32 @rofi_theme_get_distance(i32, i8*, float) #1

declare dso_local float @distance_get_pixel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
