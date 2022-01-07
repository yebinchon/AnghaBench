; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_events.c_run_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_events.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@IID_IPropertyNotifySink = common dso_local global i32 0, align 4
@PropertyNotifySink = common dso_local global i32 0, align 4
@doc_complete = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"get_body failed: %08x\0A\00", align 1
@window = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"get_parentWindow failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"window == NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Could not get document body. Assuming no Gecko installed.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (i32*)*)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_test(i8* %0, i32 (i32*)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32 (i32*)*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 (i32*)* %1, i32 (i32*)** %4, align 8
  store i32* null, i32** %6, align 8
  %9 = call i32* (...) @create_document()
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %72

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @set_client_site(i32* %14, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @doc_load_string(i32* %17, i8* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @do_advise(i32* %20, i32* @IID_IPropertyNotifySink, i32* @PropertyNotifySink)
  br label %22

22:                                               ; preds = %30, %13
  %23 = load i32, i32* @doc_complete, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = call i64 @GetMessageA(i32* %7, i32* null, i32 0, i32 0)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i1 [ false, %22 ], [ %27, %25 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = call i32 @TranslateMessage(i32* %7)
  %32 = call i32 @DispatchMessageA(i32* %7)
  br label %22

33:                                               ; preds = %28
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @IHTMLDocument2_get_body(i32* %34, i32** %6)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @S_OK, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i64, i64* %8, align 8
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %33
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @IHTMLElement_Release(i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @IHTMLDocument2_get_parentWindow(i32* %47, i32** @window)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* @S_OK, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %8, align 8
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load i32*, i32** @window, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32 (i32*)*, i32 (i32*)** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 %59(i32* %60)
  %62 = load i32*, i32** @window, align 8
  %63 = call i32 @IHTMLWindow2_Release(i32* %62)
  store i32* null, i32** @window, align 8
  br label %66

64:                                               ; preds = %33
  %65 = call i32 @skip(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %44
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @FALSE, align 4
  %69 = call i32 @set_client_site(i32* %67, i32 %68)
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @IHTMLDocument2_Release(i32* %70)
  br label %72

72:                                               ; preds = %66, %12
  ret void
}

declare dso_local i32* @create_document(...) #1

declare dso_local i32 @set_client_site(i32*, i32) #1

declare dso_local i32 @doc_load_string(i32*, i8*) #1

declare dso_local i32 @do_advise(i32*, i32*, i32*) #1

declare dso_local i64 @GetMessageA(i32*, i32*, i32, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessageA(i32*) #1

declare dso_local i64 @IHTMLDocument2_get_body(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

declare dso_local i64 @IHTMLDocument2_get_parentWindow(i32*, i32**) #1

declare dso_local i32 @IHTMLWindow2_Release(i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @IHTMLDocument2_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
