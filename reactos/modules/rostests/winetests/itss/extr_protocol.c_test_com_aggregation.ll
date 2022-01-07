; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_test_com_aggregation.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_test_com_aggregation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@outer_vtbl = common dso_local global i32 0, align 4
@__const.test_com_aggregation.outer = private unnamed_addr constant %struct.TYPE_5__ { i32* @outer_vtbl }, align 8
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IClassFactory = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"CoGetClassObject failed: %08x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"CreateInstance returned: %08x\0A\00", align 1
@IID_IInternetProtocol = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Could not get IInternetProtocol iface: %08x\0A\00", align 1
@outer_QI_test = common dso_local global i32 0, align 4
@outer_test_iid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"unexpected unk2\0A\00", align 1
@CLASS_E_NOAGGREGATION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"unk = %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_com_aggregation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_com_aggregation(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_5__* @__const.test_com_aggregation.outer to i8*), i64 8, i1 false)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %12 = bitcast i32** %4 to i8**
  %13 = call i64 @CoGetClassObject(i32* %10, i32 %11, i32* null, i32* @IID_IClassFactory, i8** %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %8, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = bitcast %struct.TYPE_5__** %5 to i8**
  %22 = call i64 @IClassFactory_CreateInstance(i32* %20, %struct.TYPE_5__* %3, i32* @IID_IUnknown, i8** %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %8, align 8
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = bitcast %struct.TYPE_5__** %6 to i8**
  %31 = call i64 @IUnknown_QueryInterface(%struct.TYPE_5__* %29, i32* @IID_IInternetProtocol, i8** %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @S_OK, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %8, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @outer_QI_test, align 4
  %39 = call i32 @SET_EXPECT(i32 %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = bitcast %struct.TYPE_5__** %7 to i8**
  %42 = call i64 @IUnknown_QueryInterface(%struct.TYPE_5__* %40, i32* @outer_test_iid, i8** %41)
  store i64 %42, i64* %8, align 8
  %43 = load i32, i32* @outer_QI_test, align 4
  %44 = call i32 @CHECK_CALLED(i32 %43)
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @S_OK, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %8, align 8
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = icmp eq %struct.TYPE_5__* %51, inttoptr (i64 3735928559 to %struct.TYPE_5__*)
  %53 = zext i1 %52 to i32
  %54 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = call i32 @IUnknown_Release(%struct.TYPE_5__* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = call i32 @IUnknown_Release(%struct.TYPE_5__* %57)
  store %struct.TYPE_5__* inttoptr (i64 3735928559 to %struct.TYPE_5__*), %struct.TYPE_5__** %5, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = bitcast %struct.TYPE_5__** %5 to i8**
  %61 = call i64 @IClassFactory_CreateInstance(i32* %59, %struct.TYPE_5__* %3, i32* @IID_IInternetProtocol, i8** %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @CLASS_E_NOAGGREGATION, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %8, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %69 = icmp ne %struct.TYPE_5__* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_5__* %72)
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @IClassFactory_Release(i32* %74)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CoGetClassObject(i32*, i32, i32*, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i64 @IClassFactory_CreateInstance(i32*, %struct.TYPE_5__*, i32*, i8**) #2

declare dso_local i64 @IUnknown_QueryInterface(%struct.TYPE_5__*, i32*, i8**) #2

declare dso_local i32 @SET_EXPECT(i32) #2

declare dso_local i32 @CHECK_CALLED(i32) #2

declare dso_local i32 @IUnknown_Release(%struct.TYPE_5__*) #2

declare dso_local i32 @IClassFactory_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
