; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_system.c_UXTHEME_BackupSystemMetrics.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_system.c_UXTHEME_BackupSystemMetrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BackupSysParam = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@backupSysParams = common dso_local global %struct.BackupSysParam* null, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@szThemeManager = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@REG_DWORD = common dso_local global i32 0, align 4
@SPI_GETNONCLIENTMETRICS = common dso_local global i64 0, align 8
@keyNonClientMetrics = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@SPI_GETICONTITLELOGFONT = common dso_local global i64 0, align 8
@keyIconTitleFont = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UXTHEME_BackupSystemMetrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UXTHEME_BackupSystemMetrics() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.BackupSysParam*, align 8
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = load %struct.BackupSysParam*, %struct.BackupSysParam** @backupSysParams, align 8
  store %struct.BackupSysParam* %6, %struct.BackupSysParam** %2, align 8
  %7 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %8 = load i32, i32* @szThemeManager, align 4
  %9 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %10 = call i64 @RegCreateKeyExW(i32 %7, i32 %8, i32 0, i32 0, i32 0, i32 %9, i32 0, i32* %1, i32 0)
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %0
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @save_sys_colors(i32 %14)
  br label %16

16:                                               ; preds = %21, %13
  %17 = load %struct.BackupSysParam*, %struct.BackupSysParam** %2, align 8
  %18 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.BackupSysParam*, %struct.BackupSysParam** %2, align 8
  %23 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @SystemParametersInfoW(i64 %24, i32 0, %struct.TYPE_6__* %5, i32 0)
  %26 = load i32, i32* %1, align 4
  %27 = load %struct.BackupSysParam*, %struct.BackupSysParam** %2, align 8
  %28 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @REG_DWORD, align 4
  %31 = ptrtoint %struct.TYPE_6__* %5 to i32
  %32 = call i32 @RegSetValueExW(i32 %26, i32 %29, i32 0, i32 %30, i32 %31, i32 4)
  %33 = load %struct.BackupSysParam*, %struct.BackupSysParam** %2, align 8
  %34 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %33, i32 1
  store %struct.BackupSysParam* %34, %struct.BackupSysParam** %2, align 8
  br label %16

35:                                               ; preds = %16
  %36 = call i32 @memset(%struct.TYPE_6__* %3, i32 0, i32 4)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  store i32 4, i32* %37, align 4
  %38 = load i64, i64* @SPI_GETNONCLIENTMETRICS, align 8
  %39 = call i32 @SystemParametersInfoW(i64 %38, i32 4, %struct.TYPE_6__* %3, i32 0)
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @keyNonClientMetrics, align 4
  %42 = load i32, i32* @REG_BINARY, align 4
  %43 = ptrtoint %struct.TYPE_6__* %3 to i32
  %44 = call i32 @RegSetValueExW(i32 %40, i32 %41, i32 0, i32 %42, i32 %43, i32 4)
  %45 = call i32 @memset(%struct.TYPE_6__* %4, i32 0, i32 4)
  %46 = load i64, i64* @SPI_GETICONTITLELOGFONT, align 8
  %47 = call i32 @SystemParametersInfoW(i64 %46, i32 4, %struct.TYPE_6__* %4, i32 0)
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @keyIconTitleFont, align 4
  %50 = load i32, i32* @REG_BINARY, align 4
  %51 = ptrtoint %struct.TYPE_6__* %4 to i32
  %52 = call i32 @RegSetValueExW(i32 %48, i32 %49, i32 0, i32 %50, i32 %51, i32 4)
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @RegCloseKey(i32 %53)
  br label %55

55:                                               ; preds = %35, %0
  ret void
}

declare dso_local i64 @RegCreateKeyExW(i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @save_sys_colors(i32) #1

declare dso_local i32 @SystemParametersInfoW(i64, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @RegSetValueExW(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
