; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_CreateSmallButtons.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_CreateSmallButtons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i32 }

@SM_CXSMICON = common dso_local global i32 0, align 4
@TOOLBARCLASSNAME = common dso_local global i32 0, align 4
@TOOLBAR_STYLE = common dso_local global i32 0, align 4
@hMainDialog = common dso_local global i32 0, align 4
@IDC_SAVE_TOOLBAR = common dso_local global i64 0, align 8
@hMainInstance = common dso_local global i32 0, align 4
@hSaveToolbar = common dso_local global i32 0, align 4
@ILC_COLOR32 = common dso_local global i32 0, align 4
@ILC_HIGHQUALITYSCALE = common dso_local global i32 0, align 4
@ILC_MIRROR = common dso_local global i32 0, align 4
@IDI_SAVE_16 = common dso_local global i64 0, align 8
@_RT_RCDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"save icon\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TB_SETIMAGELIST = common dso_local global i32 0, align 4
@TB_BUTTONSTRUCTSIZE = common dso_local global i32 0, align 4
@IDC_SAVE = common dso_local global i32 0, align 4
@BTNS_AUTOSIZE = common dso_local global i8* null, align 8
@TBSTATE_ENABLED = common dso_local global i8* null, align 8
@TB_ADDBUTTONS = common dso_local global i32 0, align 4
@IDC_HASH_TOOLBAR = common dso_local global i64 0, align 8
@hHashToolbar = common dso_local global i32 0, align 4
@IDI_HASH_16 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"hash icon\00", align 1
@IDC_HASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateSmallButtons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.TYPE_3__], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @SM_CXSMICON, align 4
  %12 = call i32 @GetSystemMetrics(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 28
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 20, i32* %6, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = icmp sge i32 %17, 20
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 10, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %16
  br label %21

21:                                               ; preds = %20, %15
  %22 = load i32, i32* @TOOLBARCLASSNAME, align 4
  %23 = load i32, i32* @TOOLBAR_STYLE, align 4
  %24 = load i32, i32* @hMainDialog, align 4
  %25 = load i64, i64* @IDC_SAVE_TOOLBAR, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @hMainInstance, align 4
  %28 = call i32 @CreateWindowEx(i32 0, i32 %22, i32* null, i32 %23, i32 0, i32 0, i32 0, i32 0, i32 %24, i32 %26, i32 %27, i32* null)
  store i32 %28, i32* @hSaveToolbar, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ILC_COLOR32, align 4
  %32 = load i32, i32* @ILC_HIGHQUALITYSCALE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ILC_MIRROR, align 4
  %35 = or i32 %33, %34
  %36 = call i64 @ImageList_Create(i32 %29, i32 %30, i32 %35, i32 1, i32 0)
  store i64 %36, i64* %3, align 8
  %37 = load i32, i32* @hMainInstance, align 4
  %38 = load i64, i64* @IDI_SAVE_16, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @MAKEINTRESOURCEA(i64 %41)
  %43 = load i32, i32* @_RT_RCDATA, align 4
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i8* @GetResource(i32 %37, i32 %42, i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %10, i32 %44)
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @CreateIconFromResourceEx(i8* %46, i32 %47, i32 %48, i32 196608, i32 0, i32 0, i32 0)
  store i32 %49, i32* %4, align 4
  %50 = load i64, i64* %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @ImageList_AddIcon(i64 %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @DestroyIcon(i32 %53)
  %55 = load i32, i32* @hSaveToolbar, align 4
  %56 = load i32, i32* @TB_SETIMAGELIST, align 4
  %57 = load i64, i64* %3, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @SendMessage(i32 %55, i32 %56, i32 0, i32 %58)
  %60 = load i32, i32* @hSaveToolbar, align 4
  %61 = load i32, i32* @TB_BUTTONSTRUCTSIZE, align 4
  %62 = call i32 @SendMessage(i32 %60, i32 %61, i32 32, i32 0)
  %63 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %64 = call i32 @memset(%struct.TYPE_3__* %63, i32 0, i32 32)
  %65 = load i32, i32* @IDC_SAVE, align 4
  %66 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** @BTNS_AUTOSIZE, align 8
  %69 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 16
  %71 = load i8*, i8** @TBSTATE_ENABLED, align 8
  %72 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i64 0, i64* %75, align 16
  %76 = load i32, i32* @hSaveToolbar, align 4
  %77 = load i32, i32* @TB_ADDBUTTONS, align 4
  %78 = ptrtoint [1 x %struct.TYPE_3__]* %8 to i32
  %79 = call i32 @SendMessage(i32 %76, i32 %77, i32 1, i32 %78)
  %80 = load i32, i32* @TOOLBARCLASSNAME, align 4
  %81 = load i32, i32* @TOOLBAR_STYLE, align 4
  %82 = load i32, i32* @hMainDialog, align 4
  %83 = load i64, i64* @IDC_HASH_TOOLBAR, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @hMainInstance, align 4
  %86 = call i32 @CreateWindowEx(i32 0, i32 %80, i32* null, i32 %81, i32 0, i32 0, i32 0, i32 0, i32 %82, i32 %84, i32 %85, i32* null)
  store i32 %86, i32* @hHashToolbar, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @ILC_COLOR32, align 4
  %90 = load i32, i32* @ILC_HIGHQUALITYSCALE, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @ILC_MIRROR, align 4
  %93 = or i32 %91, %92
  %94 = call i64 @ImageList_Create(i32 %87, i32 %88, i32 %93, i32 1, i32 0)
  store i64 %94, i64* %3, align 8
  %95 = load i32, i32* @hMainInstance, align 4
  %96 = load i64, i64* @IDI_HASH_16, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %96, %98
  %100 = call i32 @MAKEINTRESOURCEA(i64 %99)
  %101 = load i32, i32* @_RT_RCDATA, align 4
  %102 = load i32, i32* @FALSE, align 4
  %103 = call i8* @GetResource(i32 %95, i32 %100, i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %10, i32 %102)
  store i8* %103, i8** %9, align 8
  %104 = load i8*, i8** %9, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i32 @CreateIconFromResourceEx(i8* %104, i32 %105, i32 %106, i32 196608, i32 0, i32 0, i32 0)
  store i32 %107, i32* %5, align 4
  %108 = load i64, i64* %3, align 8
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @ImageList_AddIcon(i64 %108, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @DestroyIcon(i32 %111)
  %113 = load i32, i32* @hHashToolbar, align 4
  %114 = load i32, i32* @TB_SETIMAGELIST, align 4
  %115 = load i64, i64* %3, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 @SendMessage(i32 %113, i32 %114, i32 0, i32 %116)
  %118 = load i32, i32* @hHashToolbar, align 4
  %119 = load i32, i32* @TB_BUTTONSTRUCTSIZE, align 4
  %120 = call i32 @SendMessage(i32 %118, i32 %119, i32 32, i32 0)
  %121 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %122 = call i32 @memset(%struct.TYPE_3__* %121, i32 0, i32 32)
  %123 = load i32, i32* @IDC_HASH, align 4
  %124 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 8
  %126 = load i8*, i8** @BTNS_AUTOSIZE, align 8
  %127 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  store i8* %126, i8** %128, align 16
  %129 = load i8*, i8** @TBSTATE_ENABLED, align 8
  %130 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %8, i64 0, i64 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 16
  %134 = load i32, i32* @hHashToolbar, align 4
  %135 = load i32, i32* @TB_ADDBUTTONS, align 4
  %136 = ptrtoint [1 x %struct.TYPE_3__]* %8 to i32
  %137 = call i32 @SendMessage(i32 %134, i32 %135, i32 1, i32 %136)
  ret void
}

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @CreateWindowEx(i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ImageList_Create(i32, i32, i32, i32, i32) #1

declare dso_local i8* @GetResource(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @MAKEINTRESOURCEA(i64) #1

declare dso_local i32 @CreateIconFromResourceEx(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ImageList_AddIcon(i64, i32) #1

declare dso_local i32 @DestroyIcon(i32) #1

declare dso_local i32 @SendMessage(i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
