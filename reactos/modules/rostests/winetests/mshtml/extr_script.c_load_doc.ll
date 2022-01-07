; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_load_doc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_script.c_load_doc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@load_doc.ucPtr = internal constant [11 x i8] c"background\00", align 1
@IID_IPropertyNotifySink = common dso_local global i32 0, align 4
@PropertyNotifySink = common dso_local global i32 0, align 4
@doc_complete = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"get_body failed: %08x\0A\00", align 1
@IID_NULL = common dso_local global i32 0, align 4
@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"GetIDsOfNames(background) failed %08x\0A\00", align 1
@DISPID_IHTMLBODYELEMENT_BACKGROUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Incorrect dispID got (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @load_doc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_doc(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i64 -1, i64* %8, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @load_string(i32* %10, i8* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @do_advise(i32* %13, i32* @IID_IPropertyNotifySink, i32* @PropertyNotifySink)
  br label %15

15:                                               ; preds = %23, %2
  %16 = load i32, i32* @doc_complete, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = call i64 @GetMessageW(i32* %6, i32* null, i32 0, i32 0)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = call i32 @TranslateMessage(i32* %6)
  %25 = call i32 @DispatchMessageW(i32* %6)
  br label %15

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @IHTMLDocument2_get_body(i32* %27, i32** %5)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @S_OK, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %33)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @load_doc.ucPtr, i64 0, i64 0), i8** %9, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %37 = call i64 @IHTMLElement_GetIDsOfNames(i32* %35, i32* @IID_NULL, i8** %9, i32 1, i32 %36, i64* %8)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @ok(i32 %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @DISPID_IHTMLBODYELEMENT_BACKGROUND, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @IHTMLElement_Release(i32* %50)
  ret void
}

declare dso_local i32 @load_string(i32*, i8*) #1

declare dso_local i32 @do_advise(i32*, i32*, i32*) #1

declare dso_local i64 @GetMessageW(i32*, i32*, i32, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessageW(i32*) #1

declare dso_local i64 @IHTMLDocument2_get_body(i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IHTMLElement_GetIDsOfNames(i32*, i32*, i8**, i32, i32, i64*) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
