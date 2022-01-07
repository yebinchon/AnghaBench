; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeole.c_test_mhtml_protocol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/inetcomm/extr_mimeole.c_test_mhtml_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@outer_vtbl = common dso_local global i32 0, align 4
@__const.test_mhtml_protocol.outer = private unnamed_addr constant %struct.TYPE_5__ { i32* @outer_vtbl }, align 8
@CLSID_IMimeHtmlProtocol = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"CoGetClassObject failed: %08x\0A\00", align 1
@IID_IInternetProtocolInfo = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"IInternetProtocolInfo supported\0A\00", align 1
@IID_IClassFactory = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Could not get IClassFactory iface: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"CreateInstance returned: %08x\0A\00", align 1
@IID_IInternetProtocol = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Could not get IInternetProtocol iface: %08x\0A\00", align 1
@CLASS_E_NOAGGREGATION = common dso_local global i64 0, align 8
@broken_mhtml_resolver = common dso_local global i32 0, align 4
@binding_tests = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_mhtml_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_mhtml_protocol() #0 {
  %1 = alloca %struct.TYPE_5__, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_5__* @__const.test_mhtml_protocol.outer to i8*), i64 8, i1 false)
  %8 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %9 = bitcast %struct.TYPE_5__** %3 to i8**
  %10 = call i64 @CoGetClassObject(i32* @CLSID_IMimeHtmlProtocol, i32 %8, i32* null, i32* @IID_IUnknown, i8** %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %6, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = bitcast %struct.TYPE_5__** %4 to i8**
  %19 = call i64 @IUnknown_QueryInterface(%struct.TYPE_5__* %17, i32* @IID_IInternetProtocolInfo, i8** %18)
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @E_NOINTERFACE, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = bitcast i32** %2 to i8**
  %27 = call i64 @IUnknown_QueryInterface(%struct.TYPE_5__* %25, i32* @IID_IClassFactory, i8** %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @S_OK, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %6, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = call i32 @IUnknown_Release(%struct.TYPE_5__* %34)
  %36 = load i32*, i32** %2, align 8
  %37 = bitcast %struct.TYPE_5__** %3 to i8**
  %38 = call i64 @IClassFactory_CreateInstance(i32* %36, %struct.TYPE_5__* %1, i32* @IID_IUnknown, i8** %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %6, align 8
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = bitcast %struct.TYPE_5__** %4 to i8**
  %47 = call i64 @IUnknown_QueryInterface(%struct.TYPE_5__* %45, i32* @IID_IInternetProtocol, i8** %46)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %6, align 8
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i64 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %55 = call i32 @IUnknown_Release(%struct.TYPE_5__* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = call i32 @IUnknown_Release(%struct.TYPE_5__* %56)
  %58 = load i32*, i32** %2, align 8
  %59 = bitcast %struct.TYPE_5__** %4 to i8**
  %60 = call i64 @IClassFactory_CreateInstance(i32* %58, %struct.TYPE_5__* inttoptr (i64 3735928559 to %struct.TYPE_5__*), i32* @IID_IInternetProtocol, i8** %59)
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @CLASS_E_NOAGGREGATION, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %6, align 8
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = load i32*, i32** %2, align 8
  %68 = call i32 @IClassFactory_Release(i32* %67)
  %69 = load i32, i32* @broken_mhtml_resolver, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %0
  %72 = call i32 (...) @test_mhtml_protocol_info()
  br label %73

73:                                               ; preds = %71, %0
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %85, %73
  %75 = load i32, i32* %5, align 4
  %76 = load i64, i64* @binding_tests, align 8
  %77 = call i32 @ARRAY_SIZE(i64 %76)
  %78 = icmp ult i32 %75, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load i64, i64* @binding_tests, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = call i32 @test_mhtml_protocol_binding(i64 %83)
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %74

88:                                               ; preds = %74
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @IUnknown_QueryInterface(%struct.TYPE_5__*, i32*, i8**) #2

declare dso_local i32 @IUnknown_Release(%struct.TYPE_5__*) #2

declare dso_local i64 @IClassFactory_CreateInstance(i32*, %struct.TYPE_5__*, i32*, i8**) #2

declare dso_local i32 @IClassFactory_Release(i32*) #2

declare dso_local i32 @test_mhtml_protocol_info(...) #2

declare dso_local i32 @ARRAY_SIZE(i64) #2

declare dso_local i32 @test_mhtml_protocol_binding(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
