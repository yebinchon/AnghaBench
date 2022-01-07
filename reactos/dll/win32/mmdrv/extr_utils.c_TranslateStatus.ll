; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_utils.c_TranslateStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mmdrv/extr_utils.c_TranslateStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MMSYSERR_NOERROR = common dso_local global i32 0, align 4
@MMSYSERR_ALLOCATED = common dso_local global i32 0, align 4
@MMSYSERR_NOTSUPPORTED = common dso_local global i32 0, align 4
@MMSYSERR_NOMEM = common dso_local global i32 0, align 4
@MMSYSERR_BADDEVICEID = common dso_local global i32 0, align 4
@MMSYSERR_INVALPARAM = common dso_local global i32 0, align 4
@MMSYSERR_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TranslateStatus() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @GetLastError()
  switch i32 %2, label %15 [
    i32 128, label %3
    i32 131, label %3
    i32 134, label %5
    i32 129, label %7
    i32 132, label %7
    i32 130, label %9
    i32 135, label %11
    i32 133, label %13
  ]

3:                                                ; preds = %0, %0
  %4 = load i32, i32* @MMSYSERR_NOERROR, align 4
  store i32 %4, i32* %1, align 4
  br label %17

5:                                                ; preds = %0
  %6 = load i32, i32* @MMSYSERR_ALLOCATED, align 4
  store i32 %6, i32* %1, align 4
  br label %17

7:                                                ; preds = %0, %0
  %8 = load i32, i32* @MMSYSERR_NOTSUPPORTED, align 4
  store i32 %8, i32* %1, align 4
  br label %17

9:                                                ; preds = %0
  %10 = load i32, i32* @MMSYSERR_NOMEM, align 4
  store i32 %10, i32* %1, align 4
  br label %17

11:                                               ; preds = %0
  %12 = load i32, i32* @MMSYSERR_BADDEVICEID, align 4
  store i32 %12, i32* %1, align 4
  br label %17

13:                                               ; preds = %0
  %14 = load i32, i32* @MMSYSERR_INVALPARAM, align 4
  store i32 %14, i32* %1, align 4
  br label %17

15:                                               ; preds = %0
  %16 = load i32, i32* @MMSYSERR_ERROR, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %15, %13, %11, %9, %7, %5, %3
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
