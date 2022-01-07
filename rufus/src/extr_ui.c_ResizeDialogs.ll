; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_ResizeDialogs.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_ResizeDialogs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }

@hMainDialog = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@hLogDialog = common dso_local global i32 0, align 4
@IDC_LOG_CLEAR = common dso_local global i32 0, align 4
@IDC_LOG_SAVE = common dso_local global i32 0, align 4
@IDCANCEL = common dso_local global i32 0, align 4
@hLog = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ResizeDialogs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ResizeDialogs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @hMainDialog, align 4
  %6 = call i32 @GetWindowRect(i32 %5, %struct.TYPE_4__* %3)
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %8, %10
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 %11, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %14, %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load i32, i32* @hMainDialog, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @MoveWindow(i32 %19, i64 %21, i64 %23, i64 %25, i64 %30, i32 %31)
  %33 = load i32, i32* @hLogDialog, align 4
  %34 = call i32 @GetWindowRect(i32 %33, %struct.TYPE_4__* %3)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %36, %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %42, %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* @hLogDialog, align 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i32 @MoveWindow(i32 %47, i64 %49, i64 %51, i64 %53, i64 %58, i32 %59)
  %61 = load i32, i32* @hLogDialog, align 4
  %62 = load i32, i32* @IDC_LOG_CLEAR, align 4
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @MoveCtrlY(i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* @hLogDialog, align 4
  %66 = load i32, i32* @IDC_LOG_SAVE, align 4
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @MoveCtrlY(i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @hLogDialog, align 4
  %70 = load i32, i32* @IDCANCEL, align 4
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @MoveCtrlY(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @hLog, align 4
  %74 = call i32 @GetWindowRect(i32 %73, %struct.TYPE_4__* %3)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %76, %78
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 %79, i64* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %82, %84
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load i32, i32* @hLog, align 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @SWP_NOZORDER, align 4
  %96 = call i32 @SetWindowPos(i32 %90, i32* null, i32 0, i32 0, i64 %92, i64 %94, i32 %95)
  %97 = load i32, i32* @hLog, align 4
  %98 = load i32, i32* @hLog, align 4
  %99 = call i32 @Edit_GetLineCount(i32 %98)
  %100 = call i32 @Edit_Scroll(i32 %97, i32 0, i32 %99)
  ret void
}

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @MoveWindow(i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @MoveCtrlY(i32, i32, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32*, i32, i32, i64, i64, i32) #1

declare dso_local i32 @Edit_Scroll(i32, i32, i32) #1

declare dso_local i32 @Edit_GetLineCount(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
