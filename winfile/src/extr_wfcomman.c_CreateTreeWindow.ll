; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_CreateTreeWindow.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfcomman.c_CreateTreeWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@iNumWindows = common dso_local global i32 0, align 4
@hAppInstance = common dso_local global i32 0, align 4
@IDS_WINFILE = common dso_local global i32 0, align 4
@szTitle = common dso_local global i32 0, align 4
@IDS_TOOMANYWINDOWS = common dso_local global i32 0, align 4
@szMessage = common dso_local global i32 0, align 4
@hwndFrame = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4
@MB_ICONEXCLAMATION = common dso_local global i32 0, align 4
@szTreeClass = common dso_local global i32 0, align 4
@hwndMDIClient = common dso_local global i32 0, align 4
@WM_MDIGETACTIVE = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_MAXIMIZE = common dso_local global i32 0, align 4
@WM_MDICREATE = common dso_local global i32 0, align 4
@GWL_VIEW = common dso_local global i32 0, align 4
@dwNewView = common dso_local global i32 0, align 4
@GWL_SORT = common dso_local global i32 0, align 4
@dwNewSort = common dso_local global i32 0, align 4
@GWL_ATTRIBS = common dso_local global i32 0, align 4
@dwNewAttribs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @CreateTreeWindow(i32 %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_2__, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32, i32* @iNumWindows, align 4
  %17 = icmp sgt i32 %16, 26
  br i1 %17, label %18, label %38

18:                                               ; preds = %6
  %19 = load i32, i32* @hAppInstance, align 4
  %20 = load i32, i32* @IDS_WINFILE, align 4
  %21 = load i32, i32* @szTitle, align 4
  %22 = load i32, i32* @szTitle, align 4
  %23 = call i32 @COUNTOF(i32 %22)
  %24 = call i32 @LoadString(i32 %19, i32 %20, i32 %21, i32 %23)
  %25 = load i32, i32* @hAppInstance, align 4
  %26 = load i32, i32* @IDS_TOOMANYWINDOWS, align 4
  %27 = load i32, i32* @szMessage, align 4
  %28 = load i32, i32* @szMessage, align 4
  %29 = call i32 @COUNTOF(i32 %28)
  %30 = call i32 @LoadString(i32 %25, i32 %26, i32 %27, i32 %29)
  %31 = load i32, i32* @hwndFrame, align 4
  %32 = load i32, i32* @szMessage, align 4
  %33 = load i32, i32* @szTitle, align 4
  %34 = load i32, i32* @MB_OK, align 4
  %35 = load i32, i32* @MB_ICONEXCLAMATION, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @MessageBox(i32 %31, i32 %32, i32 %33, i32 %36)
  store i32* null, i32** %7, align 8
  br label %94

38:                                               ; preds = %6
  %39 = load i32, i32* @szTreeClass, align 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 8
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 7
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @hAppInstance, align 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 6
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 5
  store i8* %46, i8** %47, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* @hwndMDIClient, align 4
  %57 = load i32, i32* @WM_MDIGETACTIVE, align 4
  %58 = call i64 @SendMessage(i32 %56, i32 %57, i64 0, i64 0)
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %15, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %38
  %63 = load i32*, i32** %15, align 8
  %64 = load i32, i32* @GWL_STYLE, align 4
  %65 = call i32 @GetWindowLongPtr(i32* %63, i32 %64)
  %66 = load i32, i32* @WS_MAXIMIZE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* @WS_MAXIMIZE, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = or i64 %73, %71
  store i64 %74, i64* %72, align 8
  br label %75

75:                                               ; preds = %69, %62, %38
  %76 = load i32, i32* @hwndMDIClient, align 4
  %77 = load i32, i32* @WM_MDICREATE, align 4
  %78 = ptrtoint %struct.TYPE_2__* %14 to i64
  %79 = call i64 @SendMessage(i32 %76, i32 %77, i64 0, i64 %78)
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %15, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* @GWL_VIEW, align 4
  %83 = load i32, i32* @dwNewView, align 4
  %84 = call i32 @SetWindowLongPtr(i32* %81, i32 %82, i32 %83)
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* @GWL_SORT, align 4
  %87 = load i32, i32* @dwNewSort, align 4
  %88 = call i32 @SetWindowLongPtr(i32* %85, i32 %86, i32 %87)
  %89 = load i32*, i32** %15, align 8
  %90 = load i32, i32* @GWL_ATTRIBS, align 4
  %91 = load i32, i32* @dwNewAttribs, align 4
  %92 = call i32 @SetWindowLongPtr(i32* %89, i32 %90, i32 %91)
  %93 = load i32*, i32** %15, align 8
  store i32* %93, i32** %7, align 8
  br label %94

94:                                               ; preds = %75, %18
  %95 = load i32*, i32** %7, align 8
  ret i32* %95
}

declare dso_local i32 @LoadString(i32, i32, i32, i32) #1

declare dso_local i32 @COUNTOF(i32) #1

declare dso_local i32 @MessageBox(i32, i32, i32, i32) #1

declare dso_local i64 @SendMessage(i32, i32, i64, i64) #1

declare dso_local i32 @GetWindowLongPtr(i32*, i32) #1

declare dso_local i32 @SetWindowLongPtr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
