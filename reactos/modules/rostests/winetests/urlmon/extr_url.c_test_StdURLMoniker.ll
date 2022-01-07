; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_StdURLMoniker.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_StdURLMoniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IInternet = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IMoniker = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [43 x i8] c"Could not create IInternet instance: %08x\0A\00", align 1
@IID_IAsyncMoniker = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not get IAsyncMoniker iface: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"mon != async_mon\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"GetDisplayName failed: %08x, expected E_OUTOFMEMORY\0A\00", align 1
@pCreateUri = common dso_local global i64 0, align 8
@IID_IUriContainer = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Could not get IUriMoniker iface: %08x\0A\00", align 1
@S_FALSE = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"GetIUri failed: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"uri = %p, expected NULL\0A\00", align 1
@QueryInterface_IServiceProvider = common dso_local global i32 0, align 4
@bsc = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"CreateAsyncBindCtx failed: %08x\0A\0A\00", align 1
@IID_IStream = common dso_local global i32 0, align 4
@MK_E_SYNTAX = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [50 x i8] c"BindToStorage failed: %08x, expected MK_E_SYNTAX\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"unk = %p\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_StdURLMoniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_StdURLMoniker() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %10 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %11 = or i32 %9, %10
  %12 = bitcast i32** %1 to i8**
  %13 = call i32* @CoCreateInstance(i32* @IID_IInternet, i32* null, i32 %11, i32* @IID_IMoniker, i8** %12)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** @S_OK, align 8
  %16 = icmp eq i32* %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @FAILED(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %0
  br label %127

24:                                               ; preds = %0
  %25 = load i32*, i32** %1, align 8
  %26 = bitcast i32** %2 to i8**
  %27 = call i32* @IMoniker_QueryInterface(i32* %25, i32* @IID_IAsyncMoniker, i8** %26)
  store i32* %27, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** @S_OK, align 8
  %30 = icmp eq i32* %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* %32)
  %34 = load i32*, i32** %1, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = icmp eq i32* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @IMoniker_Release(i32* %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32* @IMoniker_GetDisplayName(i32* %41, i32* null, i32* null, i32* %3)
  store i32* %42, i32** %6, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** @E_OUTOFMEMORY, align 8
  %45 = icmp eq i32* %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32* %47)
  %49 = load i64, i64* @pCreateUri, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %77

51:                                               ; preds = %24
  %52 = load i32*, i32** %1, align 8
  %53 = bitcast i32** %7 to i8**
  %54 = call i32* @IMoniker_QueryInterface(i32* %52, i32* @IID_IUriContainer, i8** %53)
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** @S_OK, align 8
  %57 = icmp eq i32* %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32* %59)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %8, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32* @IUriContainer_GetIUri(i32* %61, i32** %8)
  store i32* %62, i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** @S_FALSE, align 8
  %65 = icmp eq i32* %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32* %67)
  %69 = load i32*, i32** %8, align 8
  %70 = icmp ne i32* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @IUriContainer_Release(i32* %75)
  br label %77

77:                                               ; preds = %51, %24
  %78 = load i32, i32* @QueryInterface_IServiceProvider, align 4
  %79 = call i32 @SET_EXPECT(i32 %78)
  %80 = call i32* @CreateAsyncBindCtx(i32 0, i32* @bsc, i32* null, i32** %4)
  store i32* %80, i32** %6, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** @S_OK, align 8
  %83 = icmp eq i32* %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32* %85)
  %87 = load i32, i32* @QueryInterface_IServiceProvider, align 4
  %88 = call i32 @CHECK_CALLED(i32 %87)
  %89 = load i64, i64* @pCreateUri, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %124

91:                                               ; preds = %77
  store i32* inttoptr (i64 3735928559 to i32*), i32** %5, align 8
  %92 = load i32*, i32** %1, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = bitcast i32** %5 to i8**
  %95 = call i32* @IMoniker_BindToStorage(i32* %92, i32* %93, i32* null, i32* @IID_IStream, i8** %94)
  store i32* %95, i32** %6, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** @MK_E_SYNTAX, align 8
  %98 = icmp eq i32* %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32*, i32** %6, align 8
  %101 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32* %100)
  %102 = load i32*, i32** %5, align 8
  %103 = icmp ne i32* %102, null
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* %106)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %5, align 8
  %108 = load i32*, i32** %1, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = bitcast i32** %5 to i8**
  %111 = call i32* @IMoniker_BindToObject(i32* %108, i32* %109, i32* null, i32* @IID_IUnknown, i8** %110)
  store i32* %111, i32** %6, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = load i32*, i32** @MK_E_SYNTAX, align 8
  %114 = icmp eq i32* %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 (i32, i8*, ...) @ok(i32 %115, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i32* %116)
  %118 = load i32*, i32** %5, align 8
  %119 = icmp ne i32* %118, null
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* %122)
  br label %124

124:                                              ; preds = %91, %77
  %125 = load i32*, i32** %1, align 8
  %126 = call i32 @IMoniker_Release(i32* %125)
  br label %127

127:                                              ; preds = %124, %23
  ret void
}

declare dso_local i32* @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i32*) #1

declare dso_local i32* @IMoniker_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32* @IMoniker_GetDisplayName(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @IUriContainer_GetIUri(i32*, i32**) #1

declare dso_local i32 @IUriContainer_Release(i32*) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i32* @CreateAsyncBindCtx(i32, i32*, i32*, i32**) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32* @IMoniker_BindToStorage(i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32* @IMoniker_BindToObject(i32*, i32*, i32*, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
