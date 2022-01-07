; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_test_obj_dispex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_saxreader.c_test_obj_dispex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_obj_dispex.testW = internal constant [9 x i8] c"testprop\00", align 1
@test_obj_dispex.starW = internal constant [2 x i8] c"*\00", align 1
@DISPID_SAX_XMLREADER_GETFEATURE = common dso_local global i32 0, align 4
@IID_IDispatchEx = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ticnt=%u\0A\00", align 1
@fdexNameCaseSensitive = common dso_local global i32 0, align 4
@E_NOTIMPL = common dso_local global i32 0, align 4
@grfdexPropCanAll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"expected 0 got %d\0A\00", align 1
@fdexEnumDefault = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@fdexNameEnsure = common dso_local global i32 0, align 4
@DISP_E_UNKNOWNNAME = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_obj_dispex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_obj_dispex(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32, i32* @DISPID_SAX_XMLREADER_GETFEATURE, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = bitcast i32** %4 to i8**
  %14 = call i32* @IUnknown_QueryInterface(i32* %12, i32* @IID_IDispatchEx, i8** %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* @S_OK, align 4
  %17 = call i32 @EXPECT_HR(i32* %15, i32 %16)
  %18 = load i32*, i32** %8, align 8
  %19 = call i64 @FAILED(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %109

22:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32* @IDispatchEx_GetTypeInfoCount(i32* %23, i32* %7)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* @S_OK, align 4
  %27 = call i32 @EXPECT_HR(i32* %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = call i32 @SysAllocString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @test_obj_dispex.starW, i64 0, i64 0))
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @fdexNameCaseSensitive, align 4
  %37 = call i32* @IDispatchEx_DeleteMemberByName(i32* %34, i32 %35, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @E_NOTIMPL, align 4
  %40 = call i32 @EXPECT_HR(i32* %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @SysFreeString(i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32* @IDispatchEx_DeleteMemberByDispID(i32* %43, i32 %44)
  store i32* %45, i32** %8, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* @E_NOTIMPL, align 4
  %48 = call i32 @EXPECT_HR(i32* %46, i32 %47)
  store i32* null, i32** %6, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @grfdexPropCanAll, align 4
  %52 = call i32* @IDispatchEx_GetMemberProperties(i32* %49, i32 %50, i32 %51, i32** %6)
  store i32* %52, i32** %8, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @E_NOTIMPL, align 4
  %55 = call i32 @EXPECT_HR(i32* %53, i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = icmp eq i32* %56, null
  %58 = zext i1 %57 to i32
  %59 = load i32*, i32** %6, align 8
  %60 = ptrtoint i32* %59 to i32
  %61 = call i32 @ok(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32* @IDispatchEx_GetMemberName(i32* %62, i32 %63, i32* %9)
  store i32* %64, i32** %8, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* @E_NOTIMPL, align 4
  %67 = call i32 @EXPECT_HR(i32* %65, i32 %66)
  %68 = load i32*, i32** %8, align 8
  %69 = call i64 @SUCCEEDED(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %22
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @SysFreeString(i32 %72)
  br label %74

74:                                               ; preds = %71, %22
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* @fdexEnumDefault, align 4
  %77 = load i32, i32* @DISPID_SAX_XMLREADER_GETFEATURE, align 4
  %78 = call i32* @IDispatchEx_GetNextDispID(i32* %75, i32 %76, i32 %77, i32* %3)
  store i32* %78, i32** %8, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @E_NOTIMPL, align 4
  %81 = call i32 @EXPECT_HR(i32* %79, i32 %80)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %5, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = call i32* @IDispatchEx_GetNameSpaceParent(i32* %82, i32** %5)
  store i32* %83, i32** %8, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @E_NOTIMPL, align 4
  %86 = call i32 @EXPECT_HR(i32* %84, i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = icmp eq i32* %87, inttoptr (i64 3735928559 to i32*)
  %89 = zext i1 %88 to i32
  %90 = load i32*, i32** %5, align 8
  %91 = ptrtoint i32* %90 to i32
  %92 = call i32 @ok(i32 %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = call i32 @SysAllocString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @test_obj_dispex.testW, i64 0, i64 0))
  store i32 %93, i32* %9, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @fdexNameEnsure, align 4
  %97 = call i32* @IDispatchEx_GetDispID(i32* %94, i32 %95, i32 %96, i32* %10)
  store i32* %97, i32** %8, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load i32*, i32** @DISP_E_UNKNOWNNAME, align 8
  %100 = icmp eq i32* %98, %99
  %101 = zext i1 %100 to i32
  %102 = load i32*, i32** %8, align 8
  %103 = ptrtoint i32* %102 to i32
  %104 = call i32 @ok(i32 %101, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @SysFreeString(i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @IDispatchEx_Release(i32* %107)
  br label %109

109:                                              ; preds = %74, %21
  ret void
}

declare dso_local i32* @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @EXPECT_HR(i32*, i32) #1

declare dso_local i64 @FAILED(i32*) #1

declare dso_local i32* @IDispatchEx_GetTypeInfoCount(i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @SysAllocString(i8*) #1

declare dso_local i32* @IDispatchEx_DeleteMemberByName(i32*, i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32* @IDispatchEx_DeleteMemberByDispID(i32*, i32) #1

declare dso_local i32* @IDispatchEx_GetMemberProperties(i32*, i32, i32, i32**) #1

declare dso_local i32* @IDispatchEx_GetMemberName(i32*, i32, i32*) #1

declare dso_local i64 @SUCCEEDED(i32*) #1

declare dso_local i32* @IDispatchEx_GetNextDispID(i32*, i32, i32, i32*) #1

declare dso_local i32* @IDispatchEx_GetNameSpaceParent(i32*, i32**) #1

declare dso_local i32* @IDispatchEx_GetDispID(i32*, i32, i32, i32*) #1

declare dso_local i32 @IDispatchEx_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
