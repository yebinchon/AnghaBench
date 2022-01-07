; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_winsavequery.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_winsavequery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwndframe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"File has unsaved changes. Do you want to save\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"MuPDF\00", align 1
@MB_YESNOCANCEL = common dso_local global i32 0, align 4
@SAVE = common dso_local global i32 0, align 4
@DISCARD = common dso_local global i32 0, align 4
@CANCEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @winsavequery(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @hwndframe, align 4
  %5 = load i32, i32* @MB_YESNOCANCEL, align 4
  %6 = call i32 @MessageBoxA(i32 %4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  switch i32 %6, label %11 [
    i32 128, label %7
    i32 129, label %9
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @SAVE, align 4
  store i32 %8, i32* %2, align 4
  br label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @DISCARD, align 4
  store i32 %10, i32* %2, align 4
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @CANCEL, align 4
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %11, %9, %7
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @MessageBoxA(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
