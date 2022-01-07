; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_jscript.c_test_script_dispatch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/jscript/extr_jscript.c_test_script_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"ActiveXObject\00", align 1
@fdexNameCaseSensitive = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"GetDispID failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Math\00", align 1
@DISPATCH_PROPERTYGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"InvokeEx failed: %08x\0A\00", align 1
@VT_DISPATCH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"V_VT(v) = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"V_DISPATCH(v) = NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_script_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_script_dispatch(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = bitcast %struct.TYPE_3__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = call i32 @a2bstr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @fdexNameCaseSensitive, align 4
  %14 = call i64 @IDispatchEx_GetDispID(i32* %11, i32 %12, i32 %13, i32* %6)
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @SysFreeString(i32 %15)
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i64, i64* %8, align 8
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %21)
  %23 = call i32 @a2bstr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %23, i32* %5, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @fdexNameCaseSensitive, align 4
  %27 = call i64 @IDispatchEx_GetDispID(i32* %24, i32 %25, i32 %26, i32* %6)
  store i64 %27, i64* %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @SysFreeString(i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %8, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = call i32 @memset(i32* %4, i32 0, i32 4)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %40 = call i64 @IDispatchEx_InvokeEx(i32* %37, i32 %38, i32 0, i32 %39, %struct.TYPE_3__* %3, i32* %7, i32* %4, i32* null)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %8, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = call i64 @V_VT(i32* %7)
  %48 = load i64, i64* @VT_DISPATCH, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @V_VT(i32* %7)
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %51)
  %53 = call i32* @V_DISPATCH(i32* %7)
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %57 = call i32 @VariantClear(i32* %7)
  %58 = call i32 @a2bstr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i32 %58, i32* %5, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @fdexNameCaseSensitive, align 4
  %62 = call i64 @IDispatchEx_GetDispID(i32* %59, i32 %60, i32 %61, i32* %6)
  store i64 %62, i64* %8, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @SysFreeString(i32 %63)
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @S_OK, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i64, i64* %8, align 8
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = call i32 @memset(i32* %4, i32 0, i32 4)
  %72 = load i32*, i32** %2, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %75 = call i64 @IDispatchEx_InvokeEx(i32* %72, i32 %73, i32 0, i32 %74, %struct.TYPE_3__* %3, i32* %7, i32* %4, i32* null)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @S_OK, align 8
  %78 = icmp eq i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = load i64, i64* %8, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %80)
  %82 = call i64 @V_VT(i32* %7)
  %83 = load i64, i64* @VT_DISPATCH, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i64 @V_VT(i32* %7)
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  %88 = call i32* @V_DISPATCH(i32* %7)
  %89 = icmp ne i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %92 = call i32 @VariantClear(i32* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @a2bstr(i8*) #2

declare dso_local i64 @IDispatchEx_GetDispID(i32*, i32, i32, i32*) #2

declare dso_local i32 @SysFreeString(i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @IDispatchEx_InvokeEx(i32*, i32, i32, i32, %struct.TYPE_3__*, i32*, i32*, i32*) #2

declare dso_local i64 @V_VT(i32*) #2

declare dso_local i32* @V_DISPATCH(i32*) #2

declare dso_local i32 @VariantClear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
