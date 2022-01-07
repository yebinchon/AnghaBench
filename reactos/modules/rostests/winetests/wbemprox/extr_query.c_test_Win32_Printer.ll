; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_Printer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_Printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_Win32_Printer.deviceidW = internal constant [9 x i8] c"DeviceId\00", align 1
@test_Win32_Printer.locationW = internal constant [9 x i8] c"Location\00", align 1
@test_Win32_Printer.portnameW = internal constant [9 x i8] c"PortName\00", align 1
@test_Win32_Printer.queryW = internal constant [28 x i8] c"SELECT * FROM Win32_Printer\00", align 16
@wqlW = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Win32_Printer not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@VT_BSTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unexpected variant type 0x%x\0A\00", align 1
@CIM_STRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"unexpected type 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"deviceid %s\0A\00", align 1
@VT_NULL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"location %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"portname %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_Win32_Printer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Win32_Printer(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i8*, i8** @wqlW, align 8
  %12 = call i32 @SysAllocString(i8* %11)
  store i32 %12, i32* %3, align 4
  %13 = call i32 @SysAllocString(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @test_Win32_Printer.queryW, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  %14 = load i32*, i32** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @IWbemServices_ExecQuery(i32* %14, i32 %15, i32 %16, i32 0, i32* null, i32** %5)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @S_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @win_skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %122

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %73, %23
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @IEnumWbemClassObject_Next(i32* %25, i32 10000, i32 1, i32** %6, i32* %10)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %115

31:                                               ; preds = %24
  store i32 -559038737, i32* %8, align 4
  %32 = call i32 @memset(i32* %7, i32 0, i32 4)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @IWbemClassObject_Get(i32* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_Win32_Printer.deviceidW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 @V_VT(i32* %7)
  %42 = load i32, i32* @VT_BSTR, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @V_VT(i32* %7)
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @CIM_STRING, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = call i32 @V_BSTR(i32* %7)
  %54 = call i32 @wine_dbgstr_w(i32 %53)
  %55 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = call i32 @VariantClear(i32* %7)
  store i32 -559038737, i32* %8, align 4
  %57 = call i32 @memset(i32* %7, i32 0, i32 4)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @IWbemClassObject_Get(i32* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_Win32_Printer.locationW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @S_OK, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = call i32 @V_VT(i32* %7)
  %67 = load i32, i32* @VT_BSTR, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %31
  %70 = call i32 @V_VT(i32* %7)
  %71 = load i32, i32* @VT_NULL, align 4
  %72 = icmp eq i32 %70, %71
  br label %73

73:                                               ; preds = %69, %31
  %74 = phi i1 [ true, %31 ], [ %72, %69 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @V_VT(i32* %7)
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @CIM_STRING, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @ok(i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  %84 = call i32 @V_BSTR(i32* %7)
  %85 = call i32 @wine_dbgstr_w(i32 %84)
  %86 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  %87 = call i32 @VariantClear(i32* %7)
  store i32 -559038737, i32* %8, align 4
  %88 = call i32 @memset(i32* %7, i32 0, i32 4)
  %89 = load i32*, i32** %6, align 8
  %90 = call i32 @IWbemClassObject_Get(i32* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_Win32_Printer.portnameW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @S_OK, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = call i32 @V_VT(i32* %7)
  %98 = load i32, i32* @VT_BSTR, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @V_VT(i32* %7)
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @CIM_STRING, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = call i32 @V_BSTR(i32* %7)
  %110 = call i32 @wine_dbgstr_w(i32 %109)
  %111 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = call i32 @VariantClear(i32* %7)
  %113 = load i32*, i32** %6, align 8
  %114 = call i32 @IWbemClassObject_Release(i32* %113)
  br label %24

115:                                              ; preds = %30
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @IEnumWbemClassObject_Release(i32* %116)
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @SysFreeString(i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @SysFreeString(i32 %120)
  br label %122

122:                                              ; preds = %115, %21
  ret void
}

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i32 @IWbemServices_ExecQuery(i32*, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IEnumWbemClassObject_Next(i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @IWbemClassObject_Get(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @IEnumWbemClassObject_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
