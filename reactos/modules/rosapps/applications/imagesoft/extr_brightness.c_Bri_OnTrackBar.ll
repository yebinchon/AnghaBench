; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_brightness.c_Bri_OnTrackBar.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/imagesoft/extr_brightness.c_Bri_OnTrackBar.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @Bri_OnTrackBar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Bri_OnTrackBar(%struct.TYPE_3__* %0, i32 %1) #0 {
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
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** @BASECOLOUR, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i8* %29, i8** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i8* %29, i8** %35, align 8
  br label %84

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @IDC_BRI_RED, align 4
  %39 = call i64 @IsDlgButtonChecked(i32 %37, i32 %38)
  %40 = load i64, i64* @BST_CHECKED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** @BASECOLOUR, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  br label %83

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @IDC_BRI_GREEN, align 4
  %54 = call i64 @IsDlgButtonChecked(i32 %52, i32 %53)
  %55 = load i64, i64* @BST_CHECKED, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** @BASECOLOUR, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  br label %82

66:                                               ; preds = %51
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @IDC_BRI_BLUE, align 4
  %69 = call i64 @IsDlgButtonChecked(i32 %67, i32 %68)
  %70 = load i64, i64* @BST_CHECKED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %66
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** @BASECOLOUR, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %72, %66
  br label %82

82:                                               ; preds = %81, %57
  br label %83

83:                                               ; preds = %82, %42
  br label %84

84:                                               ; preds = %83, %23
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @GetDC(i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @AdjustBrightness(i32 %91, i32 %94, i32 %97, i32 %98, i8* %101, i8* %104, i8* %107)
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @ReleaseDC(i32 %111, i32 %112)
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SetDlgItemInt(i32, i32, i8*, i32) #1

declare dso_local i64 @IsDlgButtonChecked(i32, i32) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @AdjustBrightness(i32, i32, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
