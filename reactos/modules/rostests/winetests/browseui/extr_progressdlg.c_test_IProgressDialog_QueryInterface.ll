; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/browseui/extr_progressdlg.c_test_IProgressDialog_QueryInterface.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/browseui/extr_progressdlg.c_test_IProgressDialog_QueryInterface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLSID_ProgressDialog = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_IProgressDialog = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"CoCreateInstance for IProgressDialog returned 0x%x\0A\00", align 1
@IID_IUnknown = common dso_local global i32 0, align 4
@E_POINTER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"got 0x%x (expected E_POINTER)\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"QueryInterface (IUnknown) returned 0x%x\0A\00", align 1
@IID_IOleWindow = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"QueryInterface (IOleWindow) returned 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"QueryInterface (IProgressDialog) returned 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_IProgressDialog_QueryInterface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_IProgressDialog_QueryInterface() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %7 = bitcast i32** %1 to i8*
  %8 = call i64 @CoCreateInstance(i32* @CLSID_ProgressDialog, i32* null, i32 %6, i32* @IID_IProgressDialog, i8* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @FAILED(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @win_skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %74

15:                                               ; preds = %0
  %16 = load i32*, i32** %1, align 8
  %17 = call i64 @IProgressDialog_QueryInterface(i32* %16, i32* @IID_IUnknown, i8** null)
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @E_POINTER, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %1, align 8
  %25 = bitcast i32** %4 to i8**
  %26 = call i64 @IProgressDialog_QueryInterface(i32* %24, i32* @IID_IUnknown, i8** %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @S_OK, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @ok(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @SUCCEEDED(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %15
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @IUnknown_Release(i32* %37)
  br label %39

39:                                               ; preds = %36, %15
  %40 = load i32*, i32** %1, align 8
  %41 = bitcast i32** %3 to i8**
  %42 = call i64 @IProgressDialog_QueryInterface(i32* %40, i32* @IID_IOleWindow, i8** %41)
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @S_OK, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @ok(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %47)
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @SUCCEEDED(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %39
  %53 = load i32*, i32** %3, align 8
  %54 = bitcast i32** %2 to i8**
  %55 = call i64 @IOleWindow_QueryInterface(i32* %53, i32* @IID_IProgressDialog, i8** %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @SUCCEEDED(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i32*, i32** %2, align 8
  %67 = call i32 @IProgressDialog_Release(i32* %66)
  br label %68

68:                                               ; preds = %65, %52
  %69 = load i32*, i32** %3, align 8
  %70 = call i32 @IOleWindow_Release(i32* %69)
  br label %71

71:                                               ; preds = %68, %39
  %72 = load i32*, i32** %1, align 8
  %73 = call i32 @IProgressDialog_Release(i32* %72)
  br label %74

74:                                               ; preds = %71, %12
  ret void
}

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i32 @win_skip(i8*, i64) #1

declare dso_local i64 @IProgressDialog_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i64 @IOleWindow_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IProgressDialog_Release(i32*) #1

declare dso_local i32 @IOleWindow_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
