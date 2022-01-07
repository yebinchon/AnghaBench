; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_attr_collection_disp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_attr_collection_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32* }

@IID_IDispatchEx = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"QueryInterface failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@fdexNameCaseSensitive = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"GetDispID failed: %08x\0A\00", align 1
@LOCALE_NEUTRAL = common dso_local global i32 0, align 4
@INVOKE_PROPERTYGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"InvokeEx failed: %08x\0A\00", align 1
@VT_DISPATCH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"V_VT(var)=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"V_DISPATCH(var) == NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"attr1\00", align 1
@IID_IHTMLDOMAttribute = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_attr_collection_disp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_attr_collection_disp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %11 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load i32*, i32** %2, align 8
  %13 = bitcast i32** %3 to i8**
  %14 = call i64 @IDispatch_QueryInterface(i32* %12, i32* @IID_IDispatchEx, i8** %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i64, i64* %10, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = call i32 @a2bstr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @fdexNameCaseSensitive, align 4
  %25 = call i64 @IDispatchEx_GetDispID(i32* %22, i32 %23, i32 %24, i32* %8)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %10, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @SysFreeString(i32 %32)
  %34 = call i32 @VariantInit(i32* %6)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %38 = load i32, i32* @INVOKE_PROPERTYGET, align 4
  %39 = call i64 @IDispatchEx_InvokeEx(i32* %35, i32 %36, i32 %37, i32 %38, %struct.TYPE_3__* %5, i32* %6, i32* %7, i32* null)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %10, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = call i64 @V_VT(i32* %6)
  %47 = load i64, i64* @VT_DISPATCH, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @V_VT(i32* %6)
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %50)
  %52 = call i32* @V_DISPATCH(i32* %6)
  %53 = icmp ne i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 @VariantClear(i32* %6)
  %57 = call i32 @a2bstr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 %57, i32* %9, align 4
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @fdexNameCaseSensitive, align 4
  %61 = call i64 @IDispatchEx_GetDispID(i32* %58, i32 %59, i32 %60, i32* %8)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @S_OK, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %10, align 8
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @SysFreeString(i32 %68)
  %70 = call i32 @VariantInit(i32* %6)
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %74 = load i32, i32* @INVOKE_PROPERTYGET, align 4
  %75 = call i64 @IDispatchEx_InvokeEx(i32* %71, i32 %72, i32 %73, i32 %74, %struct.TYPE_3__* %5, i32* %6, i32* %7, i32* null)
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %10, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %80)
  %82 = call i64 @V_VT(i32* %6)
  %83 = load i64, i64* @VT_DISPATCH, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @V_VT(i32* %6)
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  %88 = call i32* @V_DISPATCH(i32* %6)
  %89 = icmp ne i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i32* @V_DISPATCH(i32* %6)
  %93 = bitcast i32** %4 to i8**
  %94 = call i64 @IDispatch_QueryInterface(i32* %92, i32* @IID_IHTMLDOMAttribute, i8** %93)
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64, i64* @S_OK, align 8
  %97 = icmp eq i64 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %10, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @test_attr_node_name(i32* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @IHTMLDOMAttribute_Release(i32* %103)
  %105 = call i32 @VariantClear(i32* %6)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @IDispatchEx_Release(i32* %106)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IDispatch_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @a2bstr(i8*) #2

declare dso_local i64 @IDispatchEx_GetDispID(i32*, i32, i32, i32*) #2

declare dso_local i32 @SysFreeString(i32) #2

declare dso_local i32 @VariantInit(i32*) #2

declare dso_local i64 @IDispatchEx_InvokeEx(i32*, i32, i32, i32, %struct.TYPE_3__*, i32*, i32*, i32*) #2

declare dso_local i64 @V_VT(i32*) #2

declare dso_local i32* @V_DISPATCH(i32*) #2

declare dso_local i32 @VariantClear(i32*) #2

declare dso_local i32 @test_attr_node_name(i32*, i8*) #2

declare dso_local i32 @IHTMLDOMAttribute_Release(i32*) #2

declare dso_local i32 @IDispatchEx_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
