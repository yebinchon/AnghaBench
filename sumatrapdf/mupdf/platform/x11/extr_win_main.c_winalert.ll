; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_winalert.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_win_main.c_winalert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@MB_OK = common dso_local global i32 0, align 4
@MB_ICONWARNING = common dso_local global i32 0, align 4
@PDF_ALERT_BUTTON_NONE = common dso_local global i32 0, align 4
@MB_ICONERROR = common dso_local global i32 0, align 4
@MB_ICONQUESTION = common dso_local global i32 0, align 4
@MB_ICONINFORMATION = common dso_local global i32 0, align 4
@MB_OKCANCEL = common dso_local global i32 0, align 4
@MB_YESNO = common dso_local global i32 0, align 4
@MB_YESNOCANCEL = common dso_local global i32 0, align 4
@hwndframe = common dso_local global i32 0, align 4
@PDF_ALERT_BUTTON_OK = common dso_local global i32 0, align 4
@PDF_ALERT_BUTTON_CANCEL = common dso_local global i32 0, align 4
@PDF_ALERT_BUTTON_NO = common dso_local global i32 0, align 4
@PDF_ALERT_BUTTON_YES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @winalert(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load i32, i32* @MB_OK, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @MB_ICONWARNING, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @PDF_ALERT_BUTTON_NONE, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %22 [
    i32 131, label %14
    i32 128, label %16
    i32 130, label %18
    i32 129, label %20
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @MB_ICONERROR, align 4
  store i32 %15, i32* %6, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @MB_ICONWARNING, align 4
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @MB_ICONQUESTION, align 4
  store i32 %19, i32* %6, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @MB_ICONINFORMATION, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %2, %20, %18, %16, %14
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %34 [
    i32 135, label %26
    i32 134, label %28
    i32 133, label %30
    i32 132, label %32
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @MB_OK, align 4
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %22
  %29 = load i32, i32* @MB_OKCANCEL, align 4
  store i32 %29, i32* %5, align 4
  br label %34

30:                                               ; preds = %22
  %31 = load i32, i32* @MB_YESNO, align 4
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @MB_YESNOCANCEL, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %22, %32, %30, %28, %26
  %35 = load i32, i32* @hwndframe, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @MessageBoxA(i32 %35, i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %63 [
    i32 137, label %47
    i32 139, label %51
    i32 138, label %55
    i32 136, label %59
  ]

47:                                               ; preds = %34
  %48 = load i32, i32* @PDF_ALERT_BUTTON_OK, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  br label %63

51:                                               ; preds = %34
  %52 = load i32, i32* @PDF_ALERT_BUTTON_CANCEL, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %63

55:                                               ; preds = %34
  %56 = load i32, i32* @PDF_ALERT_BUTTON_NO, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %63

59:                                               ; preds = %34
  %60 = load i32, i32* @PDF_ALERT_BUTTON_YES, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %59, %34, %55, %51, %47
  ret void
}

declare dso_local i32 @MessageBoxA(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
