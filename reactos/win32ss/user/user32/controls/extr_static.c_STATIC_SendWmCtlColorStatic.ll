; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_static.c_STATIC_SendWmCtlColorStatic.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_static.c_STATIC_SendWmCtlColorStatic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WM_CTLCOLORSTATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @STATIC_SendWmCtlColorStatic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @STATIC_SendWmCtlColorStatic(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @GetParent(i64 %7)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @WM_CTLCOLORSTATIC, align 4
  %16 = load i64, i64* %4, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i64 @SendMessageW(i64 %14, i32 %15, i32 %17, i32 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %13
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* @WM_CTLCOLORSTATIC, align 4
  %26 = load i64, i64* %4, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i64, i64* %3, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i64 @DefWindowProcW(i64 %24, i32 %25, i32 %27, i32 %29)
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %23, %13
  %32 = load i64, i64* %5, align 8
  ret i64 %32
}

declare dso_local i64 @GetParent(i64) #1

declare dso_local i64 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i64 @DefWindowProcW(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
