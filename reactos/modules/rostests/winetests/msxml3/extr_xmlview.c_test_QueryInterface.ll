; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_xmlview.c_test_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_xmlview.c_test_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_XMLView = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@IID_IUnknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to create XMLView instance\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"CoCreateInstance returned %x, expected S_OK\0A\00", align 1
@IID_IPersistMoniker = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"QueryInterface(IID_IPersistMoniker) returned %x, expected S_OK\0A\00", align 1
@IID_IPersistHistory = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"QueryInterface(IID_IPersistHistory) returned %x, expected S_OK\0A\00", align 1
@IID_IOleCommandTarget = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"QueryInterface(IID_IOleCommandTarget) returned %x, expected S_OK\0A\00", align 1
@IID_IOleObject = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"QueryInterface(IID_IOleObject) returned %x, expected S_OK\0A\00", align 1
@IID_IHTMLDocument = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [62 x i8] c"QueryInterface(IID_IHTMLDocument) returned %x, expected S_OK\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"QueryInterface(IID_IUnknown) returned %x, expected S_OK\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Aggregation is not working as expected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_QueryInterface() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %6 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %7 = or i32 %5, %6
  %8 = bitcast i32** %1 to i8**
  %9 = call i64 @CoCreateInstance(i32* @CLSID_XMLView, i32* null, i32 %7, i32* @IID_IUnknown, i8** %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @FAILED(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %95

15:                                               ; preds = %0
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i64, i64* %4, align 8
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i32*, i32** %1, align 8
  %23 = bitcast i32** %2 to i8**
  %24 = call i64 @IUnknown_QueryInterface(i32* %22, i32* @IID_IPersistMoniker, i8** %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* %4, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @IUnknown_Release(i32* %31)
  %33 = load i32*, i32** %1, align 8
  %34 = bitcast i32** %2 to i8**
  %35 = call i64 @IUnknown_QueryInterface(i32* %33, i32* @IID_IPersistHistory, i8** %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %4, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @IUnknown_Release(i32* %42)
  %44 = load i32*, i32** %1, align 8
  %45 = bitcast i32** %2 to i8**
  %46 = call i64 @IUnknown_QueryInterface(i32* %44, i32* @IID_IOleCommandTarget, i8** %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @S_OK, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i64, i64* %4, align 8
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i64 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @IUnknown_Release(i32* %53)
  %55 = load i32*, i32** %1, align 8
  %56 = bitcast i32** %2 to i8**
  %57 = call i64 @IUnknown_QueryInterface(i32* %55, i32* @IID_IOleObject, i8** %56)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @S_OK, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load i64, i64* %4, align 8
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i64 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = call i32 @IUnknown_Release(i32* %64)
  %66 = load i32*, i32** %1, align 8
  %67 = bitcast i32** %3 to i8**
  %68 = call i64 @IUnknown_QueryInterface(i32* %66, i32* @IID_IHTMLDocument, i8** %67)
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @S_OK, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = load i64, i64* %4, align 8
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i64 %73)
  %75 = load i32*, i32** %3, align 8
  %76 = bitcast i32** %2 to i8**
  %77 = call i64 @IHTMLDocument_QueryInterface(i32* %75, i32* @IID_IUnknown, i8** %76)
  store i64 %77, i64* %4, align 8
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %4, align 8
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i64 %82)
  %84 = load i32*, i32** %2, align 8
  %85 = load i32*, i32** %1, align 8
  %86 = icmp eq i32* %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %89 = load i32*, i32** %2, align 8
  %90 = call i32 @IUnknown_Release(i32* %89)
  %91 = load i32*, i32** %3, align 8
  %92 = call i32 @IHTMLDocument_Release(i32* %91)
  %93 = load i32*, i32** %1, align 8
  %94 = call i32 @IUnknown_Release(i32* %93)
  br label %95

95:                                               ; preds = %15, %13
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @IHTMLDocument_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IHTMLDocument_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
