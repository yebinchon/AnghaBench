; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_events.c_get_iframe_doc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_events.c_get_iframe_doc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IHTMLFrameBase2 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"QueryInterface(IID_IHTMLFrameBase2) failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"get_contentWindow failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"window == NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"get_document failed: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"result == NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_iframe_doc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_iframe_doc(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %5, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = bitcast i32** %4 to i8**
  %9 = call i64 @IHTMLIFrameElement_QueryInterface(i32* %7, i32* @IID_IHTMLFrameBase2, i8** %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %3, align 8
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @S_OK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %50

19:                                               ; preds = %1
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @IHTMLFrameBase2_get_contentWindow(i32* %20, i32** %6)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @S_OK, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %3, align 8
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %19
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @IHTMLWindow2_get_document(i32* %35, i32** %5)
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i64, i64* @S_OK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %3, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @IHTMLWindow2_Release(i32* %47)
  br label %49

49:                                               ; preds = %34, %19
  br label %50

50:                                               ; preds = %49, %1
  %51 = load i32*, i32** %4, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @IHTMLFrameBase2_Release(i32* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32*, i32** %5, align 8
  ret i32* %57
}

declare dso_local i64 @IHTMLIFrameElement_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @IHTMLFrameBase2_get_contentWindow(i32*, i32**) #1

declare dso_local i64 @IHTMLWindow2_get_document(i32*, i32**) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

declare dso_local i32 @IHTMLFrameBase2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
