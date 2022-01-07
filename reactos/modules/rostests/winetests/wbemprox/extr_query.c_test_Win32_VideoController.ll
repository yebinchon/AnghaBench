; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_VideoController.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_VideoController.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_Win32_VideoController.configmanagererrorcodeW = internal constant [23 x i8] c"ConfigManagerErrorCode\00", align 16
@test_Win32_VideoController.driverdateW = internal constant [11 x i8] c"DriverDate\00", align 1
@test_Win32_VideoController.installeddisplaydriversW = internal constant [24 x i8] c"InstalledDisplayDrivers\00", align 16
@test_Win32_VideoController.statusW = internal constant [7 x i8] c"Status\00", align 1
@test_Win32_VideoController.queryW = internal constant [36 x i8] c"SELECT * FROM Win32_VideoController\00", align 16
@wqlW = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Win32_VideoController not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unexpected variant type 0x%x\0A\00", align 1
@CIM_UINT32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"unexpected type 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"configmanagererrorcode %d\0A\00", align 1
@VT_BSTR = common dso_local global i32 0, align 4
@CIM_DATETIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"driverdate %s\0A\00", align 1
@VT_NULL = common dso_local global i32 0, align 4
@CIM_STRING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"installeddisplaydrivers %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"status %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_Win32_VideoController to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Win32_VideoController(i32* %0) #0 {
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
  %13 = call i32 @SysAllocString(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @test_Win32_VideoController.queryW, i64 0, i64 0))
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
  %22 = call i32 @win_skip(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %145

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %96, %23
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @IEnumWbemClassObject_Next(i32* %25, i32 10000, i32 1, i32** %6, i32* %10)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %138

31:                                               ; preds = %24
  store i32 -559038737, i32* %8, align 4
  %32 = call i32 @VariantInit(i32* %7)
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @IWbemClassObject_Get(i32* %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @test_Win32_VideoController.configmanagererrorcodeW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @S_OK, align 4
  %37 = icmp eq i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = call i32 @V_VT(i32* %7)
  %42 = load i32, i32* @VT_I4, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @V_VT(i32* %7)
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @CIM_UINT32, align 4
  %49 = icmp eq i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @ok(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = call i32 @V_I4(i32* %7)
  %54 = call i32 @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  store i32 -559038737, i32* %8, align 4
  %55 = call i32 @VariantInit(i32* %7)
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @IWbemClassObject_Get(i32* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_Win32_VideoController.driverdateW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @S_OK, align 4
  %60 = icmp eq i32 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = call i32 @V_VT(i32* %7)
  %65 = load i32, i32* @VT_BSTR, align 4
  %66 = icmp eq i32 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @V_VT(i32* %7)
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @CIM_DATETIME, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ok(i32 %73, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = call i32 @V_BSTR(i32* %7)
  %77 = call i32 @wine_dbgstr_w(i32 %76)
  %78 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = call i32 @VariantClear(i32* %7)
  store i32 -559038737, i32* %8, align 4
  %80 = call i32 @VariantInit(i32* %7)
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @IWbemClassObject_Get(i32* %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @test_Win32_VideoController.installeddisplaydriversW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @S_OK, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = call i32 @V_VT(i32* %7)
  %90 = load i32, i32* @VT_BSTR, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %31
  %93 = call i32 @V_VT(i32* %7)
  %94 = load i32, i32* @VT_NULL, align 4
  %95 = icmp eq i32 %93, %94
  br label %96

96:                                               ; preds = %92, %31
  %97 = phi i1 [ true, %31 ], [ %95, %92 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @V_VT(i32* %7)
  %100 = call i32 @ok(i32 %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @CIM_STRING, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @ok(i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = call i32 @V_BSTR(i32* %7)
  %108 = call i32 @wine_dbgstr_w(i32 %107)
  %109 = call i32 @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %108)
  %110 = call i32 @VariantClear(i32* %7)
  store i32 -559038737, i32* %8, align 4
  %111 = call i32 @VariantInit(i32* %7)
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @IWbemClassObject_Get(i32* %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @test_Win32_VideoController.statusW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @S_OK, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  %120 = call i32 @V_VT(i32* %7)
  %121 = load i32, i32* @VT_BSTR, align 4
  %122 = icmp eq i32 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @V_VT(i32* %7)
  %125 = call i32 @ok(i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @CIM_STRING, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @ok(i32 %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = call i32 @V_BSTR(i32* %7)
  %133 = call i32 @wine_dbgstr_w(i32 %132)
  %134 = call i32 @trace(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %133)
  %135 = call i32 @VariantClear(i32* %7)
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 @IWbemClassObject_Release(i32* %136)
  br label %24

138:                                              ; preds = %30
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 @IEnumWbemClassObject_Release(i32* %139)
  %141 = load i32, i32* %4, align 4
  %142 = call i32 @SysFreeString(i32 %141)
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @SysFreeString(i32 %143)
  br label %145

145:                                              ; preds = %138, %21
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

declare dso_local i32 @V_I4(i32*) #1

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
