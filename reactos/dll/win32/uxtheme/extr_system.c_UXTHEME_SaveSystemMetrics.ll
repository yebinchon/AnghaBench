; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_system.c_UXTHEME_SaveSystemMetrics.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_system.c_UXTHEME_SaveSystemMetrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BackupSysParam = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }

@backupSysParams = common dso_local global %struct.BackupSysParam* null, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@SPI_GETNONCLIENTMETRICS = common dso_local global i64 0, align 8
@SPI_SETNONCLIENTMETRICS = common dso_local global i64 0, align 8
@SPI_GETICONTITLELOGFONT = common dso_local global i64 0, align 8
@SPI_SETICONTITLELOGFONT = common dso_local global i64 0, align 8
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UXTHEME_SaveSystemMetrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UXTHEME_SaveSystemMetrics() #0 {
  %1 = alloca %struct.BackupSysParam*, align 8
  %2 = alloca %struct.TYPE_8__, align 4
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca %struct.TYPE_8__, align 4
  %5 = load %struct.BackupSysParam*, %struct.BackupSysParam** @backupSysParams, align 8
  store %struct.BackupSysParam* %5, %struct.BackupSysParam** %1, align 8
  %6 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %7 = call i32 @save_sys_colors(i32 %6)
  br label %8

8:                                                ; preds = %13, %0
  %9 = load %struct.BackupSysParam*, %struct.BackupSysParam** %1, align 8
  %10 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = load %struct.BackupSysParam*, %struct.BackupSysParam** %1, align 8
  %15 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @SystemParametersInfoW(i64 %16, i32 0, %struct.TYPE_8__* %4, i32 0)
  %18 = load %struct.BackupSysParam*, %struct.BackupSysParam** %1, align 8
  %19 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_8__* @UlongToPtr(i32 %22)
  %24 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %25 = call i32 @SystemParametersInfoW(i64 %20, i32 0, %struct.TYPE_8__* %23, i32 %24)
  %26 = load %struct.BackupSysParam*, %struct.BackupSysParam** %1, align 8
  %27 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %26, i32 1
  store %struct.BackupSysParam* %27, %struct.BackupSysParam** %1, align 8
  br label %8

28:                                               ; preds = %8
  %29 = call i32 @memset(%struct.TYPE_8__* %2, i32 0, i32 4)
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  store i32 4, i32* %30, align 4
  %31 = load i64, i64* @SPI_GETNONCLIENTMETRICS, align 8
  %32 = call i32 @SystemParametersInfoW(i64 %31, i32 4, %struct.TYPE_8__* %2, i32 0)
  %33 = load i64, i64* @SPI_SETNONCLIENTMETRICS, align 8
  %34 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %35 = call i32 @SystemParametersInfoW(i64 %33, i32 4, %struct.TYPE_8__* %2, i32 %34)
  %36 = call i32 @memset(%struct.TYPE_8__* %3, i32 0, i32 4)
  %37 = load i64, i64* @SPI_GETICONTITLELOGFONT, align 8
  %38 = call i32 @SystemParametersInfoW(i64 %37, i32 4, %struct.TYPE_8__* %3, i32 0)
  %39 = load i64, i64* @SPI_SETICONTITLELOGFONT, align 8
  %40 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %41 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @SystemParametersInfoW(i64 %39, i32 4, %struct.TYPE_8__* %3, i32 %42)
  ret void
}

declare dso_local i32 @save_sys_colors(i32) #1

declare dso_local i32 @SystemParametersInfoW(i64, i32, %struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_8__* @UlongToPtr(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
