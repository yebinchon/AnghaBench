; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_select.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_select.emptyW = internal constant [1 x i8] zeroinitializer, align 1
@test_select.sqlW = internal constant [4 x i8] c"SQL\00", align 1
@test_select.query1 = internal constant [47 x i8] c"SELECT HOTFIXID FROM Win32_QuickFixEngineering\00", align 16
@test_select.query2 = internal constant [25 x i8] c"SELECT * FROM Win32_BIOS\00", align 16
@test_select.query3 = internal constant [58 x i8] c"SELECT * FROM Win32_LogicalDisk WHERE \22NTFS\22 = FileSystem\00", align 16
@test_select.query4 = internal constant [16 x i8] c"SELECT a FROM b\00", align 16
@test_select.query5 = internal constant [25 x i8] c"SELECT a FROM Win32_Bios\00", align 16
@test_select.query6 = internal constant [35 x i8] c"SELECT Description FROM Win32_Bios\00", align 16
@test_select.query7 = internal constant [60 x i8] c"SELECT * FROM Win32_Process WHERE Caption LIKE '%%REGEDIT%'\00", align 16
@test_select.query8 = internal constant [69 x i8] c"SELECT * FROM Win32_DiskDrive WHERE DeviceID=\22\\\\\\\\.\\\\PHYSICALDRIVE0\22\00", align 16
@test_select.query9 = internal constant [16 x i8] c"SELECT\0Aa\0DFROM\09b\00", align 16
@test_select.query10 = internal constant [62 x i8] c"SELECT * FROM Win32_Process WHERE Caption LIKE \22%firefox.exe\22\00", align 16
@test_select.query11 = internal constant [61 x i8] c"SELECT * FROM Win32_VideoController where availability = '3'\00", align 16
@test_select.query12 = internal constant [44 x i8] c"SELECT * FROM Win32_BIOS WHERE NAME <> NULL\00", align 16
@test_select.query13 = internal constant [43 x i8] c"SELECT * FROM Win32_BIOS WHERE NULL = NAME\00", align 16
@test_select.test = internal global [13 x i8*] [i8* getelementptr inbounds ([47 x i8], [47 x i8]* @test_select.query1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @test_select.query2, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @test_select.query3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_select.query4, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @test_select.query5, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @test_select.query6, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @test_select.query7, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @test_select.query8, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_select.query9, i32 0, i32 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @test_select.query10, i32 0, i32 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @test_select.query11, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @test_select.query12, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @test_select.query13, i32 0, i32 0)], align 16
@wqlW = common dso_local global i8* null, align 8
@WBEM_E_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"query failed %08x\0A\00", align 1
@WBEM_E_INVALID_QUERY_TYPE = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"query %u failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_select(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i8*, i8** @wqlW, align 8
  %10 = call i32* @SysAllocString(i8* %9)
  store i32* %10, i32** %5, align 8
  %11 = call i32* @SysAllocString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_select.sqlW, i64 0, i64 0))
  store i32* %11, i32** %6, align 8
  %12 = call i32* @SysAllocString(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @test_select.query1, i64 0, i64 0))
  store i32* %12, i32** %7, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @IWbemServices_ExecQuery(i32* %13, i32* null, i32* null, i32 0, i32* null, i32** %4)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @WBEM_E_INVALID_PARAMETER, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %3, align 8
  %20 = call i32 (i32, i8*, i64, ...) @ok(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @IWbemServices_ExecQuery(i32* %21, i32* null, i32* %22, i32 0, i32* null, i32** %4)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @WBEM_E_INVALID_PARAMETER, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %3, align 8
  %29 = call i32 (i32, i8*, i64, ...) @ok(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @IWbemServices_ExecQuery(i32* %30, i32* %31, i32* null, i32 0, i32* null, i32** %4)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @WBEM_E_INVALID_PARAMETER, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %3, align 8
  %38 = call i32 (i32, i8*, i64, ...) @ok(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @IWbemServices_ExecQuery(i32* %39, i32* %40, i32* %41, i32 0, i32* null, i32** %4)
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @WBEM_E_INVALID_QUERY_TYPE, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %3, align 8
  %48 = call i32 (i32, i8*, i64, ...) @ok(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @IWbemServices_ExecQuery(i32* %49, i32* %50, i32* null, i32 0, i32* null, i32** %4)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @WBEM_E_INVALID_PARAMETER, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %3, align 8
  %57 = call i32 (i32, i8*, i64, ...) @ok(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @SysFreeString(i32* %58)
  %60 = call i32* @SysAllocString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @test_select.emptyW, i64 0, i64 0))
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %2, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 @IWbemServices_ExecQuery(i32* %61, i32* %62, i32* %63, i32 0, i32* null, i32** %4)
  store i64 %64, i64* %3, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* @WBEM_E_INVALID_PARAMETER, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %3, align 8
  %70 = call i32 (i32, i8*, i64, ...) @ok(i32 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %69)
  store i64 0, i64* %8, align 8
  br label %71

71:                                               ; preds = %94, %1
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @ARRAY_SIZE(i8** getelementptr inbounds ([13 x i8*], [13 x i8*]* @test_select.test, i64 0, i64 0))
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load i32*, i32** %2, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds [13 x i8*], [13 x i8*]* @test_select.test, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @exec_query(i32* %76, i8* %79, i32** %4)
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = load i64, i64* @S_OK, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %3, align 8
  %87 = call i32 (i32, i8*, i64, ...) @ok(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %85, i64 %86)
  %88 = load i32*, i32** %4, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %75
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @IEnumWbemClassObject_Release(i32* %91)
  br label %93

93:                                               ; preds = %90, %75
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %8, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %8, align 8
  br label %71

97:                                               ; preds = %71
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @SysFreeString(i32* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 @SysFreeString(i32* %100)
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @SysFreeString(i32* %102)
  ret void
}

declare dso_local i32* @SysAllocString(i8*) #1

declare dso_local i64 @IWbemServices_ExecQuery(i32*, i32*, i32*, i32, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @exec_query(i32*, i8*, i32**) #1

declare dso_local i32 @IEnumWbemClassObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
