; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/extr_osver.c_InitOsVersion.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/extr_osver.c_InitOsVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@g_OsVer = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@g_OsIdx = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitOsVersion() #0 {
  %1 = alloca i32, align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_OsVer, i32 0, i32 0), align 4
  %2 = call i32 @GetVersionExW(i32 ptrtoint (%struct.TYPE_2__* @g_OsVer to i32))
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_OsVer, i32 0, i32 1), align 4
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  store i32 0, i32* @g_OsIdx, align 4
  %6 = load i32, i32* @TRUE, align 4
  store i32 %6, i32* %1, align 4
  br label %37

7:                                                ; preds = %0
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_OsVer, i32 0, i32 1), align 4
  %9 = icmp eq i32 %8, 5
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_OsVer, i32 0, i32 2), align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  store i32 1, i32* @g_OsIdx, align 4
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %1, align 4
  br label %37

15:                                               ; preds = %10
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_OsVer, i32 0, i32 2), align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  store i32 2, i32* @g_OsIdx, align 4
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %1, align 4
  br label %37

20:                                               ; preds = %15
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_OsVer, i32 0, i32 2), align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  store i32 3, i32* @g_OsIdx, align 4
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %1, align 4
  br label %37

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26
  br label %34

28:                                               ; preds = %7
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_OsVer, i32 0, i32 1), align 4
  %30 = icmp eq i32 %29, 6
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  store i32 4, i32* @g_OsIdx, align 4
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %1, align 4
  br label %37

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %27
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %1, align 4
  br label %37

37:                                               ; preds = %35, %31, %23, %18, %13, %5
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @GetVersionExW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
