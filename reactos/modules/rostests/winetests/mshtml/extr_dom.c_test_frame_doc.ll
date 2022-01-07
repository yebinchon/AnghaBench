; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_frame_doc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_frame_doc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@window_iids = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"content_doc != elem_doc\0A\00", align 1
@IID_IHTMLFrameElement3 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"get_contentDocument failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"contentDocument == NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"contentDocument != contentWindow.document\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"IHTMLFrameElement3 not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @test_frame_doc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_frame_doc(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @get_frame_content_window(i32* %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* @window_iids, align 4
  %15 = call i32 @test_ifaces(i32* %13, i32 %14)
  %16 = load i32*, i32** %8, align 8
  %17 = call i32* @get_window_doc(i32* %16)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @IHTMLWindow2_Release(i32* %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @get_elem_doc(i32* %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @iface_cmp(i32* %22, i32* %23)
  %25 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %59, label %28

28:                                               ; preds = %2
  %29 = load i32*, i32** %3, align 8
  %30 = bitcast i32** %7 to i8**
  %31 = call i32 @IUnknown_QueryInterface(i32* %29, i32* @IID_IHTMLFrameElement3, i8** %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @SUCCEEDED(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %28
  store i32* null, i32** %10, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @IHTMLFrameElement3_get_contentDocument(i32* %36, i32** %10)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @S_OK, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @iface_cmp(i32* %48, i32* %49)
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @IDispatch_Release(i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @IHTMLFrameElement3_Release(i32* %54)
  br label %58

56:                                               ; preds = %28
  %57 = call i32 @win_skip(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %35
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i32*, i32** %6, align 8
  %61 = call i32 @IHTMLDocument2_Release(i32* %60)
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @IHTMLDocument2_Release(i32* %62)
  ret void
}

declare dso_local i32* @get_frame_content_window(i32*) #1

declare dso_local i32 @test_ifaces(i32*, i32) #1

declare dso_local i32* @get_window_doc(i32*) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

declare dso_local i32* @get_elem_doc(i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @iface_cmp(i32*, i32*) #1

declare dso_local i32 @IUnknown_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IHTMLFrameElement3_get_contentDocument(i32*, i32**) #1

declare dso_local i32 @IDispatch_Release(i32*) #1

declare dso_local i32 @IHTMLFrameElement3_Release(i32*) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @IHTMLDocument2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
