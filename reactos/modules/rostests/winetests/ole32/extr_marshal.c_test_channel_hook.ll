; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_channel_hook.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_channel_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_object_data = type { i32, i32*, i32, i32*, i32*, i32* }

@IID_IClassFactory = common dso_local global i32 0, align 4
@Test_ClassFactory = common dso_local global i32 0, align 4
@MSHLFLAGS_NORMAL = common dso_local global i32 0, align 4
@MessageFilter = common dso_local global i32 0, align 4
@EXTENTID_WineTest = common dso_local global i32 0, align 4
@TestChannelHook = common dso_local global i32 0, align 4
@cLocks = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@server_tid = common dso_local global i32 0, align 4
@ullZero = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@method = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_channel_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_channel_hook() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.host_object_data, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %3, align 8
  %7 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %6, i32 0, i32 1
  store i32* @IID_IClassFactory, i32** %8, align 8
  %9 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %6, i32 0, i32 2
  store i32 ptrtoint (i32* @Test_ClassFactory to i32), i32* %9, align 8
  %10 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %6, i32 0, i32 3
  %11 = load i32, i32* @MSHLFLAGS_NORMAL, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %6, i32 0, i32 4
  store i32* @MessageFilter, i32** %14, align 8
  %15 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %6, i32 0, i32 5
  store i32* null, i32** %15, align 8
  %16 = call i32 @CoRegisterChannelHook(i32* @EXTENTID_WineTest, i32* @TestChannelHook)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ok_ole_success(i32 %17, i32 (i32*, i32*)* @CoRegisterChannelHook)
  %19 = call i32 @CoRegisterMessageFilter(i32* @MessageFilter, i32* null)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ok_ole_success(i32 %20, i32 (i32*, i32*)* @CoRegisterMessageFilter)
  store i64 0, i64* @cLocks, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i32*
  %25 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %6, i32 0, i32 0
  %26 = call i32 (i32*, i32*, ...) @CreateStreamOnHGlobal(i32* null, i32* %24, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @ok_ole_success(i32 %27, i32 (i32*, i32*)* bitcast (i32 (i32*, i32*, ...)* @CreateStreamOnHGlobal to i32 (i32*, i32*)*))
  %29 = call i32 @start_host_object2(%struct.host_object_data* %6, i32* %4)
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  store i32 %30, i32* @server_tid, align 4
  %31 = call i32 (...) @ok_more_than_one_lock()
  %32 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ullZero, align 4
  %35 = load i32, i32* @STREAM_SEEK_SET, align 4
  %36 = call i32 @IStream_Seek(i32 %33, i32 %34, i32 %35, i32* null)
  %37 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  %41 = bitcast i32** %1 to i8**
  %42 = call i32 (i32*, i32*, ...) @CoUnmarshalInterface(i32* %40, i32* @IID_IClassFactory, i8** %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @ok_ole_success(i32 %43, i32 (i32*, i32*)* bitcast (i32 (i32*, i32*, ...)* @CoUnmarshalInterface to i32 (i32*, i32*)*))
  %45 = getelementptr inbounds %struct.host_object_data, %struct.host_object_data* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @IStream_Release(i32 %46)
  %48 = call i32 (...) @ok_more_than_one_lock()
  store i32 3, i32* @method, align 4
  %49 = load i32*, i32** %1, align 8
  %50 = bitcast i32** %3 to i32*
  %51 = call i32 (i32*, i32*, ...) @IClassFactory_CreateInstance(i32* %49, i32* null, i32* @IID_IUnknown, i32* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ok_ole_success(i32 %52, i32 (i32*, i32*)* bitcast (i32 (i32*, i32*, ...)* @IClassFactory_CreateInstance to i32 (i32*, i32*)*))
  store i32 5, i32* @method, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @IUnknown_Release(i32* %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i32 @IClassFactory_Release(i32* %56)
  %58 = call i32 (...) @ok_no_locks()
  %59 = load i32, i32* %2, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @end_host_object(i32 %59, i32 %60)
  %62 = call i32 @CoRegisterMessageFilter(i32* null, i32* null)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @ok_ole_success(i32 %63, i32 (i32*, i32*)* @CoRegisterMessageFilter)
  ret void
}

declare dso_local i32 @CoRegisterChannelHook(i32*, i32*) #1

declare dso_local i32 @ok_ole_success(i32, i32 (i32*, i32*)*) #1

declare dso_local i32 @CoRegisterMessageFilter(i32*, i32*) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32*, i32*, ...) #1

declare dso_local i32 @start_host_object2(%struct.host_object_data*, i32*) #1

declare dso_local i32 @ok_more_than_one_lock(...) #1

declare dso_local i32 @IStream_Seek(i32, i32, i32, i32*) #1

declare dso_local i32 @CoUnmarshalInterface(i32*, i32*, ...) #1

declare dso_local i32 @IStream_Release(i32) #1

declare dso_local i32 @IClassFactory_CreateInstance(i32*, i32*, ...) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

declare dso_local i32 @ok_no_locks(...) #1

declare dso_local i32 @end_host_object(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
