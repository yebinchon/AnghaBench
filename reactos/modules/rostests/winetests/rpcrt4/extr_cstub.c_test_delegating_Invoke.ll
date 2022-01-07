; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_test_delegating_Invoke.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/rpcrt4/extr_cstub.c_test_delegating_Invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }

@delegating_invoke_test_obj_vtbl = common dso_local global i32 0, align 4
@IID_if2 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@delegating_invoke_test_rpc_chan_vtbl = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@NDR_LOCAL_DATA_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ret %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"buf[0] %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"buf[1] %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_delegating_Invoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_delegating_Invoke(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__, align 8
  store i32* %0, i32** %2, align 8
  store i32* @delegating_invoke_test_obj_vtbl, i32** %3, align 8
  %10 = bitcast i32** %3 to i32*
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* @S_OK, align 8
  %14 = call i32* @create_stub(i32* %11, i32* @IID_if2, i32* %12, i64 %13)
  store i32* %14, i32** %5, align 8
  store i32* @delegating_invoke_test_rpc_chan_vtbl, i32** %6, align 8
  %15 = bitcast i32** %6 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load i64, i64* @E_FAIL, align 8
  store i64 %16, i64* %8, align 8
  %17 = call i32 @memset(%struct.TYPE_4__* %9, i32 0, i32 24)
  %18 = load i32, i32* @NDR_LOCAL_DATA_REPRESENTATION, align 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 3, i32* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @IRpcStubBuffer_Invoke(i32* %21, %struct.TYPE_4__* %9, i32* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %8, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @S_OK, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 11259375
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* @S_OK, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %34, %1
  %62 = call i32 (...) @GetProcessHeap()
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @HeapFree(i32 %62, i32 0, i64 %64)
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @IRpcStubBuffer_Release(i32* %66)
  ret void
}

declare dso_local i32* @create_stub(i32*, i32*, i32*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @IRpcStubBuffer_Invoke(i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @IRpcStubBuffer_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
