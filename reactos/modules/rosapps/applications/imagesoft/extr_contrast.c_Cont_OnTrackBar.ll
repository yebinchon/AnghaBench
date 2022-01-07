; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_contrast.c_Cont_OnTrackBar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_contrast.c_Cont_OnTrackBar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i32, i32 }

@IDC_BRI_TRACKBAR = common dso_local global i32 0, align 4
@TBM_GETPOS = common dso_local global i32 0, align 4
@IDC_BRI_EDIT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_BRI_FULL = common dso_local global i32 0, align 4
@BST_CHECKED = common dso_local global i64 0, align 8
@BASECOLOUR = common dso_local global i8* null, align 8
@IDC_BRI_RED = common dso_local global i32 0, align 4
@IDC_BRI_GREEN = common dso_local global i32 0, align 4
@IDC_BRI_BLUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @Cont_OnTrackBar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Cont_OnTrackBar(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @IDC_BRI_TRACKBAR, align 4
  %10 = load i32, i32* @TBM_GETPOS, align 4
  %11 = call i64 @SendDlgItemMessage(i32 %8, i32 %9, i32 %10, i32 0, i32 0)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @IDC_BRI_EDIT, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @FALSE, align 4
  %17 = call i32 @SetDlgItemInt(i32 %13, i32 %14, i8* %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IDC_BRI_FULL, align 4
  %20 = call i64 @IsDlgButtonChecked(i32 %18, i32 %19)
  %21 = load i64, i64* @BST_CHECKED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %2
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** @BASECOLOUR, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = add nsw i64 %28, 100
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i8* %30, i8** %34, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  store i8* %30, i8** %36, align 8
  br label %88

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @IDC_BRI_RED, align 4
  %40 = call i64 @IsDlgButtonChecked(i32 %38, i32 %39)
  %41 = load i64, i64* @BST_CHECKED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** @BASECOLOUR, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = add nsw i64 %48, 100
  %50 = inttoptr i64 %49 to i8*
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  br label %87

53:                                               ; preds = %37
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @IDC_BRI_GREEN, align 4
  %56 = call i64 @IsDlgButtonChecked(i32 %54, i32 %55)
  %57 = load i64, i64* @BST_CHECKED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i8*, i8** %7, align 8
  %61 = load i8*, i8** @BASECOLOUR, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = add nsw i64 %64, 100
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %86

69:                                               ; preds = %53
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @IDC_BRI_BLUE, align 4
  %72 = call i64 @IsDlgButtonChecked(i32 %70, i32 %71)
  %73 = load i64, i64* @BST_CHECKED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** @BASECOLOUR, align 8
  %78 = ptrtoint i8* %76 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = add nsw i64 %80, 100
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %75, %69
  br label %86

86:                                               ; preds = %85, %59
  br label %87

87:                                               ; preds = %86, %43
  br label %88

88:                                               ; preds = %87, %23
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @GetDC(i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @AdjustContrast(i32 %95, i32 %98, i32 %101, i32 %102, i8* %105, i8* %108, i8* %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @ReleaseDC(i32 %115, i32 %116)
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i64 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SetDlgItemInt(i32, i32, i8*, i32) #1

declare dso_local i64 @IsDlgButtonChecked(i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @AdjustContrast(i32, i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
