; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl/extr_atl_ax.c_test_AtlAxAttachControl.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/atl/extr_atl_ax.c_test_AtlAxAttachControl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"WineAtlTestClass\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Wine ATL Test Window\00", align 1
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"Expected AtlAxAttachControl to return E_INVALIDARG, got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Expected the output container pointer to be untouched, got %p\0A\00", align 1
@CLSID_WebBrowser = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IOleObject = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [54 x i8] c"Expected CoCreateInstance to return S_OK, got 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Couldn't obtain a test IOleObject instance\0A\00", align 1
@S_FALSE = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [59 x i8] c"Expected AtlAxAttachControl to return S_FALSE, got 0x%08x\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Expected AtlAxAttachControl to return S_OK, got 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_AtlAxAttachControl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_AtlAxAttachControl() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @CW_USEDEFAULT, align 4
  %6 = load i32, i32* @CW_USEDEFAULT, align 4
  %7 = load i32, i32* @CW_USEDEFAULT, align 4
  %8 = load i32, i32* @CW_USEDEFAULT, align 4
  %9 = call i32* @CreateWindowA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %5, i32 %6, i32 %7, i32 %8, i32* null, i32* null, i32* null, i32* null)
  store i32* %9, i32** %1, align 8
  %10 = call i32* @pAtlAxAttachControl(i32* null, i32* null, i32** null)
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = load i32*, i32** @E_INVALIDARG, align 8
  %13 = icmp eq i32* %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @ok(i32 %14, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32* %15)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %4, align 8
  %17 = call i32* @pAtlAxAttachControl(i32* null, i32* null, i32** %4)
  store i32* %17, i32** %2, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = load i32*, i32** @E_INVALIDARG, align 8
  %20 = icmp eq i32* %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32* %22)
  %24 = load i32*, i32** %4, align 8
  %25 = icmp eq i32* %24, inttoptr (i64 3735928559 to i32*)
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32* %27)
  %29 = load i32*, i32** %1, align 8
  %30 = call i32* @pAtlAxAttachControl(i32* null, i32* %29, i32** null)
  store i32* %30, i32** %2, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = load i32*, i32** @E_INVALIDARG, align 8
  %33 = icmp eq i32* %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @ok(i32 %34, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32* %35)
  %37 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %38 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %39 = or i32 %37, %38
  %40 = bitcast i32** %3 to i8**
  %41 = call i32* @CoCreateInstance(i32* @CLSID_WebBrowser, i32* null, i32 %39, i32* @IID_IOleObject, i8** %40)
  store i32* %41, i32** %2, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = load i32*, i32** @S_OK, align 8
  %44 = icmp eq i32* %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32* %46)
  %48 = load i32*, i32** %2, align 8
  %49 = call i64 @FAILED(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %0
  %52 = call i32 @skip(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %90

53:                                               ; preds = %0
  %54 = load i32*, i32** %3, align 8
  %55 = call i32* @pAtlAxAttachControl(i32* %54, i32* null, i32** null)
  store i32* %55, i32** %2, align 8
  %56 = load i32*, i32** %2, align 8
  %57 = load i32*, i32** @S_FALSE, align 8
  %58 = icmp eq i32* %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32* %60)
  store i32* null, i32** %4, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i32* @pAtlAxAttachControl(i32* %62, i32* null, i32** %4)
  store i32* %63, i32** %2, align 8
  %64 = load i32*, i32** %2, align 8
  %65 = load i32*, i32** @S_FALSE, align 8
  %66 = icmp eq i32* %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @ok(i32 %67, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32* %68)
  %70 = load i32*, i32** %4, align 8
  %71 = icmp ne i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @ok(i32 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* %73)
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @IUnknown_Release(i32* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32*, i32** %1, align 8
  %79 = call i32* @pAtlAxAttachControl(i32* %77, i32* %78, i32** null)
  store i32* %79, i32** %2, align 8
  %80 = load i32*, i32** %2, align 8
  %81 = load i32*, i32** @S_OK, align 8
  %82 = icmp eq i32* %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = call i32 @IUnknown_Release(i32* %86)
  %88 = load i32*, i32** %1, align 8
  %89 = call i32 @DestroyWindow(i32* %88)
  br label %90

90:                                               ; preds = %53, %51
  ret void
}

declare dso_local i32* @CreateWindowA(i8*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @pAtlAxAttachControl(i32*, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i32* @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @DestroyWindow(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
