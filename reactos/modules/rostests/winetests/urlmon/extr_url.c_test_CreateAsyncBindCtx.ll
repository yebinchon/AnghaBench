; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_CreateAsyncBindCtx.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_CreateAsyncBindCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@E_INVALIDARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"CreateAsyncBindCtx failed. expected: E_INVALIDARG, got: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"bctx should not be changed\0A\00", align 1
@QueryInterface_IServiceProvider = common dso_local global i32 0, align 4
@bsc = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"CreateAsyncBindCtx failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"IBindCtx_GetBindOptions failed: %08x\0A\00", align 1
@BIND_MAYBOTHERUSER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [56 x i8] c"bindopts.grfFlags = %08x, expected: BIND_MAYBOTHERUSER\0A\00", align 1
@STGM_READWRITE = common dso_local global i32 0, align 4
@STGM_SHARE_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [74 x i8] c"bindopts.grfMode = %08x, expected: STGM_READWRITE | STGM_SHARE_EXCLUSIVE\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"bindopts.dwTickCountDeadline = %08x, expected: 0\0A\00", align 1
@IID_IAsyncBindCtx = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [72 x i8] c"QueryInterface(IID_IAsyncBindCtx) failed: %08x, expected E_NOINTERFACE\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"bctx should be destroyed here\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateAsyncBindCtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateAsyncBindCtx() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__, align 8
  store i32* inttoptr (i64 267390960 to i32*), i32** %1, align 8
  %6 = call i32 @CreateAsyncBindCtx(i32 0, i32* null, i32* null, i32** %1)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @E_INVALIDARG, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = icmp eq i32* %13, inttoptr (i64 267390960 to i32*)
  %15 = zext i1 %14 to i32
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @CreateAsyncBindCtx(i32 0, i32* null, i32* null, i32** null)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @E_INVALIDARG, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @QueryInterface_IServiceProvider, align 4
  %25 = call i32 @SET_EXPECT(i32 %24)
  %26 = call i32 @CreateAsyncBindCtx(i32 0, i32* @bsc, i32* null, i32** %1)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @S_OK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @QueryInterface_IServiceProvider, align 4
  %34 = call i32 @CHECK_CALLED(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 24, i32* %35, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @IBindCtx_GetBindOptions(i32* %36, %struct.TYPE_3__* %5)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @S_OK, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BIND_MAYBOTHERUSER, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i64 %50)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @STGM_READWRITE, align 4
  %55 = load i32, i32* @STGM_SHARE_EXCLUSIVE, align 4
  %56 = or i32 %54, %55
  %57 = icmp eq i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = bitcast i32** %2 to i8**
  %71 = call i32 @IBindCtx_QueryInterface(i32* %69, i32* @IID_IAsyncBindCtx, i8** %70)
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @E_NOINTERFACE, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* %3, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %3, align 4
  %79 = call i64 @SUCCEEDED(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %0
  %82 = load i32*, i32** %2, align 8
  %83 = call i32 @IUnknown_Release(i32* %82)
  br label %84

84:                                               ; preds = %81, %0
  %85 = load i32*, i32** %1, align 8
  %86 = call i64 @IBindCtx_Release(i32* %85)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @CreateAsyncBindCtx(i32, i32*, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @IBindCtx_GetBindOptions(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @IBindCtx_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @IBindCtx_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
