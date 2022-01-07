; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_child_col_disp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_child_col_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32* }

@test_child_col_disp.w0 = internal constant [2 x i8] c"0\00", align 1
@test_child_col_disp.w100 = internal constant [4 x i8] c"100\00", align 1
@IID_IDispatchEx = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not get IDispatchEx: %08x\0A\00", align 1
@fdexNameCaseSensitive = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"GetDispID failed: %08x\0A\00", align 1
@LOCALE_NEUTRAL = common dso_local global i32 0, align 4
@INVOKE_PROPERTYGET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"InvokeEx failed: %08x\0A\00", align 1
@VT_DISPATCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"V_VT(var)=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"V_DISPATCH(var) == NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"type=%d\0A\00", align 1
@DISP_E_UNKNOWNNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"GetDispID failed: %08x, expected DISP_E_UNKNOWNNAME\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_child_col_disp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_child_col_disp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = load i32*, i32** %2, align 8
  %14 = bitcast i32** %3 to i8**
  %15 = call i32 @IHTMLDOMChildrenCollection_QueryInterface(i32* %13, i32* @IID_IDispatchEx, i8** %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @S_OK, align 4
  %18 = icmp eq i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %11, align 4
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = call i32 @SysAllocString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_child_col_disp.w0, i64 0, i64 0))
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @fdexNameCaseSensitive, align 4
  %26 = call i32 @IDispatchEx_GetDispID(i32* %23, i32 %24, i32 %25, i32* %9)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @SysFreeString(i32 %33)
  %35 = call i32 @VariantInit(i32* %6)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @LOCALE_NEUTRAL, align 4
  %39 = load i32, i32* @INVOKE_PROPERTYGET, align 4
  %40 = call i32 @IDispatchEx_InvokeEx(i32* %36, i32 %37, i32 %38, i32 %39, %struct.TYPE_3__* %5, i32* %6, i32* %7, i32* null)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @S_OK, align 4
  %43 = icmp eq i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = call i32 @V_VT(i32* %6)
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @VT_DISPATCH, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @V_VT(i32* %6)
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = call i32* @V_DISPATCH(i32* %6)
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %58 = call i32* @V_DISPATCH(i32* %6)
  %59 = call i32* @get_node_iface(i32* %58)
  store i32* %59, i32** %4, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @get_node_type(i32* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %62, 3
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @IHTMLDOMNode_Release(i32* %67)
  %69 = call i32 @VariantClear(i32* %6)
  %70 = call i32 @SysAllocString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @test_child_col_disp.w100, i64 0, i64 0))
  store i32 %70, i32* %10, align 4
  %71 = load i32*, i32** %3, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @fdexNameCaseSensitive, align 4
  %74 = call i32 @IDispatchEx_GetDispID(i32* %71, i32 %72, i32 %73, i32* %9)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @DISP_E_UNKNOWNNAME, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %11, align 4
  %80 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @SysFreeString(i32 %81)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @IDispatchEx_Release(i32* %83)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IHTMLDOMChildrenCollection_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @SysAllocString(i8*) #2

declare dso_local i32 @IDispatchEx_GetDispID(i32*, i32, i32, i32*) #2

declare dso_local i32 @SysFreeString(i32) #2

declare dso_local i32 @VariantInit(i32*) #2

declare dso_local i32 @IDispatchEx_InvokeEx(i32*, i32, i32, i32, %struct.TYPE_3__*, i32*, i32*, i32*) #2

declare dso_local i32 @V_VT(i32*) #2

declare dso_local i32* @V_DISPATCH(i32*) #2

declare dso_local i32* @get_node_iface(i32*) #2

declare dso_local i32 @get_node_type(i32*) #2

declare dso_local i32 @IHTMLDOMNode_Release(i32*) #2

declare dso_local i32 @VariantClear(i32*) #2

declare dso_local i32 @IDispatchEx_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
