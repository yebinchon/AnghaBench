; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_BindToStorage_fail.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_BindToStorage_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@about_blankW = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"CreateURLMoniker failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"CreateAsyncBindCtxEx failed: %08x\0A\00", align 1
@IID_IStream = common dso_local global i32 0, align 4
@MK_E_SYNTAX = common dso_local global i64 0, align 8
@INET_E_DATA_NOT_AVAILABLE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"hres=%08x, expected MK_E_SYNTAX or INET_E_DATA_NOT_AVAILABLE\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_BindToStorage_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_BindToStorage_fail() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %5 = load i32, i32* @about_blankW, align 4
  %6 = call i64 @CreateURLMoniker(i32* null, i32 %5, i32** %1)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @S_OK, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @ok(i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @FAILED(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %55

17:                                               ; preds = %0
  %18 = call i64 @pCreateAsyncBindCtxEx(i32* null, i32 0, i32* null, i32* null, i32** %2, i32 0)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @S_OK, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @ok(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %25 = load i32*, i32** %1, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = bitcast i32** %3 to i8**
  %28 = call i64 @IMoniker_BindToStorage(i32* %25, i32* %26, i32* null, i32* @IID_IStream, i8** %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @MK_E_SYNTAX, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %17
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @INET_E_DATA_NOT_AVAILABLE, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %17
  %37 = phi i1 [ true, %17 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = icmp eq i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %3, align 8
  %45 = ptrtoint i32* %44 to i64
  %46 = call i32 @ok(i32 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @IBindCtx_Release(i32* %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @IMoniker_Release(i32* %49)
  %51 = load i32, i32* @E_NOTIMPL, align 4
  %52 = call i32 @test_ReportResult(i32 %51)
  %53 = load i32, i32* @S_FALSE, align 4
  %54 = call i32 @test_ReportResult(i32 %53)
  br label %55

55:                                               ; preds = %36, %16
  ret void
}

declare dso_local i64 @CreateURLMoniker(i32*, i32, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @pCreateAsyncBindCtxEx(i32*, i32, i32*, i32*, i32**, i32) #1

declare dso_local i64 @IMoniker_BindToStorage(i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IBindCtx_Release(i32*) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

declare dso_local i32 @test_ReportResult(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
