; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscoree/extr_debugging.c_test_createDebugger.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mscoree/extr_debugging.c_test_createDebugger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v2_0 = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"CreateDebuggingInterfaceFromVersion returned %08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@IID_ICorDebug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"expected S_OK got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"expected E_INVALIDARG got %08x\0A\00", align 1
@ManagedCallback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c".NET 2.0 or mono not installed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_createDebugger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_createDebugger() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @v2_0, align 4
  %5 = call i64 @pCreateDebuggingInterfaceFromVersion(i32 0, i32 %4, i32** %2)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @E_INVALIDARG, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* @v2_0, align 4
  %13 = call i64 @pCreateDebuggingInterfaceFromVersion(i32 1, i32 %12, i32** %2)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @E_INVALIDARG, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @v2_0, align 4
  %21 = call i64 @pCreateDebuggingInterfaceFromVersion(i32 2, i32 %20, i32** %2)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @E_INVALIDARG, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @ok(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @v2_0, align 4
  %29 = call i64 @pCreateDebuggingInterfaceFromVersion(i32 4, i32 %28, i32** %2)
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %1, align 8
  %31 = load i64, i64* @E_INVALIDARG, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @ok(i32 %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @v2_0, align 4
  %37 = call i64 @pCreateDebuggingInterfaceFromVersion(i32 3, i32 %36, i32** null)
  store i64 %37, i64* %1, align 8
  %38 = load i64, i64* %1, align 8
  %39 = load i64, i64* @E_INVALIDARG, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* @v2_0, align 4
  %45 = call i64 @pCreateDebuggingInterfaceFromVersion(i32 3, i32 %44, i32** %2)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %99

49:                                               ; preds = %0
  %50 = load i32*, i32** %2, align 8
  %51 = bitcast i32** %3 to i8**
  %52 = call i64 @IUnknown_QueryInterface(i32* %50, i32* @IID_ICorDebug, i8** %51)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %1, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %1, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %49
  %63 = load i32*, i32** %3, align 8
  %64 = call i64 @ICorDebug_Initialize(i32* %63)
  store i64 %64, i64* %1, align 8
  %65 = load i64, i64* %1, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %1, align 8
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* %1, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %62
  %75 = load i32*, i32** %3, align 8
  %76 = call i64 @ICorDebug_SetManagedHandler(i32* %75, i32* null)
  store i64 %76, i64* %1, align 8
  %77 = load i64, i64* %1, align 8
  %78 = load i64, i64* @E_INVALIDARG, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %1, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i64 @ICorDebug_SetManagedHandler(i32* %83, i32* @ManagedCallback)
  store i64 %84, i64* %1, align 8
  %85 = load i64, i64* %1, align 8
  %86 = load i64, i64* @S_OK, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = load i64, i64* %1, align 8
  %90 = call i32 @ok(i32 %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @check_process_enum(i32* %91, i32 0)
  br label %93

93:                                               ; preds = %74, %62
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @ICorDebug_Release(i32* %94)
  br label %96

96:                                               ; preds = %93, %49
  %97 = load i32*, i32** %2, align 8
  %98 = call i32 @IUnknown_Release(i32* %97)
  br label %101

99:                                               ; preds = %0
  %100 = call i32 @skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96
  ret void
}

declare dso_local i64 @pCreateDebuggingInterfaceFromVersion(i32, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @ICorDebug_Initialize(i32*) #1

declare dso_local i64 @ICorDebug_SetManagedHandler(i32*, i32*) #1

declare dso_local i32 @check_process_enum(i32*, i32) #1

declare dso_local i32 @ICorDebug_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @skip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
