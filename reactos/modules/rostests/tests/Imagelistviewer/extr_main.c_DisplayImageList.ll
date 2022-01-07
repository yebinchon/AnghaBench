; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/Imagelistviewer/extr_main.c_DisplayImageList.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/Imagelistviewer/extr_main.c_DisplayImageList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i64, i64 }

@IDC_LSTVIEW = common dso_local global i32 0, align 4
@IDC_SYSTEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"shell32.dll\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@LVSIL_SMALL = common dso_local global i32 0, align 4
@IDC_DEVICE = common dso_local global i64 0, align 8
@LVIF_TEXT = common dso_local global i32 0, align 4
@LVIF_IMAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DisplayImageList(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.TYPE_6__, align 8
  %9 = alloca [6 x i32], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32 (i32*, i32*)*, align 8
  %16 = alloca i32 (i32)*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 -1, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IDC_LSTVIEW, align 4
  %19 = call i32 @GetDlgItem(i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ListView_DeleteAllItems(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @IDC_SYSTEM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %2
  %26 = call i32 @_T(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = call i32* @LoadLibrary(i32 %26)
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %105

32:                                               ; preds = %25
  %33 = load i32*, i32** %14, align 8
  %34 = call i64 @GetProcAddress(i32* %33, i32 71)
  %35 = inttoptr i64 %34 to i32 (i32*, i32*)*
  store i32 (i32*, i32*)* %35, i32 (i32*, i32*)** %15, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = call i64 @GetProcAddress(i32* %36, i32 660)
  %38 = inttoptr i64 %37 to i32 (i32)*
  store i32 (i32)* %38, i32 (i32)** %16, align 8
  %39 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %15, align 8
  %40 = icmp eq i32 (i32*, i32*)* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32 (i32)*, i32 (i32)** %16, align 8
  %43 = icmp eq i32 (i32)* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41, %32
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @FreeLibrary(i32* %45)
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %105

48:                                               ; preds = %41
  %49 = load i32 (i32)*, i32 (i32)** %16, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i32 %49(i32 %50)
  %52 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %15, align 8
  %53 = call i32 %52(i32* %12, i32* %13)
  %54 = load i32, i32* %13, align 4
  %55 = call i64 @ImageList_GetImageCount(i32 %54)
  store i64 %55, i64* %10, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @LVSIL_SMALL, align 4
  %59 = call i32 @ListView_SetImageList(i32 %56, i32 %57, i32 %58)
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @FreeLibrary(i32* %60)
  br label %80

62:                                               ; preds = %2
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @IDC_DEVICE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 8, i32* %67, align 4
  %68 = call i32 @SetupDiGetClassImageList(%struct.TYPE_5__* %7)
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ImageList_GetImageCount(i32 %70)
  store i64 %71, i64* %10, align 8
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @LVSIL_SMALL, align 4
  %76 = call i32 @ListView_SetImageList(i32 %72, i32 %74, i32 %75)
  br label %79

77:                                               ; preds = %62
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %3, align 4
  br label %105

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79, %48
  %81 = load i32, i32* @LVIF_TEXT, align 4
  %82 = load i32, i32* @LVIF_IMAGE, align 4
  %83 = or i32 %81, %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  br label %85

85:                                               ; preds = %89, %80
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp sle i64 %86, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = load i64, i64* %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 4
  store i64 %90, i64* %91, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  store i64 0, i64* %92, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %95 = call i32 @_itot(i64 %93, i32* %94, i32 10)
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store i32 %95, i32* %96, align 8
  %97 = load i64, i64* %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  store i64 %97, i64* %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @ListView_InsertItem(i32 %99, %struct.TYPE_6__* %8)
  %101 = load i64, i64* %11, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %11, align 8
  br label %85

103:                                              ; preds = %85
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %77, %44, %30
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @ListView_DeleteAllItems(i32) #1

declare dso_local i32* @LoadLibrary(i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i64 @GetProcAddress(i32*, i32) #1

declare dso_local i32 @FreeLibrary(i32*) #1

declare dso_local i64 @ImageList_GetImageCount(i32) #1

declare dso_local i32 @ListView_SetImageList(i32, i32, i32) #1

declare dso_local i32 @SetupDiGetClassImageList(%struct.TYPE_5__*) #1

declare dso_local i32 @_itot(i64, i32*, i32) #1

declare dso_local i32 @ListView_InsertItem(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
