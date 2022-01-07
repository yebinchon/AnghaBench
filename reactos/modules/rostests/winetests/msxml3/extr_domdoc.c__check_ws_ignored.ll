; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c__check_ws_ignored.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msxml3/extr_domdoc.c__check_ws_ignored.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"//*[local-name()='html']\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"E1.E5.E1.E2.D1 E2.E5.E1.E2.D1\00", align 1
@.str.2 = private unnamed_addr constant [110 x i8] c"[4]1.E1.E5.E1.E2.D1 T2.E1.E5.E1.E2.D1 E3.E1.E5.E1.E2.D1 E4.E1.E5.E1.E2.D1 E5.E1.E5.E1.E2.D1 E6.E1.E5.E1.E2.D1\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c" This is a description.\00", align 1
@.str.4 = private unnamed_addr constant [126 x i8] c"T1.E2.E5.E1.E2.D1 E2.E2.E5.E1.E2.D1 T3.E2.E5.E1.E2.D1 E4.E2.E5.E1.E2.D1 T5.E2.E5.E1.E2.D1 E6.E2.E5.E1.E2.D1 T7.E2.E5.E1.E2.D1\00", align 1
@.str.5 = private unnamed_addr constant [80 x i8] c"\0A                This is a description with preserved whitespace. \0A            \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32*, i8*)* @_check_ws_ignored to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_check_ws_ignored(i32 %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @_bstr_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @IXMLDOMDocument2_selectNodes(i32* %13, i32 %14, i32** %11)
  %16 = call i32 @helper_ole_check_ver(i32 %15)
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @IXMLDOMNodeList_get_item(i32* %17, i32 0, i32** %9)
  %19 = call i32 @helper_ole_check_ver(i32 %18)
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @IXMLDOMNodeList_get_item(i32* %20, i32 1, i32** %10)
  %22 = call i32 @helper_ole_check_ver(i32 %21)
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @IXMLDOMNodeList_reset(i32* %23)
  %25 = call i32 @helper_ole_check_ver(i32 %24)
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @helper_expect_list_and_release(i32* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 @IXMLDOMNode_get_childNodes(i32* %28, i32** %11)
  %30 = call i32 @helper_ole_check_ver(i32 %29)
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @helper_expect_list_and_release(i32* %31, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @IXMLDOMNode_get_text(i32* %33, i32* %12)
  %35 = call i32 @helper_ole_check_ver(i32 %34)
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %4
  %39 = load i32, i32* %12, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @helper_expect_bstr_and_release(i32 %39, i8* %40)
  br label %45

42:                                               ; preds = %4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @helper_expect_bstr_and_release(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @IXMLDOMNode_Release(i32* %46)
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @IXMLDOMNode_get_childNodes(i32* %48, i32** %11)
  %50 = call i32 @helper_ole_check_ver(i32 %49)
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @helper_expect_list_and_release(i32* %51, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @IXMLDOMNode_get_text(i32* %53, i32* %12)
  %55 = call i32 @helper_ole_check_ver(i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @helper_expect_bstr_and_release(i32 %56, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @IXMLDOMNode_Release(i32* %58)
  ret void
}

declare dso_local i32 @helper_ole_check_ver(i32) #1

declare dso_local i32 @IXMLDOMDocument2_selectNodes(i32*, i32, i32**) #1

declare dso_local i32 @_bstr_(i8*) #1

declare dso_local i32 @IXMLDOMNodeList_get_item(i32*, i32, i32**) #1

declare dso_local i32 @IXMLDOMNodeList_reset(i32*) #1

declare dso_local i32 @helper_expect_list_and_release(i32*, i8*) #1

declare dso_local i32 @IXMLDOMNode_get_childNodes(i32*, i32**) #1

declare dso_local i32 @IXMLDOMNode_get_text(i32*, i32*) #1

declare dso_local i32 @helper_expect_bstr_and_release(i32, i8*) #1

declare dso_local i32 @IXMLDOMNode_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
