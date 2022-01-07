; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_PhysicalMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wbemprox/extr_query.c_test_Win32_PhysicalMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_Win32_PhysicalMemory.capacityW = internal constant [9 x i8] c"Capacity\00", align 1
@test_Win32_PhysicalMemory.memorytypeW = internal constant [11 x i8] c"MemoryType\00", align 1
@test_Win32_PhysicalMemory.queryW = internal constant [35 x i8] c"SELECT * FROM Win32_PhysicalMemory\00", align 16
@wqlW = common dso_local global i8* null, align 8
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Win32_PhysicalMemory not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to get capacity %08x\0A\00", align 1
@VT_BSTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"unexpected variant type 0x%x\0A\00", align 1
@CIM_UINT64 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"unexpected type 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"capacity %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to get memory type %08x\0A\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@CIM_UINT16 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"memorytype %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_Win32_PhysicalMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Win32_PhysicalMemory(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i8*, i8** @wqlW, align 8
  %12 = call i32 @SysAllocString(i8* %11)
  store i32 %12, i32* %3, align 4
  %13 = call i32 @SysAllocString(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @test_Win32_PhysicalMemory.queryW, i64 0, i64 0))
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
  %22 = call i32 @win_skip(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %93

23:                                               ; preds = %1
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @IEnumWbemClassObject_Next(i32* %24, i32 10000, i32 1, i32** %6, i64* %10)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @S_OK, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* %10, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %86

34:                                               ; preds = %23
  store i32 -559038737, i32* %8, align 4
  %35 = call i32 @VariantInit(i32* %7)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @IWbemClassObject_Get(i32* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_Win32_PhysicalMemory.capacityW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @S_OK, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = call i32 @V_VT(i32* %7)
  %45 = load i32, i32* @VT_BSTR, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @V_VT(i32* %7)
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @CIM_UINT64, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = call i32 @V_BSTR(i32* %7)
  %57 = call i32 @wine_dbgstr_w(i32 %56)
  %58 = call i32 @trace(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = call i32 @VariantClear(i32* %7)
  store i32 -559038737, i32* %8, align 4
  %60 = call i32 @VariantInit(i32* %7)
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @IWbemClassObject_Get(i32* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @test_Win32_PhysicalMemory.memorytypeW, i64 0, i64 0), i32 0, i32* %7, i32* %8, i32* null)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @S_OK, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = call i32 @V_VT(i32* %7)
  %70 = load i32, i32* @VT_I4, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @V_VT(i32* %7)
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @CIM_UINT16, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = call i32 @V_I4(i32* %7)
  %82 = call i32 @trace(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  %83 = call i32 @VariantClear(i32* %7)
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @IWbemClassObject_Release(i32* %84)
  br label %86

86:                                               ; preds = %34, %23
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @IEnumWbemClassObject_Release(i32* %87)
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @SysFreeString(i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @SysFreeString(i32 %91)
  br label %93

93:                                               ; preds = %86, %21
  ret void
}

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i32 @IWbemServices_ExecQuery(i32*, i32, i32, i32, i32*, i32**) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IEnumWbemClassObject_Next(i32*, i32, i32, i32**, i64*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @VariantInit(i32*) #1

declare dso_local i32 @IWbemClassObject_Get(i32*, i8*, i32, i32*, i32*, i32*) #1

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
