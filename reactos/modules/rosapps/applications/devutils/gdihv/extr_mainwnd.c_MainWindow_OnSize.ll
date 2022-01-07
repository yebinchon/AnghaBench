; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/gdihv/extr_mainwnd.c_MainWindow_OnSize.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/gdihv/extr_mainwnd.c_MainWindow_OnSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@IDC_PROCESSLIST = common dso_local global i32 0, align 4
@IDC_HANDLELIST = common dso_local global i32 0, align 4
@IDC_REFRESHPROCESS = common dso_local global i32 0, align 4
@IDC_REFRESHHANDLE = common dso_local global i32 0, align 4
@g_Separator = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @MainWindow_OnSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MainWindow_OnSize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @IDC_PROCESSLIST, align 4
  %10 = call i32 @GetDlgItem(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @IDC_HANDLELIST, align 4
  %13 = call i32 @GetDlgItem(i32 %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @IDC_REFRESHPROCESS, align 4
  %16 = call i32 @GetDlgItem(i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @IDC_REFRESHHANDLE, align 4
  %19 = call i32 @GetDlgItem(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @GetClientRect(i32 %20, %struct.TYPE_3__* %7)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @g_Separator, align 4
  %24 = sub nsw i32 %23, 5
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 40
  %28 = load i32, i32* @TRUE, align 4
  %29 = call i32 @MoveWindow(i32 %22, i32 5, i32 5, i32 %24, i32 %27, i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @g_Separator, align 4
  %32 = add nsw i32 %31, 5
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @g_Separator, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sub nsw i32 %36, 5
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 40
  %41 = load i32, i32* @TRUE, align 4
  %42 = call i32 @MoveWindow(i32 %30, i32 %32, i32 5, i32 %37, i32 %40, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @g_Separator, align 4
  %45 = sub nsw i32 %44, 90
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 30
  %49 = load i32, i32* @TRUE, align 4
  %50 = call i32 @MoveWindow(i32 %43, i32 %45, i32 %48, i32 90, i32 25, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 90
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 30
  %58 = load i32, i32* @TRUE, align 4
  %59 = call i32 @MoveWindow(i32 %51, i32 %54, i32 %57, i32 90, i32 25, i32 %58)
  ret i32 0
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @MoveWindow(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
