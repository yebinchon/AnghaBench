; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_system.c_UXTHEME_RestoreSystemMetrics.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_system.c_UXTHEME_RestoreSystemMetrics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BackupSysParam = type { i64, i32, i32 }

@backupSysParams = common dso_local global %struct.BackupSysParam* null, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@szThemeManager = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@strColorKey = common dso_local global i32 0, align 4
@NUM_SYS_COLORS = common dso_local global i32 0, align 4
@SysColorsNames = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@keyNonClientMetrics = common dso_local global i32 0, align 4
@SPI_SETNONCLIENTMETRICS = common dso_local global i32 0, align 4
@keyIconTitleFont = common dso_local global i32 0, align 4
@SPI_SETICONTITLELOGFONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UXTHEME_RestoreSystemMetrics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UXTHEME_RestoreSystemMetrics() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.BackupSysParam*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [13 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = load %struct.BackupSysParam*, %struct.BackupSysParam** @backupSysParams, align 8
  store %struct.BackupSysParam* %22, %struct.BackupSysParam** %2, align 8
  %23 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %24 = load i32, i32* @szThemeManager, align 4
  %25 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %26 = call i64 @RegOpenKeyExW(i32 %23, i32 %24, i32 0, i32 %25, i32* %1)
  %27 = load i64, i64* @ERROR_SUCCESS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %142

29:                                               ; preds = %0
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @strColorKey, align 4
  %32 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %33 = call i64 @RegOpenKeyExW(i32 %30, i32 %31, i32 0, i32 %32, i32* %3)
  %34 = load i64, i64* @ERROR_SUCCESS, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %89

36:                                               ; preds = %29
  %37 = load i32, i32* @NUM_SYS_COLORS, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %5, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %6, align 8
  %41 = load i32, i32* @NUM_SYS_COLORS, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %80, %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @NUM_SYS_COLORS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %83

48:                                               ; preds = %44
  store i32 13, i32* %11, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32*, i32** @SysColorsNames, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %56 = ptrtoint i8* %55 to i32
  %57 = call i64 @RegQueryValueExA(i32 %49, i32 %54, i32 0, i32* %9, i32 %56, i32* %11)
  %58 = load i64, i64* @ERROR_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %48
  %61 = getelementptr inbounds [13 x i8], [13 x i8]* %10, i64 0, i64 0
  %62 = call i32 @sscanf(i8* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %12, i32* %13, i32* %14)
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %43, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @RGB(i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %40, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %64, %60
  br label %79

79:                                               ; preds = %78, %48
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %44

83:                                               ; preds = %44
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @RegCloseKey(i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @SetSysColors(i32 %86, i32* %43, i32* %40)
  %88 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %88)
  br label %89

89:                                               ; preds = %83, %29
  br label %90

90:                                               ; preds = %112, %89
  %91 = load %struct.BackupSysParam*, %struct.BackupSysParam** %2, align 8
  %92 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  store i32 4, i32* %16, align 4
  %96 = load i32, i32* %1, align 4
  %97 = load %struct.BackupSysParam*, %struct.BackupSysParam** %2, align 8
  %98 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = ptrtoint i32* %15 to i32
  %101 = call i64 @RegQueryValueExW(i32 %96, i32 %99, i32 0, i32* %17, i32 %100, i32* %16)
  %102 = load i64, i64* @ERROR_SUCCESS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %95
  %105 = load %struct.BackupSysParam*, %struct.BackupSysParam** %2, align 8
  %106 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = call i32* @UlongToPtr(i32 %108)
  %110 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %111 = call i32 @SystemParametersInfoW(i32 %107, i32 0, i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %104, %95
  %113 = load %struct.BackupSysParam*, %struct.BackupSysParam** %2, align 8
  %114 = getelementptr inbounds %struct.BackupSysParam, %struct.BackupSysParam* %113, i32 1
  store %struct.BackupSysParam* %114, %struct.BackupSysParam** %2, align 8
  br label %90

115:                                              ; preds = %90
  store i32 4, i32* %20, align 4
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* @keyNonClientMetrics, align 4
  %118 = ptrtoint i32* %18 to i32
  %119 = call i64 @RegQueryValueExW(i32 %116, i32 %117, i32 0, i32* %21, i32 %118, i32* %20)
  %120 = load i64, i64* @ERROR_SUCCESS, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load i32, i32* @SPI_SETNONCLIENTMETRICS, align 4
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %126 = call i32 @SystemParametersInfoW(i32 %123, i32 %124, i32* %18, i32 %125)
  br label %127

127:                                              ; preds = %122, %115
  store i32 4, i32* %20, align 4
  %128 = load i32, i32* %1, align 4
  %129 = load i32, i32* @keyIconTitleFont, align 4
  %130 = ptrtoint i32* %19 to i32
  %131 = call i64 @RegQueryValueExW(i32 %128, i32 %129, i32 0, i32* %21, i32 %130, i32* %20)
  %132 = load i64, i64* @ERROR_SUCCESS, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = load i32, i32* @SPI_SETICONTITLELOGFONT, align 4
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %138 = call i32 @SystemParametersInfoW(i32 %135, i32 %136, i32* %19, i32 %137)
  br label %139

139:                                              ; preds = %134, %127
  %140 = load i32, i32* %1, align 4
  %141 = call i32 @RegCloseKey(i32 %140)
  br label %142

142:                                              ; preds = %139, %0
  ret void
}

declare dso_local i64 @RegOpenKeyExW(i32, i32, i32, i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @RegQueryValueExA(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @SetSysColors(i32, i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @RegQueryValueExW(i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @SystemParametersInfoW(i32, i32, i32*, i32) #1

declare dso_local i32* @UlongToPtr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
