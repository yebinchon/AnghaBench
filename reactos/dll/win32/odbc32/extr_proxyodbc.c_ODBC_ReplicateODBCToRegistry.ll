; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/odbc32/extr_proxyodbc.c_ODBC_ReplicateODBCToRegistry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/odbc32/extr_proxyodbc.c_ODBC_ReplicateODBCToRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQL_MAX_DSN_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@FALSE = common dso_local global i64 0, align 8
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Software\\ODBC\\ODBC.INI\00", align 1
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SQL_FETCH_FIRST_USER = common dso_local global i32 0, align 4
@SQL_FETCH_FIRST_SYSTEM = common dso_local global i32 0, align 4
@SQL_SUCCESS = common dso_local global i64 0, align 8
@SQL_SUCCESS_WITH_INFO = common dso_local global i64 0, align 8
@SQL_FETCH_NEXT = common dso_local global i32 0, align 4
@ODBC_ReplicateODBCToRegistry.DRIVERKEY = internal constant [7 x i8] c"Driver\00", align 1
@ERROR_FILE_NOT_FOUND = common dso_local global i64 0, align 8
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Error %d replicating description of %s(%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Error %d checking for description of %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Error %d closing %s DSN key %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Error %d opening %s DSN key %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"Unusually long %s data source name %s (%s) not replicated\0A\00", align 1
@SQL_NO_DATA = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"Error %d enumerating %s datasources\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Error %d closing %s ODBC.INI registry key\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Error %d creating/opening %s ODBC.INI registry key\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"May not have replicated all %s ODBC DSNs to the registry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32)* @ODBC_ReplicateODBCToRegistry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ODBC_ReplicateODBCToRegistry(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* @SQL_MAX_DSN_LENGTH, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i64, i64* %3, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %25, i8** %15, align 8
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %3, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @HKEY_CURRENT_USER, align 4
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %36 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %37 = call i64 @RegCreateKeyExA(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32 %35, i32 %36, i32* null, i32* %5, i32* null)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %155

40:                                               ; preds = %33
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @SQL_FETCH_FIRST_USER, align 4
  br label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @SQL_FETCH_FIRST_SYSTEM, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %133, %48
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %8, align 4
  %53 = bitcast i8* %21 to i32*
  %54 = trunc i64 %19 to i32
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %56 = bitcast i8* %55 to i32*
  %57 = call i64 @ODBC32_SQLDataSources(i32 %51, i32 %52, i32* %53, i32 %54, i64* %11, i32* %56, i32 256, i64* %13)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* @SQL_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %50
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %63 = icmp eq i64 %61, %62
  br label %64

64:                                               ; preds = %60, %50
  %65 = phi i1 [ true, %50 ], [ %63, %60 ]
  br i1 %65, label %66, label %134

66:                                               ; preds = %64
  %67 = load i32, i32* @SQL_FETCH_NEXT, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @lstrlenA(i8* %21)
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %128

71:                                               ; preds = %66
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %74 = call i64 @lstrlenA(i8* %73)
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %128

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %79 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %80 = call i64 @RegCreateKeyExA(i32 %77, i8* %21, i32 0, i32* null, i32 %78, i32 %79, i32* null, i32* %16, i32* null)
  store i64 %80, i64* %6, align 8
  %81 = load i64, i64* @ERROR_SUCCESS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %122

83:                                               ; preds = %76
  %84 = load i32, i32* %16, align 4
  %85 = call i64 @RegQueryValueExA(i32 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ODBC_ReplicateODBCToRegistry.DRIVERKEY, i64 0, i64 0), i32* null, i32* null, i32* null, i32* null)
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* @ERROR_FILE_NOT_FOUND, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %83
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @REG_SZ, align 4
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %92 = ptrtoint i8* %91 to i32
  %93 = load i64, i64* %13, align 8
  %94 = call i64 @RegSetValueExA(i32 %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ODBC_ReplicateODBCToRegistry.DRIVERKEY, i64 0, i64 0), i32 0, i32 %90, i32 %92, i64 %93)
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* @ERROR_SUCCESS, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %100 = call i32 (i8*, i64, i8*, ...) @TRACE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %98, i8* %21, i8* %99)
  %101 = load i64, i64* @FALSE, align 8
  store i64 %101, i64* %14, align 8
  br label %102

