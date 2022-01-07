; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DEFDLG_Epilog.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DEFDLG_Epilog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WM_CTLCOLORMSGBOX = common dso_local global i64 0, align 8
@WM_CTLCOLORSTATIC = common dso_local global i64 0, align 8
@WM_CTLCOLOR = common dso_local global i64 0, align 8
@WM_COMPAREITEM = common dso_local global i64 0, align 8
@WM_VKEYTOITEM = common dso_local global i64 0, align 8
@WM_CHARTOITEM = common dso_local global i64 0, align 8
@WM_QUERYDRAGICON = common dso_local global i64 0, align 8
@WM_INITDIALOG = common dso_local global i64 0, align 8
@DWLP_MSGRESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32, i32, i64, i64)* @DEFDLG_Epilog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DEFDLG_Epilog(i32 %0, i64 %1, i32 %2, i32 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @WM_CTLCOLORMSGBOX, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @WM_CTLCOLORSTATIC, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17, %6
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @WM_CTLCOLOR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* %12, align 8
  store i64 %29, i64* %7, align 8
  br label %73

30:                                               ; preds = %25
  %31 = load i64, i64* %13, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @DefWindowProcA(i32 %34, i64 %35, i32 %36, i32 %37)
  br label %45

39:                                               ; preds = %30
  %40 = load i32, i32* %8, align 4
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @DefWindowProcW(i32 %40, i64 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i64 [ %38, %33 ], [ %44, %39 ]
  store i64 %46, i64* %7, align 8
  br label %73

47:                                               ; preds = %21
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @WM_COMPAREITEM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %67, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @WM_VKEYTOITEM, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* @WM_CHARTOITEM, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @WM_QUERYDRAGICON, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @WM_INITDIALOG, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63, %59, %55, %51, %47
  %68 = load i64, i64* %12, align 8
  store i64 %68, i64* %7, align 8
  br label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @DWLP_MSGRESULT, align 4
  %72 = call i64 @GetWindowLongPtrW(i32 %70, i32 %71)
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %69, %67, %45, %28
  %74 = load i64, i64* %7, align 8
  ret i64 %74
}

declare dso_local i64 @DefWindowProcA(i32, i64, i32, i32) #1

declare dso_local i64 @DefWindowProcW(i32, i64, i32, i32) #1

declare dso_local i64 @GetWindowLongPtrW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
