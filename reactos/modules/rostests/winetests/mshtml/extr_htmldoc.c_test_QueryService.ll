; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_QueryService.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_QueryService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IServiceProvider = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"QueryService returned %08x\0A\00", align 1
@IID_IHlinkFrame = common dso_local global i32 0, align 4
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"QueryService returned %08x, expected E_NOINTERFACE\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"QueryService(IID_IHlinkFrame) failed: %08x\0A\00", align 1
@HlinkFrame = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"hf != HlinkFrame\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"get_parentWindow failed: %08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Could not get IServiceProvider iface: %08x\0A\00", align 1
@IID_IHTMLWindow2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"QueryService(IID_IHTMLWindow2) failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @test_QueryService to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_QueryService(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32** %7 to i8**
  %12 = call i64 @IHTMLDocument2_QueryInterface(i32* %10, i32* @IID_IServiceProvider, i8** %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @S_OK, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %9, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32** %8 to i8**
  %21 = call i64 @IServiceProvider_QueryService(i32* %19, i32* @IID_IHlinkFrame, i32* @IID_IHlinkFrame, i8** %20)
  store i64 %21, i64* %9, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @E_NOINTERFACE, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %9, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @IServiceProvider_Release(i32* %31)
  br label %95

33:                                               ; preds = %2
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %9, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, @HlinkFrame
  %42 = zext i1 %41 to i32
  %43 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @IHlinkFrame_Release(i32* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @IServiceProvider_Release(i32* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @IHTMLDocument2_get_parentWindow(i32* %48, i32** %5)
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @S_OK, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %9, align 8
  %55 = call i32 (i32, i8*, ...) @ok(i32 %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = bitcast i32** %7 to i8**
  %58 = call i64 @IHTMLWindow2_QueryInterface(i32* %56, i32* @IID_IServiceProvider, i8** %57)
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i64, i64* %9, align 8
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i64 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = bitcast i32** %6 to i8**
  %67 = call i64 @IServiceProvider_QueryService(i32* %65, i32* @IID_IHTMLWindow2, i32* @IID_IHTMLWindow2, i8** %66)
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @S_OK, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i64, i64* %9, align 8
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i64 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @IHTMLWindow2_Release(i32* %74)
  %76 = load i32*, i32** %7, align 8
  %77 = bitcast i32** %8 to i8**
  %78 = call i64 @IServiceProvider_QueryService(i32* %76, i32* @IID_IHlinkFrame, i32* @IID_IHlinkFrame, i8** %77)
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @S_OK, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %9, align 8
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = icmp eq i32* %85, @HlinkFrame
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32*, i32** %8, align 8
  %90 = call i32 @IHlinkFrame_Release(i32* %89)
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @IServiceProvider_Release(i32* %91)
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @IHTMLWindow2_Release(i32* %93)
  br label %95

95:                                               ; preds = %33, %24
  ret void
}

declare dso_local i64 @IHTMLDocument2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IServiceProvider_QueryService(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IServiceProvider_Release(i32*) #1

declare dso_local i32 @IHlinkFrame_Release(i32*) #1

declare dso_local i64 @IHTMLDocument2_get_parentWindow(i32*, i32**) #1

declare dso_local i64 @IHTMLWindow2_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