102:                                              ; preds = %97, %88
  br label %112

103:                                              ; preds = %83
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @ERROR_SUCCESS, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i64, i64* %6, align 8
  %109 = call i32 (i8*, i64, i8*, ...) @TRACE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %108, i8* %21)
  %110 = load i64, i64* @FALSE, align 8
  store i64 %110, i64* %14, align 8
  br label %111

111:                                              ; preds = %107, %103
  br label %112

112:                                              ; preds = %111, %102
  %113 = load i32, i32* %16, align 4
  %114 = call i64 @RegCloseKey(i32 %113)
  store i64 %114, i64* %6, align 8
  %115 = load i64, i64* @ERROR_SUCCESS, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i64, i64* %6, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = call i32 (i8*, i64, i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %118, i8* %119, i8* %21)
  br label %121

121:                                              ; preds = %117, %112
  br label %127

122:                                              ; preds = %76
  %123 = load i64, i64* %6, align 8
  %124 = load i8*, i8** %15, align 8
  %125 = call i32 (i8*, i64, i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i64 %123, i8* %124, i8* %21)
  %126 = load i64, i64* @FALSE, align 8
  store i64 %126, i64* %14, align 8
  br label %127

127:                                              ; preds = %122, %121
  br label %133

128:                                              ; preds = %71, %66
  %129 = load i8*, i8** %15, align 8
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %131 = call i32 (i8*, i8*, ...) @WARN(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i8* %129, i8* %21, i8* %130)
  %132 = load i64, i64* @FALSE, align 8
  store i64 %132, i64* %14, align 8
  br label %133

133:                                              ; preds = %128, %127
  br label %50

134:                                              ; preds = %64
  %135 = load i64, i64* %7, align 8
  %136 = load i64, i64* @SQL_NO_DATA, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load i64, i64* %7, align 8
  %140 = trunc i64 %139 to i32
  %141 = sext i32 %140 to i64
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 (i8*, i64, i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i64 %141, i8* %142)
  %144 = load i64, i64* @FALSE, align 8
  store i64 %144, i64* %14, align 8
  br label %145

145:                                              ; preds = %138, %134
  %146 = load i32, i32* %5, align 4
  %147 = call i64 @RegCloseKey(i32 %146)
  store i64 %147, i64* %6, align 8
  %148 = load i64, i64* @ERROR_SUCCESS, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i64, i64* %6, align 8
  %152 = load i8*, i8** %15, align 8
  %153 = call i32 (i8*, i64, i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i64 %151, i8* %152)
  br label %154

154:                                              ; preds = %150, %145
  br label %159

155:                                              ; preds = %33
  %156 = load i64, i64* %6, align 8
  %157 = load i8*, i8** %15, align 8
  %158 = call i32 (i8*, i64, i8*, ...) @TRACE(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i64 %156, i8* %157)
  br label %159

159:                                              ; preds = %155, %154
  %160 = load i64, i64* %14, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i8*, i8** %15, align 8
  %164 = call i32 (i8*, i8*, ...) @WARN(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i8* %163)
  br label %165

165:                                              ; preds = %162, %159
  %166 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %166)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i64 @ODBC32_SQLDataSources(i32, i32, i32*, i32, i64*, i32*, i32, i64*) #2

declare dso_local i64 @lstrlenA(i8*) #2

declare dso_local i64 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @RegSetValueExA(i32, i8*, i32, i32, i32, i64) #2

declare dso_local i32 @TRACE(i8*, i64, i8*, ...) #2

declare dso_local i64 @RegCloseKey(i32) #2

declare dso_local i32 @WARN(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
