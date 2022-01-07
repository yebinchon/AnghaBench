; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/odbc32/extr_proxyodbc.c_ODBC_ReplicateODBCInstToRegistry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/odbc32/extr_proxyodbc.c_ODBC_ReplicateODBCInstToRegistry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Driver settings are not currently replicated to the registry\0A\00", align 1
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Software\\ODBC\\ODBCINST.INI\00", align 1
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"ODBC Drivers\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SQL_FETCH_FIRST = common dso_local global i32 0, align 4
@SQL_SUCCESS = common dso_local global i64 0, align 8
@SQL_SUCCESS_WITH_INFO = common dso_local global i64 0, align 8
@SQL_FETCH_NEXT = common dso_local global i32 0, align 4
@ERROR_FILE_NOT_FOUND = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"Installed\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Error %d replicating driver %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Error %d checking for %s in drivers\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Error %d closing %s key\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Error %d ensuring driver key %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Unusually long driver name %s not replicated\0A\00", align 1
@SQL_NO_DATA = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"Error %d enumerating drivers\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Error %d closing hDrivers\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Error %d opening HKLM\\S\\O\\OI\\Drivers\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Error %d closing HKLM\\S\\O\\ODBCINST.INI\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"Error %d opening HKLM\\S\\O\\ODBCINST.INI\0A\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"May not have replicated all ODBC drivers to the registry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ODBC_ReplicateODBCInstToRegistry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ODBC_ReplicateODBCInstToRegistry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %5, align 4
  %13 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %15 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %16 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %17 = call i32 @RegCreateKeyExA(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null, i32 %15, i32 %16, i32* null, i32* %3, i32* null)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @ERROR_SUCCESS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %138

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %23 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %24 = call i32 @RegCreateKeyExA(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32 %22, i32 %23, i32* null, i32* %6, i32* null)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @ERROR_SUCCESS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %126

27:                                               ; preds = %20
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @SQL_FETCH_FIRST, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %107, %27
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %34 = bitcast i8* %33 to i32*
  %35 = call i64 @ODBC32_SQLDrivers(i32 %31, i32 %32, i32* %34, i32 256, i64* %10, i32* null, i32 0, i32* null)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* @SQL_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @SQL_SUCCESS_WITH_INFO, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %38, %30
  %43 = phi i1 [ true, %30 ], [ %41, %38 ]
  br i1 %43, label %44, label %108

44:                                               ; preds = %42
  %45 = load i32, i32* @SQL_FETCH_NEXT, align 4
  store i32 %45, i32* %8, align 4
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %48 = call i64 @lstrlenA(i8* %47)
  %49 = icmp eq i64 %46, %48
  br i1 %49, label %50, label %103

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %53 = call i32 @RegQueryValueExA(i32 %51, i8* %52, i32* null, i32* null, i32* null, i32* null)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @ERROR_FILE_NOT_FOUND, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %59 = load i32, i32* @REG_SZ, align 4
  %60 = call i32 @RegSetValueExA(i32 %57, i8* %58, i32 0, i32 %59, i32* bitcast ([10 x i8]* @.str.3 to i32*), i32 10)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @ERROR_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %66 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %64, i8* %65)
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %56
  br label %79

69:                                               ; preds = %50
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @ERROR_SUCCESS, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32, i32* %4, align 4
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %76 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %74, i8* %75)
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %73, %69
  br label %79

79:                                               ; preds = %78, %68
  %80 = load i32, i32* %3, align 4
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %82 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %83 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %84 = call i32 @RegCreateKeyExA(i32 %80, i8* %81, i32 0, i32* null, i32 %82, i32 %83, i32* null, i32* %11, i32* null)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* @ERROR_SUCCESS, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @RegCloseKey(i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @ERROR_SUCCESS, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* %4, align 4
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %95 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %93, i8* %94)
  br label %96

96:                                               ; preds = %92, %87
  br label %102

97:                                               ; preds = %79
  %98 = load i32, i32* %4, align 4
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %100 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %98, i8* %99)
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %97, %96
  br label %107

103:                                              ; preds = %44
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %105 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i8* %104)
  %106 = load i32, i32* @FALSE, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %103, %102
  br label %30

108:                                              ; preds = %42
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* @SQL_NO_DATA, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i64, i64* %7, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %112, %108
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @RegCloseKey(i32 %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* @ERROR_SUCCESS, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %4, align 4
  %124 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %122, %117
  br label %129

126:                                              ; preds = %20
  %127 = load i32, i32* %4, align 4
  %128 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %126, %125
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @RegCloseKey(i32 %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* @ERROR_SUCCESS, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %4, align 4
  %136 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %134, %129
  br label %141

138:                                              ; preds = %1
  %139 = load i32, i32* %4, align 4
  %140 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %138, %137
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %141
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @RegCreateKeyExA(i32, i8*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @ODBC32_SQLDrivers(i32, i32, i32*, i32, i64*, i32*, i32, i32*) #1

declare dso_local i64 @lstrlenA(i8*) #1

declare dso_local i32 @RegQueryValueExA(i32, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RegSetValueExA(i32, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i32 @WARN(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
