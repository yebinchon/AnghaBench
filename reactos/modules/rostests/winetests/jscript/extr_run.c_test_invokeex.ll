; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_test_invokeex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_run.c_test_invokeex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [51 x i8] c"var o = {func: function() {return 3;}, prop: 6}; o\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"parse_script_expr failed: %08x\0A\00", align 1
@VT_DISPATCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"V_VT(v) = %d\0A\00", align 1
@IID_IDispatchEx = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Could not get IDispatchEx iface: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"func\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"GetDispID failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"prop\00", align 1
@DISPATCH_METHOD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"InvokeEx failed: %08x\0A\00", align 1
@VT_I4 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"V_I4(v) = %d\0A\00", align 1
@DISPATCH_PROPERTYGET = common dso_local global i32 0, align 4
@SCRIPTSTATE_UNINITIALIZED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"SetScriptState(SCRIPTSTATE_STARTED) failed: %08x\0A\00", align 1
@E_UNEXPECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_invokeex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_invokeex() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 8, i1 false)
  %10 = call i32 @parse_script_expr(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32* %6, i32** %4)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @S_OK, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = call i32 @V_VT(i32* %6)
  %18 = load i32, i32* @VT_DISPATCH, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @V_VT(i32* %6)
  %22 = call i32 @ok(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = call i32 @V_DISPATCH(i32* %6)
  %24 = bitcast i32** %5 to i8**
  %25 = call i32 @IDispatch_QueryInterface(i32 %23, i32* @IID_IDispatchEx, i8** %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @S_OK, align 4
  %28 = icmp eq i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %30)
  %32 = call i32 @VariantClear(i32* %6)
  %33 = call i32 @a2bstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @IDispatchEx_GetDispID(i32* %34, i32 %35, i32 0, i32* %1)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @SysFreeString(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @S_OK, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = call i32 @a2bstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 %45, i32* %7, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @IDispatchEx_GetDispID(i32* %46, i32 %47, i32 0, i32* %2)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @SysFreeString(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @S_OK, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @DISPATCH_METHOD, align 4
  %60 = call i32 @IDispatchEx_InvokeEx(i32* %57, i32 %58, i32 0, i32 %59, %struct.TYPE_3__* %3, i32* %6, i32* null, i32* null)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @S_OK, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  %67 = call i32 @V_VT(i32* %6)
  %68 = load i32, i32* @VT_I4, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @V_VT(i32* %6)
  %72 = call i32 @ok(i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = call i32 @V_I4(i32* %6)
  %74 = icmp eq i32 %73, 3
  %75 = zext i1 %74 to i32
  %76 = call i32 @V_I4(i32* %6)
  %77 = call i32 @ok(i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %76)
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %81 = call i32 @IDispatchEx_InvokeEx(i32* %78, i32 %79, i32 0, i32 %80, %struct.TYPE_3__* %3, i32* %6, i32* null, i32* null)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @S_OK, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %86)
  %88 = call i32 @V_VT(i32* %6)
  %89 = load i32, i32* @VT_I4, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @V_VT(i32* %6)
  %93 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = call i32 @V_I4(i32* %6)
  %95 = icmp eq i32 %94, 6
  %96 = zext i1 %95 to i32
  %97 = call i32 @V_I4(i32* %6)
  %98 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @SCRIPTSTATE_UNINITIALIZED, align 4
  %101 = call i32 @IActiveScript_SetScriptState(i32* %99, i32 %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @S_OK, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 %106)
  %108 = call i32 @a2bstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %108, i32* %7, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @IDispatchEx_GetDispID(i32* %109, i32 %110, i32 0, i32* %1)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @SysFreeString(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @S_OK, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @ok(i32 %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %1, align 4
  %122 = load i32, i32* @DISPATCH_METHOD, align 4
  %123 = call i32 @IDispatchEx_InvokeEx(i32* %120, i32 %121, i32 0, i32 %122, %struct.TYPE_3__* %3, i32* %6, i32* null, i32* null)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @E_UNEXPECTED, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %0
  %128 = load i32, i32* %8, align 4
  %129 = icmp eq i32 %128, -2146823277
  %130 = zext i1 %129 to i32
  %131 = call i64 @broken(i32 %130)
  %132 = icmp ne i64 %131, 0
  br label %133

133:                                              ; preds = %127, %0
  %134 = phi i1 [ true, %0 ], [ %132, %127 ]
  %135 = zext i1 %134 to i32
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @ok(i32 %135, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %2, align 4
  %140 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %141 = call i32 @IDispatchEx_InvokeEx(i32* %138, i32 %139, i32 0, i32 %140, %struct.TYPE_3__* %3, i32* %6, i32* null, i32* null)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @S_OK, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @ok(i32 %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  %148 = call i32 @V_VT(i32* %6)
  %149 = load i32, i32* @VT_I4, align 4
  %150 = icmp eq i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @V_VT(i32* %6)
  %153 = call i32 @ok(i32 %151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %152)
  %154 = call i32 @V_I4(i32* %6)
  %155 = icmp eq i32 %154, 6
  %156 = zext i1 %155 to i32
  %157 = call i32 @V_I4(i32* %6)
  %158 = call i32 @ok(i32 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 @IDispatchEx_Release(i32* %159)
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 @IActiveScript_Release(i32* %161)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parse_script_expr(i8*, i32*, i32**) #2

declare dso_local i32 @ok(i32, i8*, i32) #2

declare dso_local i32 @V_VT(i32*) #2

declare dso_local i32 @IDispatch_QueryInterface(i32, i32*, i8**) #2

declare dso_local i32 @V_DISPATCH(i32*) #2

declare dso_local i32 @VariantClear(i32*) #2

declare dso_local i32 @a2bstr(i8*) #2

declare dso_local i32 @IDispatchEx_GetDispID(i32*, i32, i32, i32*) #2

declare dso_local i32 @SysFreeString(i32) #2

declare dso_local i32 @IDispatchEx_InvokeEx(i32*, i32, i32, i32, %struct.TYPE_3__*, i32*, i32*, i32*) #2

declare dso_local i32 @V_I4(i32*) #2

declare dso_local i32 @IActiveScript_SetScriptState(i32*, i32) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @IDispatchEx_Release(i32*) #2

declare dso_local i32 @IActiveScript_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
