; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_ServiceProvider.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_ServiceProvider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IServiceProvider = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@SID_SContainerDispatch = common dso_local global i32 0, align 4
@IID_IHTMLDocument2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"got wrong pointer\0A\00", align 1
@IID_IHTMLDocument3 = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@SID_SHTMLEditServices = common dso_local global i32 0, align 4
@IID_IHTMLEditServices = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"QueryService(HTMLEditServices) failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ServiceProvider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ServiceProvider() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = call i32* (...) @create_document()
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %101

12:                                               ; preds = %0
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32** %3 to i8**
  %15 = call i64 @IHTMLDocument2_QueryInterface(i32* %13, i32* @IID_IServiceProvider, i8** %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %7, align 8
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = bitcast i32** %5 to i8**
  %24 = call i64 @IServiceProvider_QueryService(i32* %22, i32* @SID_SContainerDispatch, i32* @IID_IHTMLDocument2, i8** %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %7, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @iface_cmp(i32* %31, i32* %32)
  %34 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @IHTMLDocument2_Release(i32* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = bitcast i32** %1 to i8**
  %39 = call i64 @IServiceProvider_QueryService(i32* %37, i32* @SID_SContainerDispatch, i32* @IID_IHTMLDocument3, i8** %38)
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @S_OK, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load i32*, i32** %1, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @iface_cmp(i32* %46, i32* %47)
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32*, i32** %4, align 8
  %51 = bitcast i32** %2 to i8**
  %52 = call i64 @IHTMLDocument2_QueryInterface(i32* %50, i32* @IID_IHTMLDocument3, i8** %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @S_OK, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %7, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @iface_cmp(i32* %59, i32* %60)
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32*, i32** %2, align 8
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @iface_cmp(i32* %63, i32* %64)
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @IHTMLDocument3_Release(i32* %67)
  %69 = load i32*, i32** %2, align 8
  %70 = call i32 @IHTMLDocument3_Release(i32* %69)
  %71 = load i32*, i32** %3, align 8
  %72 = bitcast i32** %6 to i8**
  %73 = call i64 @IServiceProvider_QueryService(i32* %71, i32* @SID_SContainerDispatch, i32* @IID_IUnknown, i8** %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @S_OK, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %7, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load i32*, i32** %4, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = call i32 @iface_cmp(i32* %80, i32* %81)
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @IUnknown_Release(i32* %84)
  %86 = load i32*, i32** %3, align 8
  %87 = bitcast i32** %6 to i8**
  %88 = call i64 @IServiceProvider_QueryService(i32* %86, i32* @SID_SHTMLEditServices, i32* @IID_IHTMLEditServices, i8** %87)
  store i64 %88, i64* %7, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* @S_OK, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %7, align 8
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @IUnknown_Release(i32* %95)
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @IServiceProvider_Release(i32* %97)
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @release_document(i32* %99)
  br label %101

101:                                              ; preds = %12, %11
  ret void
}

declare dso_local i32* @create_document(...) #1

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IServiceProvider_QueryService(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @iface_cmp(i32*, i32*) #1

declare dso_local i32 @IHTMLDocument2_Release(i32*) #1

declare dso_local i32 @IHTMLDocument3_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IServiceProvider_Release(i32*) #1

declare dso_local i32 @release_document(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
