; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_moniker.c_test_pointer_moniker.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_moniker.c_test_pointer_moniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cLocks = common dso_local global i64 0, align 8
@Test_ClassFactory = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [83 x i8] c"CreatePointerMoniker(x, NULL) should have returned E_INVALIDARG instead of 0x%08x\0A\00", align 1
@E_NOTIMPL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"IMoniker_GetDisplayName should have returned E_NOTIMPL instead of 0x%08x\0A\00", align 1
@S_FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"IMoniker_IsDirty should return S_FALSE, not 0x%08x\0A\00", align 1
@IID_IROTData = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [92 x i8] c"IMoniker_QueryInterface(IID_IROTData) should have returned E_NOINTERFACE instead of 0x%08x\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"IMoniker_Save should have returned E_NOTIMPL instead of 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Hash value should have been 0x%08x, instead of 0x%08x\0A\00", align 1
@MKSYS_POINTERMONIKER = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"dwMkSys != MKSYS_POINTERMONIKER, instead was 0x%08x\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [51 x i8] c"IMoniker_IsRunning should return S_OK, not 0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"IMoniker_GetTimeOfLastChange should return E_NOTIMPL, not 0x%08x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [75 x i8] c"IMoniker_BindToObject should have returned E_UNEXPECTED instead of 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [76 x i8] c"IMoniker_BindToStorage should have returned E_UNEXPECTED instead of 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pointer_moniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pointer_moniker() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i64 0, i64* @cLocks, align 8
  %12 = call i64 @CreatePointerMoniker(i32* @Test_ClassFactory, i32** null)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @E_INVALIDARG, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 (i32, i8*, i64, ...) @ok(i32 %16, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i64 @CreatePointerMoniker(i32* @Test_ClassFactory, i32** %2)
  store i64 %19, i64* %1, align 8
  %20 = load i64, i64* %1, align 8
  %21 = call i32 (i64, ...) @ok_ole_success(i64 %20, i64 (i32*, i32**)* @CreatePointerMoniker)
  %22 = load i32*, i32** %2, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %0
  br label %170

25:                                               ; preds = %0
  %26 = call i32 (...) @ok_more_than_one_lock()
  %27 = call i64 @CreateBindCtx(i32* null, i32** %5)
  store i64 %27, i64* %1, align 8
  %28 = load i64, i64* %1, align 8
  %29 = call i32 (i64, ...) @ok_ole_success(i64 %28, i64 (i32*, i32**)* @CreateBindCtx)
  %30 = load i32*, i32** %2, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @IMoniker_GetDisplayName(i32* %30, i32* %31, i32* null, i32* %11)
  store i64 %32, i64* %1, align 8
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @E_NOTIMPL, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %1, align 8
  %38 = call i32 (i32, i8*, i64, ...) @ok(i32 %36, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @IBindCtx_Release(i32* %39)
  %41 = load i32*, i32** %2, align 8
  %42 = call i64 @IMoniker_IsDirty(i32* %41)
  store i64 %42, i64* %1, align 8
  %43 = load i64, i64* %1, align 8
  %44 = load i64, i64* @S_FALSE, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %1, align 8
  %48 = call i32 (i32, i8*, i64, ...) @ok(i32 %46, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = bitcast i32** %10 to i8**
  %51 = call i64 @IMoniker_QueryInterface(i32* %49, i32* @IID_IROTData, i8** %50)
  store i64 %51, i64* %1, align 8
  %52 = load i64, i64* %1, align 8
  %53 = load i64, i64* @E_NOINTERFACE, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %1, align 8
  %57 = call i32 (i32, i8*, i64, ...) @ok(i32 %55, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @TRUE, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i32**
  %61 = call i64 (i32*, i32**, ...) @CreateStreamOnHGlobal(i32* null, i32** %60, i32** %9)
  store i64 %61, i64* %1, align 8
  %62 = load i64, i64* %1, align 8
  %63 = call i32 (i64, ...) @ok_ole_success(i64 %62, i64 (i32*, i32**, ...)* @CreateStreamOnHGlobal)
  %64 = load i32*, i32** %2, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i64 @IMoniker_Save(i32* %64, i32* %65, i32 %66)
  store i64 %67, i64* %1, align 8
  %68 = load i64, i64* %1, align 8
  %69 = load i64, i64* @E_NOTIMPL, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %1, align 8
  %73 = call i32 (i32, i8*, i64, ...) @ok(i32 %71, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @IStream_Release(i32* %74)
  %76 = load i32*, i32** %2, align 8
  %77 = call i64 @IMoniker_Hash(i32* %76, i64* %4)
  store i64 %77, i64* %1, align 8
  %78 = load i64, i64* %1, align 8
  %79 = call i32 (i64, ...) @ok_ole_success(i64 %78, i64 (i32*, i64*)* @IMoniker_Hash)
  %80 = load i64, i64* %4, align 8
  %81 = call i64 @PtrToUlong(i32* @Test_ClassFactory)
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i64 @PtrToUlong(i32* @Test_ClassFactory)
  %85 = load i64, i64* %4, align 8
  %86 = call i32 (i32, i8*, i64, ...) @ok(i32 %83, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i64 %84, i64 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i64 @IMoniker_IsSystemMoniker(i32* %87, i64* %3)
  store i64 %88, i64* %1, align 8
  %89 = load i64, i64* %1, align 8
  %90 = call i32 (i64, ...) @ok_ole_success(i64 %89, i64 (i32*, i64*)* @IMoniker_IsSystemMoniker)
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* @MKSYS_POINTERMONIKER, align 8
  %93 = icmp eq i64 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i64, i64* %3, align 8
  %96 = call i32 (i32, i8*, i64, ...) @ok(i32 %94, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i64 %95)
  %97 = load i32*, i32** %2, align 8
  %98 = call i64 @IMoniker_Inverse(i32* %97, i32** %7)
  store i64 %98, i64* %1, align 8
  %99 = load i64, i64* %1, align 8
  %100 = call i32 (i64, ...) @ok_ole_success(i64 %99, i64 (i32*, i32**)* @IMoniker_Inverse)
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @IMoniker_Release(i32* %101)
  %103 = call i64 @CreateBindCtx(i32* null, i32** %5)
  store i64 %103, i64* %1, align 8
  %104 = load i64, i64* %1, align 8
  %105 = call i32 (i64, ...) @ok_ole_success(i64 %104, i64 (i32*, i32**)* @CreateBindCtx)
  %106 = load i32*, i32** %2, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call i64 @IMoniker_IsRunning(i32* %106, i32* %107, i32* null, i32* null)
  store i64 %108, i64* %1, align 8
  %109 = load i64, i64* %1, align 8
  %110 = load i64, i64* @S_OK, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %1, align 8
  %114 = call i32 (i32, i8*, i64, ...) @ok(i32 %112, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i64 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = call i64 @IMoniker_GetTimeOfLastChange(i32* %115, i32* %116, i32* null, i32* %6)
  store i64 %117, i64* %1, align 8
  %118 = load i64, i64* %1, align 8
  %119 = load i64, i64* @E_NOTIMPL, align 8
  %120 = icmp eq i64 %118, %119
  %121 = zext i1 %120 to i32
  %122 = load i64, i64* %1, align 8
  %123 = call i32 (i32, i8*, i64, ...) @ok(i32 %121, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i64 %122)
  %124 = load i32*, i32** %2, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = bitcast i32** %8 to i8**
  %127 = call i64 @IMoniker_BindToObject(i32* %124, i32* %125, i32* null, i32* @IID_IUnknown, i8** %126)
  store i64 %127, i64* %1, align 8
  %128 = load i64, i64* %1, align 8
  %129 = call i32 (i64, ...) @ok_ole_success(i64 %128, i64 (i32*, i32*, i32*, i32*, i8**)* @IMoniker_BindToObject)
  %130 = load i32*, i32** %8, align 8
  %131 = call i32 @IUnknown_Release(i32* %130)
  %132 = load i32*, i32** %2, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = bitcast i32** %8 to i8**
  %135 = call i64 @IMoniker_BindToStorage(i32* %132, i32* %133, i32* null, i32* @IID_IUnknown, i8** %134)
  store i64 %135, i64* %1, align 8
  %136 = load i64, i64* %1, align 8
  %137 = call i32 (i64, ...) @ok_ole_success(i64 %136, i64 (i32*, i32*, i32*, i32*, i8**)* @IMoniker_BindToStorage)
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @IUnknown_Release(i32* %138)
  %140 = load i32*, i32** %2, align 8
  %141 = call i32 @IMoniker_Release(i32* %140)
  %142 = call i32 (...) @ok_no_locks()
  %143 = call i64 @CreatePointerMoniker(i32* null, i32** %2)
  store i64 %143, i64* %1, align 8
  %144 = load i64, i64* %1, align 8
  %145 = call i32 (i64, ...) @ok_ole_success(i64 %144, i64 (i32*, i32**)* @CreatePointerMoniker)
  %146 = load i32*, i32** %2, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = bitcast i32** %8 to i8**
  %149 = call i64 @IMoniker_BindToObject(i32* %146, i32* %147, i32* null, i32* @IID_IUnknown, i8** %148)
  store i64 %149, i64* %1, align 8
  %150 = load i64, i64* %1, align 8
  %151 = load i64, i64* @E_UNEXPECTED, align 8
  %152 = icmp eq i64 %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i64, i64* %1, align 8
  %155 = call i32 (i32, i8*, i64, ...) @ok(i32 %153, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i64 %154)
  %156 = load i32*, i32** %2, align 8
  %157 = load i32*, i32** %5, align 8
  %158 = bitcast i32** %8 to i8**
  %159 = call i64 @IMoniker_BindToStorage(i32* %156, i32* %157, i32* null, i32* @IID_IUnknown, i8** %158)
  store i64 %159, i64* %1, align 8
  %160 = load i64, i64* %1, align 8
  %161 = load i64, i64* @E_UNEXPECTED, align 8
  %162 = icmp eq i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = load i64, i64* %1, align 8
  %165 = call i32 (i32, i8*, i64, ...) @ok(i32 %163, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.10, i64 0, i64 0), i64 %164)
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @IBindCtx_Release(i32* %166)
  %168 = load i32*, i32** %2, align 8
  %169 = call i32 @IMoniker_Release(i32* %168)
  br label %170

170:                                              ; preds = %25, %24
  ret void
}

declare dso_local i64 @CreatePointerMoniker(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @ok_ole_success(i64, ...) #1

declare dso_local i32 @ok_more_than_one_lock(...) #1

declare dso_local i64 @CreateBindCtx(i32*, i32**) #1

declare dso_local i64 @IMoniker_GetDisplayName(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i64 @IMoniker_IsDirty(i32*) #1

declare dso_local i64 @IMoniker_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @CreateStreamOnHGlobal(i32*, i32**, ...) #1

declare dso_local i64 @IMoniker_Save(i32*, i32*, i32) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i64 @IMoniker_Hash(i32*, i64*) #1

declare dso_local i64 @PtrToUlong(i32*) #1

declare dso_local i64 @IMoniker_IsSystemMoniker(i32*, i64*) #1

declare dso_local i64 @IMoniker_Inverse(i32*, i32**) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i64 @IMoniker_IsRunning(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @IMoniker_GetTimeOfLastChange(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @IMoniker_BindToObject(i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @IMoniker_BindToStorage(i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @ok_no_locks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
