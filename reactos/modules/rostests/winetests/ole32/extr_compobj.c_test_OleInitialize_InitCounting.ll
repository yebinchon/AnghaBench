; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_OleInitialize_InitCounting.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_OleInitialize_InitCounting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_InternetZoneManager = common dso_local global i32 0, align 4
@COINIT_MULTITHREADED = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"CoInitializeEx(COINIT_MULTITHREADED) failed with error 0x%08x\0A\00", align 1
@RPC_E_CHANGED_MODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"OleInitialize should have returned 0x%08x instead of 0x%08x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"CoCreateInstance should have returned 0x%08x instead of 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"CoInitialize() failed with error 0x%08x\0A\00", align 1
@CO_E_NOTINITIALIZED = common dso_local global i64 0, align 8
@S_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_OleInitialize_InitCounting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_OleInitialize_InitCounting() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* @CLSID_InternetZoneManager, i32** %3, align 8
  %4 = load i32, i32* @COINIT_MULTITHREADED, align 4
  %5 = call i64 @pCoInitializeEx(i32* null, i32 %4)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 (i32, i8*, i64, ...) @ok(i32 %9, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = call i64 @OleInitialize(i32* null)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @RPC_E_CHANGED_MODE, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* @RPC_E_CHANGED_MODE, align 8
  %18 = load i64, i64* %1, align 8
  %19 = call i32 (i32, i8*, i64, ...) @ok(i32 %16, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %17, i64 %18)
  %20 = call i32 (...) @OleUninitialize()
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = bitcast i32** %2 to i8**
  %23 = call i64 @CoCreateInstance(i32* %21, i32* null, i32 23, i32* @IID_IUnknown, i8** %22)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* @S_OK, align 8
  %29 = load i64, i64* %1, align 8
  %30 = call i32 (i32, i8*, i64, ...) @ok(i32 %27, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %0
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 @IUnknown_Release(i32* %34)
  br label %36

36:                                               ; preds = %33, %0
  %37 = call i32 (...) @CoUninitialize()
  %38 = call i64 @CoInitialize(i32* null)
  store i64 %38, i64* %1, align 8
  %39 = load i64, i64* %1, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %1, align 8
  %44 = call i32 (i32, i8*, i64, ...) @ok(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  %45 = call i64 @OleInitialize(i32* null)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @S_OK, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* @S_OK, align 8
  %51 = load i64, i64* %1, align 8
  %52 = call i32 (i32, i8*, i64, ...) @ok(i32 %49, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 %51)
  %53 = call i32 (...) @OleUninitialize()
  %54 = call i32 (...) @OleUninitialize()
  %55 = call i32 (...) @OleUninitialize()
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = bitcast i32** %2 to i8**
  %58 = call i64 @CoCreateInstance(i32* %56, i32* null, i32 23, i32* @IID_IUnknown, i8** %57)
  store i64 %58, i64* %1, align 8
  %59 = load i64, i64* %1, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* @S_OK, align 8
  %64 = load i64, i64* %1, align 8
  %65 = call i32 (i32, i8*, i64, ...) @ok(i32 %62, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %36
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @IUnknown_Release(i32* %69)
  br label %71

71:                                               ; preds = %68, %36
  %72 = call i32 (...) @CoUninitialize()
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %73 = load i32*, i32** %3, align 8
  %74 = bitcast i32** %2 to i8**
  %75 = call i64 @CoCreateInstance(i32* %73, i32* null, i32 23, i32* @IID_IUnknown, i8** %74)
  store i64 %75, i64* %1, align 8
  %76 = load i64, i64* %1, align 8
  %77 = load i64, i64* @CO_E_NOTINITIALIZED, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* @CO_E_NOTINITIALIZED, align 8
  %81 = load i64, i64* %1, align 8
  %82 = call i32 (i32, i8*, i64, ...) @ok(i32 %79, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %80, i64 %81)
  %83 = load i32*, i32** %2, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @IUnknown_Release(i32* %86)
  br label %88

88:                                               ; preds = %85, %71
  %89 = call i64 @CoInitialize(i32* null)
  store i64 %89, i64* %1, align 8
  %90 = load i64, i64* %1, align 8
  %91 = load i64, i64* @S_OK, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i64, i64* %1, align 8
  %95 = call i32 (i32, i8*, i64, ...) @ok(i32 %93, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %94)
  %96 = call i64 @OleInitialize(i32* null)
  store i64 %96, i64* %1, align 8
  %97 = load i64, i64* %1, align 8
  %98 = load i64, i64* @S_OK, align 8
  %99 = icmp eq i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i64, i64* @S_OK, align 8
  %102 = load i64, i64* %1, align 8
  %103 = call i32 (i32, i8*, i64, ...) @ok(i32 %100, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %101, i64 %102)
  %104 = call i32 (...) @CoUninitialize()
  %105 = call i32 (...) @CoUninitialize()
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %106 = load i32*, i32** %3, align 8
  %107 = bitcast i32** %2 to i8**
  %108 = call i64 @CoCreateInstance(i32* %106, i32* null, i32 23, i32* @IID_IUnknown, i8** %107)
  store i64 %108, i64* %1, align 8
  %109 = load i64, i64* %1, align 8
  %110 = load i64, i64* @CO_E_NOTINITIALIZED, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* @CO_E_NOTINITIALIZED, align 8
  %114 = load i64, i64* %1, align 8
  %115 = call i32 (i32, i8*, i64, ...) @ok(i32 %112, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %113, i64 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %88
  %119 = load i32*, i32** %2, align 8
  %120 = call i32 @IUnknown_Release(i32* %119)
  br label %121

121:                                              ; preds = %118, %88
  %122 = call i64 @OleInitialize(i32* null)
  store i64 %122, i64* %1, align 8
  %123 = load i64, i64* %1, align 8
  %124 = load i64, i64* @S_FALSE, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* @S_FALSE, align 8
  %128 = load i64, i64* %1, align 8
  %129 = call i32 (i32, i8*, i64, ...) @ok(i32 %126, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i64 %127, i64 %128)
  %130 = call i32 (...) @OleUninitialize()
  ret void
}

declare dso_local i64 @pCoInitializeEx(i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @OleInitialize(i32*) #1

declare dso_local i32 @OleUninitialize(...) #1

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @CoUninitialize(...) #1

declare dso_local i64 @CoInitialize(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
