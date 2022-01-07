; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoGetCallContext.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoGetCallContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }

@TestCallContext_Vtbl = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@RPC_E_CALL_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Expected RPC_E_CALL_COMPLETE, got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"CoSwitchCallContext\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"expected NULL, got %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Expected refcount 2, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CoGetCallContext\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"expected %p, got %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Expected refcount 3, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoGetCallContext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoGetCallContext() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = call i32 @CoInitialize(i32* null)
  %6 = call i32 (...) @GetProcessHeap()
  %7 = call %struct.TYPE_8__* @HeapAlloc(i32 %6, i32 0, i32 16)
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %4, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i32* @TestCallContext_Vtbl, i32** %10, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = bitcast %struct.TYPE_9__** %3 to i8**
  %14 = call i32 @CoGetCallContext(i32* @IID_IUnknown, i8** %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @RPC_E_CALL_COMPLETE, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %1, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.TYPE_9__* inttoptr (i64 3735928559 to %struct.TYPE_9__*), %struct.TYPE_9__** %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = call i32 @pCoSwitchCallContext(%struct.TYPE_9__* %22, %struct.TYPE_9__** %3)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @ok_ole_success(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = icmp eq %struct.TYPE_9__* %26, null
  %28 = zext i1 %27 to i32
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = call i32 @IUnknown_AddRef(%struct.TYPE_9__* %32)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* %2, align 4
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = call i32 @IUnknown_Release(%struct.TYPE_9__* %40)
  store %struct.TYPE_9__* inttoptr (i64 3735928559 to %struct.TYPE_9__*), %struct.TYPE_9__** %3, align 8
  %42 = bitcast %struct.TYPE_9__** %3 to i8**
  %43 = call i32 @CoGetCallContext(i32* @IID_IUnknown, i8** %42)
  store i32 %43, i32* %1, align 4
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @ok_ole_success(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = icmp eq %struct.TYPE_9__* %46, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_9__* %52, %struct.TYPE_9__* %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = call i32 @IUnknown_AddRef(%struct.TYPE_9__* %56)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp eq i32 %58, 3
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %2, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = call i32 @IUnknown_Release(%struct.TYPE_9__* %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = call i32 @IUnknown_Release(%struct.TYPE_9__* %66)
  store %struct.TYPE_9__* inttoptr (i64 3735928559 to %struct.TYPE_9__*), %struct.TYPE_9__** %3, align 8
  %68 = call i32 @pCoSwitchCallContext(%struct.TYPE_9__* null, %struct.TYPE_9__** %3)
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @ok_ole_success(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = icmp eq %struct.TYPE_9__* %71, %73
  %75 = zext i1 %74 to i32
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_9__* %77, %struct.TYPE_9__* %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = call i32 @IUnknown_AddRef(%struct.TYPE_9__* %81)
  store i32 %82, i32* %2, align 4
  %83 = load i32, i32* %2, align 4
  %84 = icmp eq i32 %83, 2
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %2, align 4
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = call i32 @IUnknown_Release(%struct.TYPE_9__* %89)
  %91 = bitcast %struct.TYPE_9__** %3 to i8**
  %92 = call i32 @CoGetCallContext(i32* @IID_IUnknown, i8** %91)
  store i32 %92, i32* %1, align 4
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* @RPC_E_CALL_COMPLETE, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %1, align 4
  %98 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = call i32 @IUnknown_Release(%struct.TYPE_9__* %100)
  %102 = call i32 (...) @CoUninitialize()
  ret void
}

declare dso_local i32 @CoInitialize(i32*) #1

declare dso_local %struct.TYPE_8__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @CoGetCallContext(i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pCoSwitchCallContext(%struct.TYPE_9__*, %struct.TYPE_9__**) #1

declare dso_local i32 @ok_ole_success(i32, i8*) #1

declare dso_local i32 @IUnknown_AddRef(%struct.TYPE_9__*) #1

declare dso_local i32 @IUnknown_Release(%struct.TYPE_9__*) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
