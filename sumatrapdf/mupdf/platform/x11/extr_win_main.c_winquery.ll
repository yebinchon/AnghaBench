; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_winquery.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_winquery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwndframe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"MuPDF\00", align 1
@MB_YESNOCANCEL = common dso_local global i32 0, align 4
@QUERY_YES = common dso_local global i32 0, align 4
@QUERY_NO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @winquery(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i32, i32* @hwndframe, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = load i32, i32* @MB_YESNOCANCEL, align 4
  %9 = call i32 @MessageBoxA(i32 %6, i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %8)
  switch i32 %9, label %13 [
    i32 128, label %10
    i32 129, label %12
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @QUERY_YES, align 4
  store i32 %11, i32* %3, align 4
  br label %15

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %2, %12
  %14 = load i32, i32* @QUERY_NO, align 4
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @MessageBoxA(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
