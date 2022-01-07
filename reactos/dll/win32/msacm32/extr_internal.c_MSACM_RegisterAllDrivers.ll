; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RegisterAllDrivers.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msacm32/extr_internal.c_MSACM_RegisterAllDrivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSACM_RegisterAllDrivers.msacm32 = internal constant [12 x i8] c"msacm32.dll\00", align 1
@MSACM_RegisterAllDrivers.msacmW = internal constant [6 x i8] c"MSACM.", align 1
@MSACM_RegisterAllDrivers.drv32 = internal constant [10 x i8] c"drivers32\00", align 1
@MSACM_RegisterAllDrivers.sys = internal constant [11 x i8] c"system.ini\00", align 1
@MSACM_RegisterAllDrivers.drvkey = internal constant [55 x i8] c"Software\\Microsoft\\Windows NT\\CurrentVersion\\Drivers32\00", align 16
@MSACM_pFirstACMDriverID = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSACM_RegisterAllDrivers() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2048 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i64, i64* @MSACM_pFirstACMDriverID, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %127

15:                                               ; preds = %0
  %16 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %17 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %18 = call i64 @RegOpenKeyExW(i32 %16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @MSACM_RegisterAllDrivers.drvkey, i64 0, i64 0), i32 0, i32 %17, i32* %11)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @ERROR_SUCCESS, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %87

22:                                               ; preds = %15
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @RegQueryInfoKeyW(i32 %23, i32 0, i32 0, i32 0, i64* %2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  store i64 0, i64* %1, align 8
  br label %25

25:                                               ; preds = %57, %22
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* %2, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %60

29:                                               ; preds = %25
  %30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %31 = call i64 @ARRAY_SIZE(i8* %30)
  store i64 %31, i64* %3, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i64, i64* %1, align 8
  %34 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %35 = call i64 @RegEnumKeyExW(i32 %32, i64 %33, i8* %34, i64* %3, i32 0, i32 0, i32 0, i32* %10)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @ERROR_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %57

40:                                               ; preds = %29
  %41 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %42 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @MSACM_RegisterAllDrivers.msacmW, i64 0, i64 0))
  %43 = call i64 @_wcsnicmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @MSACM_RegisterAllDrivers.msacmW, i64 0, i64 0), i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %57

46:                                               ; preds = %40
  %47 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %48 = call i8* @wcschr(i8* %47, i8 signext 61)
  store i8* %48, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %57

51:                                               ; preds = %46
  %52 = load i8*, i8** %8, align 8
  store i8 0, i8* %52, align 1
  %53 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i32 @MSACM_RegisterDriver(i8* %53, i8* %55, i32 0)
  br label %57

57:                                               ; preds = %51, %50, %45, %39
  %58 = load i64, i64* %1, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %1, align 8
  br label %25

60:                                               ; preds = %25
  store i64 0, i64* %1, align 8
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %62 = call i64 @ARRAY_SIZE(i8* %61)
  store i64 %62, i64* %2, align 8
  store i64 2048, i64* %3, align 8
  br label %63

63:                                               ; preds = %81, %60
  %64 = load i32, i32* %11, align 4
  %65 = load i64, i64* %1, align 8
  %66 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %67 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %68 = bitcast i8* %67 to i32*
  %69 = call i64 @RegEnumValueW(i32 %64, i64 %65, i8* %66, i64* %2, i32 0, i64* %5, i32* %68, i64* %3)
  %70 = load i64, i64* @ERROR_SUCCESS, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %63
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %74 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @MSACM_RegisterAllDrivers.msacmW, i64 0, i64 0))
  %75 = call i64 @_wcsnicmp(i8* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @MSACM_RegisterAllDrivers.msacmW, i64 0, i64 0), i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %79 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %80 = call i32 @MSACM_RegisterDriver(i8* %78, i8* %79, i32 0)
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i64, i64* %1, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %1, align 8
  br label %63

84:                                               ; preds = %63
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @RegCloseKey(i32 %85)
  br label %87

87:                                               ; preds = %84, %15
  %88 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %89 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %90 = call i64 @ARRAY_SIZE(i8* %89)
  %91 = call i64 @GetPrivateProfileSectionW(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @MSACM_RegisterAllDrivers.drv32, i64 0, i64 0), i8* %88, i64 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @MSACM_RegisterAllDrivers.sys, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %87
  %94 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  store i8* %94, i8** %9, align 8
  br label %95

95:                                               ; preds = %117, %93
  %96 = load i8*, i8** %9, align 8
  %97 = load i8, i8* %96, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %95
  %100 = load i8*, i8** %9, align 8
  %101 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @MSACM_RegisterAllDrivers.msacmW, i64 0, i64 0))
  %102 = call i64 @_wcsnicmp(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @MSACM_RegisterAllDrivers.msacmW, i64 0, i64 0), i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %117

105:                                              ; preds = %99
  %106 = load i8*, i8** %9, align 8
  %107 = call i8* @wcschr(i8* %106, i8 signext 61)
  store i8* %107, i8** %8, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  br label %117

110:                                              ; preds = %105
  %111 = load i8*, i8** %8, align 8
  store i8 0, i8* %111, align 1
  %112 = load i8*, i8** %9, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = call i32 @MSACM_RegisterDriver(i8* %112, i8* %114, i32 0)
  %116 = load i8*, i8** %8, align 8
  store i8 61, i8* %116, align 1
  br label %117

117:                                              ; preds = %110, %109, %104
  %118 = load i8*, i8** %9, align 8
  %119 = call i64 @lstrlenW(i8* %118)
  %120 = add nsw i64 %119, 1
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 %120
  store i8* %122, i8** %9, align 8
  br label %95

123:                                              ; preds = %95
  br label %124

124:                                              ; preds = %123, %87
  %125 = call i32 (...) @MSACM_ReorderDriversByPriority()
  %126 = call i32 @MSACM_RegisterDriver(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @MSACM_RegisterAllDrivers.msacm32, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @MSACM_RegisterAllDrivers.msacm32, i64 0, i64 0), i32 0)
  br label %127

127:                                              ; preds = %124, %14
  ret void
}

declare dso_local i64 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @RegQueryInfoKeyW(i32, i32, i32, i32, i64*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i64 @RegEnumKeyExW(i32, i64, i8*, i64*, i32, i32, i32, i32*) #1

declare dso_local i64 @_wcsnicmp(i8*, i8*, i64) #1

declare dso_local i8* @wcschr(i8*, i8 signext) #1

declare dso_local i32 @MSACM_RegisterDriver(i8*, i8*, i32) #1

declare dso_local i64 @RegEnumValueW(i32, i64, i8*, i64*, i32, i64*, i32*, i64*) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @GetPrivateProfileSectionW(i8*, i8*, i64, i8*) #1

declare dso_local i64 @lstrlenW(i8*) #1

declare dso_local i32 @MSACM_ReorderDriversByPriority(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
