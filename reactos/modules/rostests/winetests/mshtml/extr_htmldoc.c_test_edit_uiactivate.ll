; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_edit_uiactivate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_edit_uiactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IOleDocumentView = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"IOleObject_QueryInterface failed with error 0x%08x\0A\00", align 1
@OnFocus_TRUE = common dso_local global i32 0, align 4
@SetActiveObject = common dso_local global i32 0, align 4
@ShowUI = common dso_local global i32 0, align 4
@InPlaceUIWindow_SetActiveObject = common dso_local global i32 0, align 4
@InPlaceFrame_SetBorderSpace = common dso_local global i32 0, align 4
@expect_status_text = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"IOleDocumentView_UIActivate failed with error 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_edit_uiactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_edit_uiactivate(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32** %3 to i8**
  %7 = call i64 @IOleObject_QueryInterface(i32* %5, i32* @IID_IOleDocumentView, i8** %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @S_OK, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @ok(i32 %11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i32, i32* @OnFocus_TRUE, align 4
  %15 = call i32 @SET_EXPECT(i32 %14)
  %16 = load i32, i32* @SetActiveObject, align 4
  %17 = call i32 @SET_EXPECT(i32 %16)
  %18 = load i32, i32* @ShowUI, align 4
  %19 = call i32 @SET_EXPECT(i32 %18)
  %20 = load i32, i32* @InPlaceUIWindow_SetActiveObject, align 4
  %21 = call i32 @SET_EXPECT(i32 %20)
  %22 = load i32, i32* @InPlaceFrame_SetBorderSpace, align 4
  %23 = call i32 @SET_EXPECT(i32 %22)
  store i32* null, i32** @expect_status_text, align 8
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @TRUE, align 4
  %26 = call i64 @IOleDocumentView_UIActivate(i32* %24, i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @OnFocus_TRUE, align 4
  %34 = call i32 @CHECK_CALLED(i32 %33)
  %35 = load i32, i32* @SetActiveObject, align 4
  %36 = call i32 @CHECK_CALLED(i32 %35)
  %37 = load i32, i32* @ShowUI, align 4
  %38 = call i32 @CHECK_CALLED(i32 %37)
  %39 = load i32, i32* @InPlaceUIWindow_SetActiveObject, align 4
  %40 = call i32 @CHECK_CALLED(i32 %39)
  %41 = load i32, i32* @InPlaceFrame_SetBorderSpace, align 4
  %42 = call i32 @CHECK_CALLED(i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @IOleDocumentView_Release(i32* %43)
  ret void
}

declare dso_local i64 @IOleObject_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IOleDocumentView_UIActivate(i32*, i32) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

declare dso_local i32 @IOleDocumentView_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
