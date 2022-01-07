; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLWritePrivateProfileString.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/odbccp32/extr_misc.c_test_SQLWritePrivateProfileString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_SQLWritePrivateProfileString.odbc_key = internal constant [32 x i8] c"Software\\ODBC\\ODBC.INI\\wineodbc\00", align 16
@.str = private unnamed_addr constant [9 x i8] c"wineodbc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"testing\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"SQLWritePrivateProfileString passed\0A\00", align 1
@ODBC_ERROR_INVALID_STR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"SQLInstallerErrorW ret: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"odbc.ini\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"SQLWritePrivateProfileString failed\0A\00", align 1
@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@KEY_READ = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"RegOpenKeyExW failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"RegDeleteKeyW failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"abcd.ini\00", align 1
@abcd_key = common dso_local global i8* null, align 8
@abcdini_key = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SQLWritePrivateProfileString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SQLWritePrivateProfileString() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @SQLWritePrivateProfileString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %12 = call i32 @SQLInstallerErrorW(i32 1, i64* %3, i32* null, i32 0, i32* null)
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @ODBC_ERROR_INVALID_STR, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %3, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %17)
  %19 = call i32 @SQLWritePrivateProfileString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* null)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %25 = call i32 @SQLInstallerErrorW(i32 1, i64* %3, i32* null, i32 0, i32* null)
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @ODBC_ERROR_INVALID_STR, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %3, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %30)
  %32 = call i32 @SQLWritePrivateProfileString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %0
  %38 = call i32 @SQLWritePrivateProfileString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %41 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %42 = load i32, i32* @KEY_READ, align 4
  %43 = call i32 @RegOpenKeyExW(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_SQLWritePrivateProfileString.odbc_key, i64 0, i64 0), i32 0, i32 %42, i32* %4)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @ERROR_SUCCESS, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @ERROR_SUCCESS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %37
  %53 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %54 = call i32 @RegDeleteKeyW(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_SQLWritePrivateProfileString.odbc_key, i64 0, i64 0))
  store i32 %54, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @ERROR_SUCCESS, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @RegCloseKey(i32 %60)
  br label %62

62:                                               ; preds = %52, %37
  br label %63

63:                                               ; preds = %62, %0
  %64 = call i32 @SQLWritePrivateProfileString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %67 = load i32, i32* %1, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %63
  %70 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %71 = load i8*, i8** @abcd_key, align 8
  %72 = load i32, i32* @KEY_READ, align 4
  %73 = call i32 @RegOpenKeyExW(i32 %70, i8* %71, i32 0, i32 %72, i32* %5)
  store i32 %73, i32* %2, align 4
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @ERROR_SUCCESS, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @ERROR_SUCCESS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %69
  %83 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %84 = load i8*, i8** @abcd_key, align 8
  %85 = call i32 @RegDeleteKeyW(i32 %83, i8* %84)
  store i32 %85, i32* %2, align 4
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @ERROR_SUCCESS, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @RegCloseKey(i32 %91)
  br label %93

93:                                               ; preds = %82, %69
  %94 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %95 = load i8*, i8** @abcdini_key, align 8
  %96 = call i32 @RegDeleteKeyW(i32 %94, i8* %95)
  store i32 %96, i32* %2, align 4
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @ERROR_SUCCESS, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %102

102:                                              ; preds = %93, %63
  ret void
}

declare dso_local i32 @SQLWritePrivateProfileString(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SQLInstallerErrorW(i32, i64*, i32*, i32, i32*) #1

declare dso_local i32 @RegOpenKeyExW(i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @RegDeleteKeyW(i32, i8*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
