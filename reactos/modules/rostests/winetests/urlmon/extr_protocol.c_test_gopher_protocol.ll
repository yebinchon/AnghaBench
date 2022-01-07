; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_gopher_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_protocol.c_test_gopher_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"Testing gopher protocol...\0A\00", align 1
@CLSID_GopherProtocol = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@REGDB_E_CLASSNOTREG = common dso_local global i64 0, align 8
@CLASS_E_CLASSNOTAVAILABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"CoGetClassObject failed: %08x\0A\00", align 1
@IID_IInternetProtocolInfo = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [77 x i8] c"Could not get IInternetProtocolInfo interface: %08x, expected E_NOINTERFACE\0A\00", align 1
@IID_IClassFactory = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not get IClassFactory interface\0A\00", align 1
@IID_IInternetProtocol = common dso_local global i32 0, align 4
@async_protocol = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Could not get IInternetProtocol: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gopher_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gopher_protocol() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %7 = bitcast i32** %3 to i8**
  %8 = call i64 @CoGetClassObject(i32* @CLSID_GopherProtocol, i32 %6, i32* null, i32* @IID_IUnknown, i8** %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %25, label %12

12:                                               ; preds = %0
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @REGDB_E_CLASSNOTREG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @CLASS_E_CLASSNOTAVAILABLE, align 8
  %19 = icmp eq i64 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ true, %12 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @broken(i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %0
  %26 = phi i1 [ true, %0 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @FAILED(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %74

34:                                               ; preds = %25
  %35 = load i32*, i32** %3, align 8
  %36 = bitcast i32** %1 to i8**
  %37 = call i64 @IUnknown_QueryInterface(i32* %35, i32* @IID_IInternetProtocolInfo, i8** %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @E_NOINTERFACE, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %4, align 8
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = bitcast i32** %2 to i8**
  %46 = call i64 @IUnknown_QueryInterface(i32* %44, i32* @IID_IClassFactory, i8** %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @IUnknown_Release(i32* %52)
  %54 = load i64, i64* %4, align 8
  %55 = call i64 @FAILED(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %34
  br label %74

58:                                               ; preds = %34
  %59 = load i32*, i32** %2, align 8
  %60 = call i64 @IClassFactory_CreateInstance(i32* %59, i32* null, i32* @IID_IInternetProtocol, i8** bitcast (i32* @async_protocol to i8**))
  store i64 %60, i64* %4, align 8
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @IClassFactory_Release(i32* %61)
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @S_OK, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %4, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %67)
  %69 = load i32, i32* @async_protocol, align 4
  %70 = call i32 @test_priority(i32 %69)
  %71 = load i32, i32* @async_protocol, align 4
  %72 = call i32 @IInternetProtocol_Release(i32 %71)
  %73 = call i32 @test_early_abort(i32* @CLSID_GopherProtocol)
  br label %74

74:                                               ; preds = %58, %57, %33
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @IClassFactory_CreateInstance(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IClassFactory_Release(i32*) #1

declare dso_local i32 @test_priority(i32) #1

declare dso_local i32 @IInternetProtocol_Release(i32) #1

declare dso_local i32 @test_early_abort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
