; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_UIDeactivate.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_UIDeactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@call_UIActivate = common dso_local global i64 0, align 8
@CallUIActivate_AfterShow = common dso_local global i64 0, align 8
@InPlaceUIWindow_SetActiveObject = common dso_local global i32 0, align 4
@CallUIActivate_None = common dso_local global i64 0, align 8
@SetActiveObject_null = common dso_local global i32 0, align 4
@HideUI = common dso_local global i32 0, align 4
@OnUIDeactivate = common dso_local global i32 0, align 4
@view = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"UIActivate failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_UIDeactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_UIDeactivate() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @call_UIActivate, align 8
  %3 = load i64, i64* @CallUIActivate_AfterShow, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @InPlaceUIWindow_SetActiveObject, align 4
  %7 = call i32 @SET_EXPECT(i32 %6)
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i64, i64* @call_UIActivate, align 8
  %10 = load i64, i64* @CallUIActivate_None, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* @SetActiveObject_null, align 4
  %14 = call i32 @SET_EXPECT(i32 %13)
  %15 = load i32, i32* @HideUI, align 4
  %16 = call i32 @SET_EXPECT(i32 %15)
  %17 = load i32, i32* @OnUIDeactivate, align 4
  %18 = call i32 @SET_EXPECT(i32 %17)
  br label %19

19:                                               ; preds = %12, %8
  %20 = load i32, i32* @view, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i64 @IOleDocumentView_UIActivate(i32 %20, i32 %21)
  store i64 %22, i64* %1, align 8
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %1, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* @call_UIActivate, align 8
  %30 = load i64, i64* @CallUIActivate_None, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %19
  %33 = load i32, i32* @SetActiveObject_null, align 4
  %34 = call i32 @CHECK_CALLED(i32 %33)
  %35 = load i32, i32* @HideUI, align 4
  %36 = call i32 @CHECK_CALLED(i32 %35)
  %37 = load i32, i32* @OnUIDeactivate, align 4
  %38 = call i32 @CHECK_CALLED(i32 %37)
  br label %39

39:                                               ; preds = %32, %19
  %40 = load i64, i64* @call_UIActivate, align 8
  %41 = load i64, i64* @CallUIActivate_AfterShow, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @InPlaceUIWindow_SetActiveObject, align 4
  %45 = call i32 @CHECK_CALLED(i32 %44)
  br label %46

46:                                               ; preds = %43, %39
  ret void
}

declare dso_local i32 @SET_EXPECT(i32) #1

declare dso_local i64 @IOleDocumentView_UIActivate(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @CHECK_CALLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
