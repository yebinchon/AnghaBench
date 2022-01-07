; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_PnPEntity.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_PnPEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_Win32_PnPEntity.win32_pnpentityW = internal global [16 x i8] c"Win32_PnPEntity\00", align 16
@test_Win32_PnPEntity.deviceidW = internal constant [9 x i8] c"DeviceId\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@WBEM_S_FALSE = common dso_local global i64 0, align 8
@WBEM_S_NO_ERROR = common dso_local global i64 0, align 8
@WBEM_S_TIMEDOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"got %08x with %u objects returned\0A\00", align 1
@VT_BSTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"unexpected variant type 0x%x\0A\00", align 1
@CIM_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"unexpected type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_Win32_PnPEntity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Win32_PnPEntity(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = call i32 @SysAllocString(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @test_Win32_PnPEntity.win32_pnpentityW, i64 0, i64 0))
  store i32 %11, i32* %10, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* %10, align 4
  %14 = call i64 @IWbemServices_CreateInstanceEnum(i32* %12, i32 %13, i32 0, i32* null, i32** %4)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %3, align 8
  %20 = call i32 (i32, i8*, i64, ...) @ok(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @SysFreeString(i32 %21)
  %23 = call i32 @SysAllocString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_Win32_PnPEntity.deviceidW, i64 0, i64 0))
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %1, %97
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @IEnumWbemClassObject_Next(i32* %25, i32 1000, i32 1, i32** %5, i32* %8)
  store i64 %26, i64* %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* @WBEM_S_FALSE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %52, label %33

33:                                               ; preds = %29
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @WBEM_S_NO_ERROR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %52, label %37

37:                                               ; preds = %33, %24
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* @WBEM_S_FALSE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @WBEM_S_TIMEDOUT, align 8
  %47 = icmp eq i64 %45, %46
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i1 [ true, %40 ], [ %47, %44 ]
  br label %50

50:                                               ; preds = %48, %37
  %51 = phi i1 [ false, %37 ], [ %49, %48 ]
  br label %52

52:                                               ; preds = %50, %33, %29
  %53 = phi i1 [ true, %33 ], [ true, %29 ], [ %51, %50 ]
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i32, i8*, i64, ...) @ok(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %98

61:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %94, %61
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %97

66:                                               ; preds = %62
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @IWbemClassObject_Get(i32* %67, i32 %68, i32 0, i32* %6, i64* %7, i32* null)
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @S_OK, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i64, i64* %3, align 8
  %75 = call i32 (i32, i8*, i64, ...) @ok(i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %74)
  %76 = load i64, i64* %3, align 8
  %77 = call i64 @SUCCEEDED(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %66
  %80 = call i64 @V_VT(i32* %6)
  %81 = load i64, i64* @VT_BSTR, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @V_VT(i32* %6)
  %85 = call i32 (i32, i8*, i64, ...) @ok(i32 %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %84)
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @CIM_STRING, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i64, i64* %7, align 8
  %91 = call i32 (i32, i8*, i64, ...) @ok(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %90)
  %92 = call i32 @VariantClear(i32* %6)
  br label %93

93:                                               ; preds = %79, %66
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %62

97:                                               ; preds = %62
  br label %24

98:                                               ; preds = %60
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @SysFreeString(i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @IEnumWbemClassObject_Release(i32* %101)
  ret void
}

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i64 @IWbemServices_CreateInstanceEnum(i32*, i32, i32, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i64 @IEnumWbemClassObject_Next(i32*, i32, i32, i32**, i32*) #1

declare dso_local i64 @IWbemClassObject_Get(i32*, i32, i32, i32*, i64*, i32*) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i32 @VariantClear(i32*) #1

declare dso_local i32 @IEnumWbemClassObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
