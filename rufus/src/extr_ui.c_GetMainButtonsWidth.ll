; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_GetMainButtonsWidth.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_GetMainButtonsWidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }

@main_button_ids = common dso_local global i32* null, align 8
@bw = common dso_local global i64 0, align 8
@enable_fido = common dso_local global i64 0, align 8
@cbw = common dso_local global i32 0, align 4
@IDCANCEL = common dso_local global i32 0, align 4
@MSG_007 = common dso_local global i32 0, align 4
@MSG_040 = common dso_local global i32 0, align 4
@IDC_SELECT = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@BS_SPLITBUTTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GetMainButtonsWidth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32*, i32** @main_button_ids, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @GetDlgItem(i32 %9, i32 %12)
  %14 = call i32 @GetWindowRect(i32 %13, %struct.TYPE_4__* %4)
  %15 = load i32, i32* %2, align 4
  %16 = bitcast %struct.TYPE_4__* %4 to i32*
  %17 = call i32 @MapWindowPoints(i32* null, i32 %15, i32* %16, i32 2)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %19, %21
  store i64 %22, i64* @bw, align 8
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %52, %1
  %24 = load i32, i32* %3, align 4
  %25 = load i32*, i32** @main_button_ids, align 8
  %26 = call i32 @ARRAYSIZE(i32* %25)
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %23
  %29 = load i64, i64* @bw, align 8
  %30 = load i32, i32* %2, align 4
  %31 = load i32*, i32** @main_button_ids, align 8
  %32 = load i32, i32* %3, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GetTextWidth(i32 %30, i32 %35)
  %37 = load i64, i64* @enable_fido, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @cbw, align 4
  %44 = mul nsw i32 3, %43
  %45 = sdiv i32 %44, 2
  br label %48

46:                                               ; preds = %39, %28
  %47 = load i32, i32* @cbw, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %45, %42 ], [ %47, %46 ]
  %50 = add nsw i32 %36, %49
  %51 = call i64 @max(i64 %29, i32 %50)
  store i64 %51, i64* @bw, align 8
  br label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %23

55:                                               ; preds = %23
  %56 = load i64, i64* @bw, align 8
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* @IDCANCEL, align 4
  %59 = call i32 @GetDlgItem(i32 %57, i32 %58)
  %60 = load i32, i32* @MSG_007, align 4
  %61 = call i8* @lmprintf(i32 %60)
  %62 = call i32 @GetTextSize(i32 %59, i8* %61)
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @cbw, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i64 @max(i64 %56, i32 %67)
  store i64 %68, i64* @bw, align 8
  %69 = load i64, i64* @enable_fido, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %106

71:                                               ; preds = %55
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %73 = load i32, i32* @MSG_040, align 4
  %74 = call i8* @lmprintf(i32 %73)
  %75 = call i32 @static_strcpy(i8* %72, i8* %74)
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %77 = call i32 @CharUpperBuffU(i8* %76, i32 64)
  %78 = load i64, i64* @bw, align 8
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @IDC_SELECT, align 4
  %81 = call i32 @GetDlgItem(i32 %79, i32 %80)
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %83 = call i32 @GetTextSize(i32 %81, i8* %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @cbw, align 4
  %88 = mul nsw i32 3, %87
  %89 = sdiv i32 %88, 2
  %90 = add nsw i32 %86, %89
  %91 = call i64 @max(i64 %78, i32 %90)
  store i64 %91, i64* @bw, align 8
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @IDC_SELECT, align 4
  %94 = call i32 @GetDlgItem(i32 %92, i32 %93)
  %95 = load i32, i32* @GWL_STYLE, align 4
  %96 = call i32 @GetWindowLong(i32 %94, i32 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* @BS_SPLITBUTTON, align 4
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %2, align 4
  %101 = load i32, i32* @IDC_SELECT, align 4
  %102 = call i32 @GetDlgItem(i32 %100, i32 %101)
  %103 = load i32, i32* @GWL_STYLE, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @SetWindowLong(i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %71, %55
  ret void
}

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @MapWindowPoints(i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAYSIZE(i32*) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @GetTextWidth(i32, i32) #1

declare dso_local i32 @GetTextSize(i32, i8*) #1

declare dso_local i8* @lmprintf(i32) #1

declare dso_local i32 @static_strcpy(i8*, i8*) #1

declare dso_local i32 @CharUpperBuffU(i8*, i32) #1

declare dso_local i32 @GetWindowLong(i32, i32) #1

declare dso_local i32 @SetWindowLong(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
