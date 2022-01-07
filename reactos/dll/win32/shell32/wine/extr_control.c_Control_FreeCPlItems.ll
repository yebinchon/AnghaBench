; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_control.c_Control_FreeCPlItems.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_control.c_Control_FreeCPlItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@IDM_CPANEL_APPLET_BASE = common dso_local global i32 0, align 4
@MIIM_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_6__*)* @Control_FreeCPlItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Control_FreeCPlItems(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GetMenu(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %49

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @GetSubMenu(i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %49

20:                                               ; preds = %14
  %21 = load i32, i32* @IDM_CPANEL_APPLET_BASE, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %46, %20
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @IDM_CPANEL_APPLET_BASE, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %24, %27
  %29 = icmp ule i32 %23, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 24, i32* %31, align 8
  %32 = load i32, i32* @MIIM_DATA, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i32 @GetMenuItemInfoW(i32 %34, i32 %35, i32 %36, %struct.TYPE_5__* %7)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %46

40:                                               ; preds = %30
  %41 = call i32 (...) @GetProcessHeap()
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @HeapFree(i32 %41, i32 0, i32 %44)
  br label %46

46:                                               ; preds = %40, %39
  %47 = load i32, i32* %8, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %22

49:                                               ; preds = %13, %19, %22
  ret void
}

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @GetMenuItemInfoW(i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @HeapFree(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
