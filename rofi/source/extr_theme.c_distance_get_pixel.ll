; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_theme.c_distance_get_pixel.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_theme.c_distance_get_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@ROFI_PU_EM = common dso_local global i64 0, align 8
@ROFI_PU_CH = common dso_local global i64 0, align 8
@ROFI_PU_PERCENT = common dso_local global i64 0, align 8
@ROFI_ORIENTATION_VERTICAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @distance_get_pixel(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_3__* %5 to { i64, i32 }*
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %1, i32* %11, align 8
  store i64 %2, i64* %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ROFI_PU_EM, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (...) @textbox_get_estimated_char_height()
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %4, align 4
  br label %63

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ROFI_PU_CH, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (...) @textbox_get_estimated_ch()
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %4, align 4
  br label %63

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ROFI_PU_PERCENT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %31
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @ROFI_ORIENTATION_VERTICAL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  %41 = call i32 @rofi_view_get_current_monitor(i32* null, i32* %7)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sitofp i32 %45 to double
  %47 = fdiv double %46, 1.000000e+02
  %48 = fptosi double %47 to i32
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %50 = call i32 @rofi_view_get_current_monitor(i32* %8, i32* null)
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sitofp i32 %54 to double
  %56 = fdiv double %55, 1.000000e+02
  %57 = fptosi double %56 to i32
  store i32 %57, i32* %4, align 4
  br label %63

58:                                               ; preds = %31
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %49, %40, %26, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @textbox_get_estimated_char_height(...) #1

declare dso_local i32 @textbox_get_estimated_ch(...) #1

declare dso_local i32 @rofi_view_get_current_monitor(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
