; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_CloseView.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_CloseView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@view = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Show failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"CloseView failed: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"SetInPlaceSite failed: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"inplacesite=%p, expected NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CloseView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CloseView() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  store i32* inttoptr (i64 4278255360 to i32*), i32** %1, align 8
  %3 = load i32, i32* @view, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %46

6:                                                ; preds = %0
  %7 = load i32, i32* @view, align 4
  %8 = load i32, i32* @FALSE, align 4
  %9 = call i64 @IOleDocumentView_Show(i32 %7, i32 %8)
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @S_OK, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @ok(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i32, i32* @view, align 4
  %17 = call i64 @IOleDocumentView_CloseView(i32 %16, i32 0)
  store i64 %17, i64* %2, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @S_OK, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* @view, align 4
  %25 = call i64 @IOleDocumentView_SetInPlaceSite(i32 %24, i32* null)
  store i64 %25, i64* %2, align 8
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @S_OK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = load i64, i64* %2, align 8
  %31 = call i32 @ok(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @view, align 4
  %33 = call i64 @IOleDocumentView_GetInPlaceSite(i32 %32, i32** %1)
  store i64 %33, i64* %2, align 8
  %34 = load i64, i64* %2, align 8
  %35 = load i64, i64* @S_OK, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %2, align 8
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %38)
  %40 = load i32*, i32** %1, align 8
  %41 = icmp eq i32* %40, null
  %42 = zext i1 %41 to i32
  %43 = load i32*, i32** %1, align 8
  %44 = ptrtoint i32* %43 to i64
  %45 = call i32 @ok(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %6, %5
  ret void
}

declare dso_local i64 @IOleDocumentView_Show(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @IOleDocumentView_CloseView(i32, i32) #1

declare dso_local i64 @IOleDocumentView_SetInPlaceSite(i32, i32*) #1

declare dso_local i64 @IOleDocumentView_GetInPlaceSite(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
