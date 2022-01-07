; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_Window.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_htmldoc.c_test_Window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@view = common dso_local global i32 0, align 4
@IID_IOleInPlaceActiveObject = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"Could not get IOleInPlaceActiveObject interface: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"GetWindow failed: %08x\0A\00", align 1
@doc_hwnd = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"tmp_hwnd=%p, expected %p\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"GetWindow returned %08x, expected E_FAIL\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"hwnd is destroyed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @test_Window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Window(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32* null, i32** %5, align 8
  %8 = load i32, i32* @view, align 4
  %9 = bitcast i32** %5 to i8**
  %10 = call i64 @IOleDocumentView_QueryInterface(i32 %8, i32* @IID_IOleInPlaceActiveObject, i8** %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @S_OK, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %7, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @FAILED(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %53

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @IOleInPlaceActiveObject_GetWindow(i32* %22, i64* %6)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %7, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @doc_hwnd, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @doc_hwnd, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %37, i64 %38)
  br label %50

40:                                               ; preds = %21
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @E_FAIL, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %7, align 8
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* @doc_hwnd, align 8
  %48 = call i32 @IsWindow(i64 %47)
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %40, %26
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @IOleInPlaceActiveObject_Release(i32* %51)
  br label %53

53:                                               ; preds = %50, %20
  ret void
}

declare dso_local i64 @IOleDocumentView_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @IOleInPlaceActiveObject_GetWindow(i32*, i64*) #1

declare dso_local i32 @IsWindow(i64) #1

declare dso_local i32 @IOleInPlaceActiveObject_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
