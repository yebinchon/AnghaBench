; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_brightness.c_Bri_OnInitDialog.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_brightness.c_Bri_OnInitDialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i8*, %struct.TYPE_12__, %struct.TYPE_10__*, i8*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@ProcessHeap = common dso_local global i32 0, align 4
@IDC_PICPREVIEW = common dso_local global i32 0, align 4
@IMAGE_BITMAP = common dso_local global i32 0, align 4
@LR_CREATEDIBSECTION = common dso_local global i32 0, align 4
@IDC_BRI_FULL = common dso_local global i32 0, align 4
@BM_SETCHECK = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i32 0, align 4
@IDC_BRI_TRACKBAR = common dso_local global i32 0, align 4
@TBM_SETRANGE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TBM_SETPOS = common dso_local global i32 0, align 4
@BASECOLOUR = common dso_local global i64 0, align 8
@IDC_BRI_EDIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"100\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_11__*, i32, i64)* @Bri_OnInitDialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @Bri_OnInitDialog(%struct.TYPE_11__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @ProcessHeap, align 4
  %9 = call i64 @HeapAlloc(i32 %8, i32 0, i32 64)
  %10 = inttoptr i64 %9 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %12 = icmp ne %struct.TYPE_11__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %124

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_10__*
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 5
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %18, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  br label %120

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @IDC_PICPREVIEW, align 4
  %29 = call i32 @GetDlgItem(i32 %27, i32 %28)
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = call i32 @GetClientRect(i32 %34, %struct.TYPE_12__* %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IMAGE_BITMAP, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @LR_CREATEDIBSECTION, align 4
  %55 = call i64 @CopyImage(i32 %44, i32 %45, i32 %49, i32 %53, i32 %54)
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 6
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %26
  br label %120

64:                                               ; preds = %26
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IMAGE_BITMAP, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @LR_CREATEDIBSECTION, align 4
  %82 = call i64 @CopyImage(i32 %71, i32 %72, i32 %76, i32 %80, i32 %81)
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %64
  br label %120

91:                                               ; preds = %64
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @IDC_BRI_FULL, align 4
  %100 = load i32, i32* @BM_SETCHECK, align 4
  %101 = load i32, i32* @BST_CHECKED, align 4
  %102 = call i32 @SendDlgItemMessage(i32 %98, i32 %99, i32 %100, i32 %101, i64 0)
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @IDC_BRI_TRACKBAR, align 4
  %105 = load i32, i32* @TBM_SETRANGE, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = call i64 @MAKELONG(i32 0, i32 200)
  %108 = call i32 @SendDlgItemMessage(i32 %103, i32 %104, i32 %105, i32 %106, i64 %107)
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @IDC_BRI_TRACKBAR, align 4
  %111 = load i32, i32* @TBM_SETPOS, align 4
  %112 = load i32, i32* @TRUE, align 4
  %113 = load i64, i64* @BASECOLOUR, align 8
  %114 = call i32 @SendDlgItemMessage(i32 %109, i32 %110, i32 %111, i32 %112, i64 %113)
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @IDC_BRI_EDIT, align 4
  %117 = call i32 @_T(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %118 = call i32 @SetDlgItemText(i32 %115, i32 %116, i32 %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %4, align 8
  br label %124

120:                                              ; preds = %90, %63, %25
  %121 = load i32, i32* @ProcessHeap, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %123 = call i32 @HeapFree(i32 %121, i32 0, %struct.TYPE_11__* %122)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %124

124:                                              ; preds = %120, %91, %13
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %125
}

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetClientRect(i32, %struct.TYPE_12__*) #1

declare dso_local i64 @CopyImage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SendDlgItemMessage(i32, i32, i32, i32, i64) #1

declare dso_local i64 @MAKELONG(i32, i32) #1

declare dso_local i32 @SetDlgItemText(i32, i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
