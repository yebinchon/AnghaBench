; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_verify_comp_for_removal.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_files.c_verify_comp_for_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@msidbComponentAttributesSourceOnly = common dso_local global i32 0, align 4
@msidbRemoveFileInstallModeOnRemove = common dso_local global i64 0, align 8
@msidbRemoveFileInstallModeOnBoth = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@msidbRemoveFileInstallModeOnInstall = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i64)* @verify_comp_for_removal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_comp_for_removal(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 128
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @msidbComponentAttributesSourceOnly, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @msidbRemoveFileInstallModeOnRemove, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @msidbRemoveFileInstallModeOnBoth, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %21, %10, %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %53 [
    i32 129, label %31
    i32 128, label %31
    i32 130, label %42
  ]

31:                                               ; preds = %27, %27
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @msidbRemoveFileInstallModeOnInstall, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @msidbRemoveFileInstallModeOnBoth, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %3, align 4
  br label %56

41:                                               ; preds = %35
  br label %54

42:                                               ; preds = %27
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @msidbRemoveFileInstallModeOnRemove, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @msidbRemoveFileInstallModeOnBoth, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %46
  br label %54

53:                                               ; preds = %27
  br label %54

54:                                               ; preds = %53, %52, %41
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %50, %39, %25
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
