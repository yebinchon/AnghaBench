; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_TogglePersistenceControls.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_TogglePersistenceControls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@fw = common dso_local global i64 0, align 8
@bsw = common dso_local global i64 0, align 8
@ssw = common dso_local global i64 0, align 8
@hMainDialog = common dso_local global i32 0, align 4
@IDC_PERSISTENCE_SIZE = common dso_local global i32 0, align 4
@IDC_PERSISTENCE_UNITS = common dso_local global i32 0, align 4
@GWL_EXSTYLE = common dso_local global i32 0, align 4
@WS_EX_RIGHT = common dso_local global i32 0, align 4
@IDC_PERSISTENCE_SLIDER = common dso_local global i32 0, align 4
@mw = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@SW_HIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TogglePersistenceControls(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* @fw, align 8
  %9 = load i64, i64* @bsw, align 8
  %10 = sub nsw i64 %8, %9
  %11 = load i64, i64* @ssw, align 8
  %12 = sub nsw i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* @hMainDialog, align 4
  %14 = load i32, i32* @IDC_PERSISTENCE_SIZE, align 4
  %15 = call i32 @GetDlgItem(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @hMainDialog, align 4
  %17 = load i32, i32* @IDC_PERSISTENCE_UNITS, align 4
  %18 = call i32 @GetDlgItem(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @GWL_EXSTYLE, align 4
  %21 = call i32 @GetWindowLongPtr(i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i64, i64* %2, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @WS_EX_RIGHT, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @WS_EX_RIGHT, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @GWL_EXSTYLE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @SetWindowLongPtr(i32 %34, i32 %35, i32 %36)
  %38 = load i64, i64* %2, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @GetWindowRect(i32 %41, %struct.TYPE_3__* %3)
  %43 = load i32, i32* @hMainDialog, align 4
  %44 = bitcast %struct.TYPE_3__* %3 to i32*
  %45 = call i32 @MapWindowPoints(i32* null, i32 %43, i32* %44, i32 2)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %47, %49
  %51 = load i64, i64* @ssw, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i64, i64* %7, align 8
  %54 = sub nsw i64 %53, %52
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %40, %33
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @GetWindowRect(i32 %56, %struct.TYPE_3__* %3)
  %58 = load i32, i32* @hMainDialog, align 4
  %59 = bitcast %struct.TYPE_3__* %3 to i32*
  %60 = call i32 @MapWindowPoints(i32* null, i32 %58, i32* %59, i32 2)
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @hMainDialog, align 4
  %63 = load i32, i32* @IDC_PERSISTENCE_SLIDER, align 4
  %64 = call i32 @GetDlgItem(i32 %62, i32 %63)
  %65 = load i64, i64* @mw, align 8
  %66 = load i64, i64* @bsw, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* @ssw, align 8
  %69 = add nsw i64 %67, %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %74, %76
  %78 = call i32 @SetWindowPos(i32 %61, i32 %64, i64 %69, i64 %71, i64 %72, i64 %77, i32 0)
  %79 = load i32, i32* %4, align 4
  %80 = load i64, i64* %2, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %55
  %83 = load i32, i32* @TRUE, align 4
  br label %86

84:                                               ; preds = %55
  %85 = load i32, i32* @FALSE, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = call i32 @EnableWindow(i32 %79, i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = load i64, i64* %2, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @TRUE, align 4
  br label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @FALSE, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  %98 = call i32 @EnableWindow(i32 %89, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = load i64, i64* %2, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @SW_SHOW, align 4
  br label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @SW_HIDE, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = call i32 @ShowWindow(i32 %99, i32 %107)
  ret void
}

declare dso_local i32 @GetDlgItem(i32, i32) #1

declare dso_local i32 @GetWindowLongPtr(i32, i32) #1

declare dso_local i32 @SetWindowLongPtr(i32, i32, i32) #1

declare dso_local i32 @GetWindowRect(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @MapWindowPoints(i32*, i32, i32*, i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @EnableWindow(i32, i32) #1

declare dso_local i32 @ShowWindow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
