; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_ClientId.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msctf/extr_inputprocessor.c_test_ClientId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_tm = common dso_local global i32 0, align 4
@IID_ITfClientId = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to acquire ITfClientId interface\0A\00", align 1
@GUID_NULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"GetClientId failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Id's for GUID_NULL do not match\0A\00", align 1
@CLSID_FakeService = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Id matches GUID_NULL\0A\00", align 1
@tid = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [43 x i8] c"Id for CLSID_FakeService not matching tid\0A\00", align 1
@cid = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Id for CLSID_FakeService matching cid\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Id for random guid matching tid\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Id for random guid matching cid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ClientId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ClientId() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @g_tm, align 4
  %7 = bitcast i32** %1 to i32*
  %8 = call i32 @ITfThreadMgr_QueryInterface(i32 %6, i32* @IID_ITfClientId, i32* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @SUCCEEDED(i32 %9)
  %11 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @CoCreateGuid(i32* %5)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @ITfClientId_GetClientId(i32* %13, i32* @GUID_NULL, i64* %2)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @SUCCEEDED(i32 %15)
  %17 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @ITfClientId_GetClientId(i32* %18, i32* @GUID_NULL, i64* %3)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @SUCCEEDED(i32 %20)
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i64, i64* %2, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32*, i32** %1, align 8
  %29 = call i32 @ITfClientId_GetClientId(i32* %28, i32* @CLSID_FakeService, i64* %3)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @SUCCEEDED(i32 %30)
  %32 = call i32 @ok(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %2, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ok(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* @tid, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @cid, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @ITfClientId_GetClientId(i32* %48, i32* %5, i64* %3)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @SUCCEEDED(i32 %50)
  %52 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i64, i64* %3, align 8
  %54 = load i64, i64* %2, align 8
  %55 = icmp ne i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i64, i64* %3, align 8
  %59 = load i64, i64* @tid, align 8
  %60 = icmp ne i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ok(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* @cid, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %68 = load i32*, i32** %1, align 8
  %69 = call i32 @ITfClientId_Release(i32* %68)
  ret void
}

declare dso_local i32 @ITfThreadMgr_QueryInterface(i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @SUCCEEDED(i32) #1

declare dso_local i32 @CoCreateGuid(i32*) #1

declare dso_local i32 @ITfClientId_GetClientId(i32*, i32*, i64*) #1

declare dso_local i32 @ITfClientId_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
