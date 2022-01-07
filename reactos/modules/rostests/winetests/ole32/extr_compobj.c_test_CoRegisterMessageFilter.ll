; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoRegisterMessageFilter.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_compobj.c_test_CoRegisterMessageFilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MessageFilter = common dso_local global i32 0, align 4
@CO_E_NOT_SUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [86 x i8] c"CoRegisterMessageFilter should have failed with CO_E_NOT_SUPPORTED instead of 0x%08x\0A\00", align 1
@COINIT_MULTITHREADED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"prev_filter should have been set to %p\0A\00", align 1
@COINIT_APARTMENTTHREADED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"CoRegisterMessageFilter\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"prev_filter should have been set to NULL instead of %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CoRegisterMessageFilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CoRegisterMessageFilter() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32*, align 8
  %3 = call i64 @CoRegisterMessageFilter(i32* @MessageFilter, i32** %2)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @CO_E_NOT_SUPPORTED, align 8
  %6 = icmp eq i64 %4, %5
  %7 = zext i1 %6 to i32
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @ok(i32 %7, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load i32, i32* @COINIT_MULTITHREADED, align 4
  %11 = call i32 @pCoInitializeEx(i32* null, i32 %10)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %12 = call i64 @CoRegisterMessageFilter(i32* @MessageFilter, i32** %2)
  store i64 %12, i64* %1, align 8
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @CO_E_NOT_SUPPORTED, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = icmp eq i32* %19, inttoptr (i64 3735928559 to i32*)
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %2, align 8
  %23 = ptrtoint i32* %22 to i64
  %24 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  %25 = call i32 (...) @CoUninitialize()
  %26 = load i32, i32* @COINIT_APARTMENTTHREADED, align 4
  %27 = call i32 @pCoInitializeEx(i32* null, i32 %26)
  %28 = call i64 @CoRegisterMessageFilter(i32* null, i32** null)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @ok_ole_success(i64 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %31 = call i64 @CoRegisterMessageFilter(i32* null, i32** %2)
  store i64 %31, i64* %1, align 8
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @ok_ole_success(i64 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32*, i32** %2, align 8
  %35 = icmp eq i32* %34, null
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %2, align 8
  %38 = ptrtoint i32* %37 to i64
  %39 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %38)
  %40 = call i64 @CoRegisterMessageFilter(i32* @MessageFilter, i32** %2)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = call i32 @ok_ole_success(i64 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32*, i32** %2, align 8
  %44 = icmp eq i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = load i32*, i32** %2, align 8
  %47 = ptrtoint i32* %46 to i64
  %48 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  %49 = call i64 @CoRegisterMessageFilter(i32* null, i32** null)
  store i64 %49, i64* %1, align 8
  %50 = load i64, i64* %1, align 8
  %51 = call i32 @ok_ole_success(i64 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 (...) @CoUninitialize()
  ret void
}

declare dso_local i64 @CoRegisterMessageFilter(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @pCoInitializeEx(i32*, i32) #1

declare dso_local i32 @CoUninitialize(...) #1

declare dso_local i32 @ok_ole_success(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
