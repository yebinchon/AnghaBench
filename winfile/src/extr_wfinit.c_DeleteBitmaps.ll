; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinit.c_DeleteBitmaps.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinit.c_DeleteBitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hdcMem = common dso_local global i64 0, align 8
@hbmSave = common dso_local global i32 0, align 4
@hbmBitmaps = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DeleteBitmaps() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @hdcMem, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = load i64, i64* @hdcMem, align 8
  %6 = load i32, i32* @hbmSave, align 4
  %7 = call i32 @SelectObject(i64 %5, i32 %6)
  %8 = load i64, i64* @hbmBitmaps, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = load i64, i64* @hbmBitmaps, align 8
  %12 = call i32 @DeleteObject(i64 %11)
  br label %13

13:                                               ; preds = %10, %4
  %14 = load i64, i64* @hdcMem, align 8
  %15 = call i32 @DeleteDC(i64 %14)
  br label %16

16:                                               ; preds = %13, %0
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i32 @SelectObject(i64, i32) #1

declare dso_local i32 @DeleteObject(i64) #1

declare dso_local i32 @DeleteDC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
