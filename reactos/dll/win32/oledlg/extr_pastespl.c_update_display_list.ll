; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_update_display_list.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oledlg/extr_pastespl.c_update_display_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IDC_PS_DISPLAYLIST = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@WM_SETREDRAW = common dso_local global i32 0, align 4
@LB_RESETCONTENT = common dso_local global i32 0, align 4
@LB_GETCOUNT = common dso_local global i32 0, align 4
@LB_GETTEXT = common dso_local global i32 0, align 4
@LB_GETITEMDATA = common dso_local global i32 0, align 4
@LB_INSERTSTRING = common dso_local global i32 0, align 4
@LB_SETITEMDATA = common dso_local global i32 0, align 4
@LB_SETCURSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @update_display_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_display_list(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @IDC_PS_DISPLAYLIST, align 4
  %14 = call i64 @GetDlgItem(i64 %12, i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @GetDlgItem(i64 %15, i32 %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* @LB_GETCURSEL, align 4
  %20 = call i32 @SendMessageW(i64 %18, i32 %19, i32 0, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* @WM_SETREDRAW, align 4
  %27 = call i32 @SendMessageW(i64 %25, i32 %26, i32 0, i32 0)
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* @LB_RESETCONTENT, align 4
  %30 = call i32 @SendMessageW(i64 %28, i32 %29, i32 0, i32 0)
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* @LB_GETCOUNT, align 4
  %33 = call i32 @SendMessageW(i64 %31, i32 %32, i32 0, i32 0)
  store i32 %33, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %60, %24
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* @LB_GETTEXT, align 4
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %43 = ptrtoint i32* %42 to i32
  %44 = call i32 @SendMessageW(i64 %39, i32 %40, i32 %41, i32 %43)
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* @LB_GETITEMDATA, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @SendMessageW(i64 %45, i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %9, align 4
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* @LB_INSERTSTRING, align 4
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* %8, i64 0, i64 0
  %53 = ptrtoint i32* %52 to i32
  %54 = call i32 @SendMessageW(i64 %49, i32 %50, i32 %51, i32 %53)
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* @LB_SETITEMDATA, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @SendMessageW(i64 %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %38
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %34

63:                                               ; preds = %34
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* @LB_SETCURSEL, align 4
  %66 = call i32 @SendMessageW(i64 %64, i32 %65, i32 0, i32 0)
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* @WM_SETREDRAW, align 4
  %69 = call i32 @SendMessageW(i64 %67, i32 %68, i32 1, i32 0)
  %70 = call i64 (...) @GetForegroundWindow()
  %71 = load i64, i64* %3, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @SetFocus(i64 %74)
  br label %76

76:                                               ; preds = %73, %63
  ret void
}

declare dso_local i64 @GetDlgItem(i64, i32) #1

declare dso_local i32 @SendMessageW(i64, i32, i32, i32) #1

declare dso_local i64 @GetForegroundWindow(...) #1

declare dso_local i32 @SetFocus(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
