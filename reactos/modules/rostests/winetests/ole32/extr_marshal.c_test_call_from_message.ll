; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_call_from_message.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_call_from_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"WineCOMTest\00", align 1
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@hwnd_app = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Window creation failed\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@TestMsg_ClassFactory = common dso_local global i32 0, align 4
@MSHLFLAGS_NORMAL = common dso_local global i32 0, align 4
@ullZero = common dso_local global i32 0, align 4
@STREAM_SEEK_SET = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_call_from_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_call_from_message() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = load i32, i32* @CW_USEDEFAULT, align 4
  %9 = load i32, i32* @CW_USEDEFAULT, align 4
  %10 = load i32, i32* @CW_USEDEFAULT, align 4
  %11 = load i32, i32* @CW_USEDEFAULT, align 4
  %12 = call i32* @CreateWindowA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 %8, i32 %9, i32 %10, i32 %11, i32* null, i32* null, i32* null, i32 0)
  store i32* %12, i32** @hwnd_app, align 8
  %13 = load i32*, i32** @hwnd_app, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ok(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @TRUE, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32*
  %20 = bitcast i32** %2 to i32*
  %21 = call i32 (i32*, i32*, i32*, ...) @CreateStreamOnHGlobal(i32* null, i32* %19, i32* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @ok_ole_success(i32 %22, i32 (i32*, i32*, i32*, i8**)* bitcast (i32 (i32*, i32*, i32*, ...)* @CreateStreamOnHGlobal to i32 (i32*, i32*, i32*, i8**)*))
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @MSHLFLAGS_NORMAL, align 4
  %26 = call i32 @start_host_object(i32* %24, i32* @IID_IClassFactory, i32* @TestMsg_ClassFactory, i32 %25, i32* %6)
  store i32 %26, i32* %5, align 4
  %27 = call i32 (...) @ok_more_than_one_lock()
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* @ullZero, align 4
  %30 = load i32, i32* @STREAM_SEEK_SET, align 4
  %31 = call i32 @IStream_Seek(i32* %28, i32 %29, i32 %30, i32* null)
  %32 = load i32*, i32** %2, align 8
  %33 = bitcast i32** %4 to i8**
  %34 = call i32 @CoUnmarshalInterface(i32* %32, i32* @IID_IClassFactory, i8** %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ok_ole_success(i32 %35, i32 (i32*, i32*, i32*, i8**)* @CoReleaseMarshalData)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @IStream_Release(i32* %37)
  %39 = call i32 (...) @ok_more_than_one_lock()
  %40 = load i32*, i32** %4, align 8
  %41 = bitcast i32** %7 to i8**
  %42 = call i32 @IClassFactory_CreateInstance(i32* %40, i32* null, i32* @IID_IUnknown, i8** %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @ok_ole_success(i32 %43, i32 (i32*, i32*, i32*, i8**)* @IClassFactory_CreateInstance)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @IClassFactory_Release(i32* %45)
  %47 = call i32 (...) @ok_no_locks()
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @end_host_object(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %54, %0
  %52 = call i64 @GetMessageA(i32* %1, i32* null, i32 0, i32 0)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = call i32 @TranslateMessage(i32* %1)
  %56 = call i32 @DispatchMessageA(i32* %1)
  br label %51

57:                                               ; preds = %51
  %58 = load i32*, i32** @hwnd_app, align 8
  %59 = call i32 @DestroyWindow(i32* %58)
  ret void
}

declare dso_local i32* @CreateWindowA(i8*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @CreateStreamOnHGlobal(i32*, i32*, i32*, ...) #1

declare dso_local i32 @ok_ole_success(i32, i32 (i32*, i32*, i32*, i8**)*) #1

declare dso_local i32 @start_host_object(i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ok_more_than_one_lock(...) #1

declare dso_local i32 @IStream_Seek(i32*, i32, i32, i32*) #1

declare dso_local i32 @CoUnmarshalInterface(i32*, i32*, i8**) #1

declare dso_local i32 @CoReleaseMarshalData(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IStream_Release(i32*) #1

declare dso_local i32 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

declare dso_local i32 @ok_no_locks(...) #1

declare dso_local i32 @end_host_object(i32, i32) #1

declare dso_local i64 @GetMessageA(i32*, i32*, i32, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessageA(i32*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
