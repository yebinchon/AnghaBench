; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_ReportResult.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_ReportResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ABOUT_TEST = common dso_local global i32 0, align 4
@BINDTEST_EMULATE = common dso_local global i32 0, align 4
@TYMED_ISTREAM = common dso_local global i32 0, align 4
@binding_hres = common dso_local global i64 0, align 8
@about_blankW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"CreateURLMoniker failed: %08x\0A\00", align 1
@QueryInterface_IServiceProvider = common dso_local global i32 0, align 4
@bsc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"CreateAsyncBindCtx failed: %08x\0A\0A\00", align 1
@QueryInterface_IBindStatusCallbackEx = common dso_local global i32 0, align 4
@GetBindInfo = common dso_local global i32 0, align 4
@QueryInterface_IInternetProtocol = common dso_local global i32 0, align 4
@OnStartBinding = common dso_local global i32 0, align 4
@test_protocol = common dso_local global i32 0, align 4
@SetPriority = common dso_local global i32 0, align 4
@Start = common dso_local global i32 0, align 4
@IID_IStream = common dso_local global i32 0, align 4
@MK_S_ASYNCHRONOUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"BindToStorage failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"BindToStorage failed: %08x, expected %08x or MK_S_ASYNCHRONOUS\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unk=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @test_ReportResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ReportResult(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %5, align 8
  %7 = load i32, i32* @ABOUT_TEST, align 4
  %8 = load i32, i32* @BINDTEST_EMULATE, align 4
  %9 = load i32, i32* @TYMED_ISTREAM, align 4
  %10 = call i32 @init_bind_test(i32 %7, i32 %8, i32 %9)
  %11 = load i64, i64* %2, align 8
  store i64 %11, i64* @binding_hres, align 8
  %12 = load i32, i32* @about_blankW, align 4
  %13 = call i64 @CreateURLMoniker(i32* null, i32 %12, i32** %3)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @S_OK, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %6, align 8
  %19 = call i32 (i32, i8*, i64, ...) @ok(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @QueryInterface_IServiceProvider, align 4
  %21 = call i32 @SET_EXPECT(i32 %20)
  %22 = call i64 @CreateAsyncBindCtx(i32 0, i32* @bsc, i32* null, i32** %4)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %6, align 8
  %28 = call i32 (i32, i8*, i64, ...) @ok(i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @QueryInterface_IServiceProvider, align 4
  %30 = call i32 @CHECK_CALLED(i32 %29)
  %31 = load i32, i32* @QueryInterface_IBindStatusCallbackEx, align 4
  %32 = call i32 @SET_EXPECT(i32 %31)
  %33 = load i32, i32* @GetBindInfo, align 4
  %34 = call i32 @SET_EXPECT(i32 %33)
  %35 = load i32, i32* @QueryInterface_IInternetProtocol, align 4
  %36 = call i32 @SET_EXPECT(i32 %35)
  %37 = load i32, i32* @OnStartBinding, align 4
  %38 = call i32 @SET_EXPECT(i32 %37)
  %39 = load i32, i32* @test_protocol, align 4
  %40 = call i64 @is_urlmon_protocol(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load i32, i32* @SetPriority, align 4
  %44 = call i32 @SET_EXPECT(i32 %43)
  br label %45

45:                                               ; preds = %42, %1
  %46 = load i32, i32* @Start, align 4
  %47 = call i32 @SET_EXPECT(i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = bitcast i32** %5 to i8**
  %51 = call i64 @IMoniker_BindToStorage(i32* %48, i32* %49, i32* null, i32* @IID_IStream, i8** %50)
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %2, align 8
  %53 = call i64 @SUCCEEDED(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %45
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* @MK_S_ASYNCHRONOUS, align 8
  %62 = icmp eq i64 %60, %61
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i1 [ true, %55 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = load i64, i64* %6, align 8
  %67 = call i32 (i32, i8*, i64, ...) @ok(i32 %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %66)
  br label %82

68:                                               ; preds = %45
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %2, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @MK_S_ASYNCHRONOUS, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ true, %68 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %2, align 8
  %81 = call i32 (i32, i8*, i64, ...) @ok(i32 %78, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %79, i64 %80)
  br label %82

82:                                               ; preds = %76, %63
  %83 = load i32, i32* @QueryInterface_IBindStatusCallbackEx, align 4
  %84 = call i32 @CLEAR_CALLED(i32 %83)
  %85 = load i32, i32* @GetBindInfo, align 4
  %86 = call i32 @CHECK_CALLED(i32 %85)
  %87 = load i32, i32* @QueryInterface_IInternetProtocol, align 4
  %88 = call i32 @CHECK_CALLED(i32 %87)
  %89 = load i32, i32* @OnStartBinding, align 4
  %90 = call i32 @CHECK_CALLED(i32 %89)
  %91 = load i32, i32* @test_protocol, align 4
  %92 = call i64 @is_urlmon_protocol(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load i32, i32* @SetPriority, align 4
  %96 = call i32 @CLEAR_CALLED(i32 %95)
  br label %97

97:                                               ; preds = %94, %82
  %98 = load i32, i32* @Start, align 4
  %99 = call i32 @CHECK_CALLED(i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = icmp eq i32* %100, null
  %102 = zext i1 %101 to i32
  %103 = load i32*, i32** %5, align 8
  %104 = ptrtoint i32* %103 to i64
  %105 = call i32 (i32, i8*, i64, ...) @ok(i32 %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %104)
  %106 = load i32*, i32** %4, align 8
  %107 = call i32 @IBindCtx_Release(i32* %106)
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @IMoniker_Release(i32* %108)
  ret void
}

declare dso_local i32 @init_bind_test(i32, i32, i32) #1

declare dso_local i64 @CreateURLMoniker(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @CreateAsyncBindCtx(i32, i32*, i32*, i32**) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i64 @is_urlmon_protocol(i32) #1

declare dso_local i64 @IMoniker_BindToStorage(i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @CLEAR_CALLED(i32) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
