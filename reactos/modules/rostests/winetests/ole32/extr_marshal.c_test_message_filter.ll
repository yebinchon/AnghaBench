; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_message_filter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_message_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_object_data = type { i32, i32*, i32, i32*, i32*, i32* }

@IID_IClassFactory = common dso_local global i32 0, align 4
@Test_ClassFactory = common dso_local global i32 0, align 4
@MSHLFLAGS_NORMAL = common dso_local global i32 0, align 4
@MessageFilter = common dso_local global i32 0, align 4
@cLocks = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ullZero = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@RPC_E_CALL_REJECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [74 x i8] c"Call should have returned RPC_E_CALL_REJECTED, but return 0x%08x instead\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_message_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_message_filter() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.host_object_data, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %8 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %7, i32 0, i32 1
  store i32* @IID_IClassFactory, i32** %9, align 8
  %10 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %7, i32 0, i32 2
  store i32 ptrtoint (i32* @Test_ClassFactory to i32), i32* %10, align 8
  %11 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %7, i32 0, i32 3
  %12 = load i32, i32* @MSHLFLAGS_NORMAL, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %7, i32 0, i32 4
  store i32* @MessageFilter, i32** %15, align 8
  %16 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %7, i32 0, i32 5
  store i32* null, i32** %16, align 8
  store i64 0, i64* @cLocks, align 8
  %17 = load i32, i32* @TRUE, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32**
  %20 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %7, i32 0, i32 0
  %21 = call i64 (i32*, i32**, ...) @CreateStreamOnHGlobal(i32* null, i32** %19, i32* %20)
  store i64 %21, i64* %1, align 8
  %22 = load i64, i64* %1, align 8
  %23 = call i32 @ok_ole_success(i64 %22, i64 (i32*, i32**)* bitcast (i64 (i32*, i32**, ...)* @CreateStreamOnHGlobal to i64 (i32*, i32**)*))
  %24 = call i32 @start_host_object2(%struct.host_object_data* %7, i32* %6)
  store i32 %24, i32* %3, align 4
  %25 = call i32 (...) @ok_more_than_one_lock()
  %26 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ullZero, align 4
  %29 = load i32, i32* @STREAM_SEEK_SET, align 4
  %30 = call i32 @IStream_Seek(i32 %27, i32 %28, i32 %29, i32* null)
  %31 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i32*
  %35 = bitcast i32** %2 to i8**
  %36 = call i64 (i32*, i32**, ...) @CoUnmarshalInterface(i32* %34, i32** bitcast (i32* @IID_IClassFactory to i32**), i8** %35)
  store i64 %36, i64* %1, align 8
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @ok_ole_success(i64 %37, i64 (i32*, i32**)* bitcast (i64 (i32*, i32**, ...)* @CoUnmarshalInterface to i64 (i32*, i32**)*))
  %39 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @IStream_Release(i32 %40)
  %42 = call i32 (...) @ok_more_than_one_lock()
  %43 = load i32*, i32** %2, align 8
  %44 = bitcast i32** %4 to i32*
  %45 = call i64 (i32*, i32**, ...) @IClassFactory_CreateInstance(i32* %43, i32** null, i32* @IID_IUnknown, i32* %44)
  store i64 %45, i64* %1, align 8
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @RPC_E_CALL_REJECTED, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i64, i64* %1, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i32*, i32** %4, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %0
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @IUnknown_Release(i32* %55)
  br label %57

57:                                               ; preds = %54, %0
  store i32* null, i32** %4, align 8
  %58 = call i64 @CoRegisterMessageFilter(i32* @MessageFilter, i32** %5)
  store i64 %58, i64* %1, align 8
  %59 = load i64, i64* %1, align 8
  %60 = call i32 @ok_ole_success(i64 %59, i64 (i32*, i32**)* @CoRegisterMessageFilter)
  %61 = load i32*, i32** %2, align 8
  %62 = bitcast i32** %4 to i32*
  %63 = call i64 (i32*, i32**, ...) @IClassFactory_CreateInstance(i32* %61, i32** null, i32* @IID_IUnknown, i32* %62)
  store i64 %63, i64* %1, align 8
  %64 = load i64, i64* %1, align 8
  %65 = call i32 @ok_ole_success(i64 %64, i64 (i32*, i32**)* bitcast (i64 (i32*, i32**, ...)* @IClassFactory_CreateInstance to i64 (i32*, i32**)*))
  %66 = load i32*, i32** %4, align 8
  %67 = call i32 @IUnknown_Release(i32* %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @IClassFactory_Release(i32* %68)
  %70 = call i32 (...) @ok_no_locks()
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @end_host_object(i32 %71, i32 %72)
  %74 = load i32*, i32** %5, align 8
  %75 = call i64 @CoRegisterMessageFilter(i32* %74, i32** null)
  store i64 %75, i64* %1, align 8
  %76 = load i64, i64* %1, align 8
  %77 = call i32 @ok_ole_success(i64 %76, i64 (i32*, i32**)* @CoRegisterMessageFilter)
  ret void
}

declare dso_local i64 @CreateStreamOnHGlobal(i32*, i32**, ...) #1

declare dso_local i32 @ok_ole_success(i64, i64 (i32*, i32**)*) #1

declare dso_local i32 @start_host_object2(%struct.host_object_data*, i32*) #1

declare dso_local i32 @ok_more_than_one_lock(...) #1

declare dso_local i32 @IStream_Seek(i32, i32, i32, i32*) #1

declare dso_local i64 @CoUnmarshalInterface(i32*, i32**, ...) #1

declare dso_local i32 @IStream_Release(i32) #1

declare dso_local i64 @IClassFactory_CreateInstance(i32*, i32**, ...) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @CoRegisterMessageFilter(i32*, i32**) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

declare dso_local i32 @ok_no_locks(...) #1

declare dso_local i32 @end_host_object(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
