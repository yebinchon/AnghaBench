; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfassoc.c_ValidateClass.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfassoc.c_ValidateClass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32* }

@IDD_CLASSLIST = common dso_local global i32 0, align 4
@LB_GETCURSEL = common dso_local global i32 0, align 4
@LB_SETCURSEL = common dso_local global i32 0, align 4
@IDD_CONFIG = common dso_local global i32 0, align 4
@IDD_DELETE = common dso_local global i32 0, align 4
@LB_GETITEMDATA = common dso_local global i32 0, align 4
@IDD_COMMAND = common dso_local global i32 0, align 4
@WM_SETTEXT = common dso_local global i32 0, align 4
@szNone = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ValidateClass(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @IDD_CLASSLIST, align 4
  %8 = load i32, i32* @LB_GETCURSEL, align 4
  %9 = call i64 @SendDlgItemMessage(i32 %6, i32 %7, i32 %8, i32 0, i64 0)
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 -1, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @IDD_CLASSLIST, align 4
  %16 = load i32, i32* @LB_SETCURSEL, align 4
  %17 = call i64 @SendDlgItemMessage(i32 %14, i32 %15, i32 %16, i32 0, i64 0)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IDD_CONFIG, align 4
  %21 = call i32 @GetDlgItem(i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @EnableWindow(i32 %21, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @IDD_DELETE, align 4
  %26 = call i32 @GetDlgItem(i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @EnableWindow(i32 %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %18
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @IDD_CLASSLIST, align 4
  %34 = load i32, i32* @LB_GETITEMDATA, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @SendDlgItemMessage(i32 %32, i32 %33, i32 %34, i32 %35, i64 0)
  %37 = inttoptr i64 %36 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %37, %struct.TYPE_2__** %5, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @IDD_COMMAND, align 4
  %40 = load i32, i32* @WM_SETTEXT, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = ptrtoint i32* %47 to i64
  %49 = call i64 @SendDlgItemMessage(i32 %38, i32 %39, i32 %40, i32 0, i64 %48)
  br label %56

50:                                               ; preds = %18
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @IDD_COMMAND, align 4
  %53 = load i32, i32* @WM_SETTEXT, align 4
  %54 = load i64, i64* @szNone, align 8
  %55 = call i64 @SendDlgItemMessage(i32 %51, i32 %52, i32 %53, i32 0, i64 %54)
  br label %56

56:                                               ; preds = %50, %31
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @SendDlgItemMessage(i32, i32, i32, i32, i64) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
