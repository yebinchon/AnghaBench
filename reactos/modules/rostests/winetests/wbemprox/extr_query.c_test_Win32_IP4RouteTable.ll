; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_IP4RouteTable.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_IP4RouteTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_Win32_IP4RouteTable.destinationW = internal constant [12 x i8] c"Destination\00", align 1
@test_Win32_IP4RouteTable.interfaceindexW = internal constant [15 x i8] c"InterfaceIndex\00", align 1
@test_Win32_IP4RouteTable.nexthopW = internal constant [8 x i8] c"NextHop\00", align 1
@test_Win32_IP4RouteTable.queryW = internal constant [34 x i8] c"SELECT * FROM Win32_IP4RouteTable\00", align 16
@wqlW = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Win32_IP4RouteTable not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get destination %08x\0A\00", align 1
@VT_BSTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unexpected variant type 0x%x\0A\00", align 1
@CIM_STRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"unexpected type 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"destination %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to get interface index %08x\0A\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@CIM_SINT32 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"interfaceindex %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to get nexthop %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"nexthop %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_Win32_IP4RouteTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Win32_IP4RouteTable(i32* %0) #0 {
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
  %13 = call i32 @SysAllocString(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @test_Win32_IP4RouteTable.queryW, i64 0, i64 0))
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
  %22 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %115

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %31, %23
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @IEnumWbemClassObject_Next(i32* %25, i32 10000, i32 1, i32** %6, i32* %10)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %108

31:                                               ; preds = %24
  store i32 -559038737, i32* %8, align 4
  %32 = call i32 @VariantInit(i32* %7)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @IWbemClassObject_Get(i32* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @test_Win32_IP4RouteTable.destinationW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
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
  %55 = call i32 @trace(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = call i32 @VariantClear(i32* %7)
  store i32 -559038737, i32* %8, align 4
  %57 = call i32 @VariantInit(i32* %7)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @IWbemClassObject_Get(i32* %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_Win32_IP4RouteTable.interfaceindexW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @S_OK, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = call i32 @V_VT(i32* %7)
  %67 = load i32, i32* @VT_I4, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @V_VT(i32* %7)
  %71 = call i32 @ok(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @CIM_SINT32, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %76)
  %78 = call i32 @V_I4(i32* %7)
  %79 = call i32 @trace(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %78)
  %80 = call i32 @VariantClear(i32* %7)
  store i32 -559038737, i32* %8, align 4
  %81 = call i32 @VariantInit(i32* %7)
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @IWbemClassObject_Get(i32* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_Win32_IP4RouteTable.nexthopW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @S_OK, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @ok(i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  %90 = call i32 @V_VT(i32* %7)
  %91 = load i32, i32* @VT_BSTR, align 4
  %92 = icmp eq i32 %90, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @V_VT(i32* %7)
  %95 = call i32 @ok(i32 %93, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @CIM_STRING, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @ok(i32 %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = call i32 @V_BSTR(i32* %7)
  %103 = call i32 @wine_dbgstr_w(i32 %102)
  %104 = call i32 @trace(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %103)
  %105 = call i32 @VariantClear(i32* %7)
  %106 = load i32*, i32** %6, align 8
  %107 = call i32 @IWbemClassObject_Release(i32* %106)
  br label %24

108:                                              ; preds = %30
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @IEnumWbemClassObject_Release(i32* %109)
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @SysFreeString(i32 %111)
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @SysFreeString(i32 %113)
  br label %115

115:                                              ; preds = %108, %21
  ret void
}

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i32 @IWbemServices_ExecQuery(i32*, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IEnumWbemClassObject_Next(i32*, i32, i32, i32**, i32*) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @IWbemClassObject_Get(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @V_VT(i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @wine_dbgstr_w(i32) #1

declare dso_local i32 @V_BSTR(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @V_I4(i32*) #1

declare dso_local i32 @IWbemClassObject_Release(i32*) #1

declare dso_local i32 @IEnumWbemClassObject_Release(i32*) #1

declare dso_local i32 @SysFreeString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
