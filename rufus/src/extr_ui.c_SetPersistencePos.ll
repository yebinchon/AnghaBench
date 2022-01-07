; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_ui.c_SetPersistencePos.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_ui.c_SetPersistencePos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@boot_type = common dso_local global i64 0, align 8
@BT_IMAGE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"0 (%s)\00", align 1
@MSG_124 = common dso_local global i32 0, align 4
@app_changed_size = common dso_local global i32 0, align 4
@hMainDialog = common dso_local global i32 0, align 4
@IDC_PERSISTENCE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetPersistencePos(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [64 x i8], align 16
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @boot_type, align 8
  %5 = load i64, i64* @BT_IMAGE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i32 @TogglePersistenceControls(i32 %11)
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %14 = load i64, i64* %2, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 @static_sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %24

17:                                               ; preds = %7, %1
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @TogglePersistenceControls(i32 %18)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %21 = load i32, i32* @MSG_124, align 4
  %22 = call i32 @lmprintf(i32 %21)
  %23 = call i32 @static_sprintf(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %17, %10
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* @app_changed_size, align 4
  %26 = load i32, i32* @hMainDialog, align 4
  %27 = load i32, i32* @IDC_PERSISTENCE_SIZE, align 4
  %28 = call i32 @GetDlgItem(i32 %26, i32 %27)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %30 = call i32 @SetWindowTextU(i32 %28, i8* %29)
  ret void
}

declare dso_local i32 @TogglePersistenceControls(i32) #1

declare dso_local i32 @static_sprintf(i8*, i8*, i32) #1

declare dso_local i32 @lmprintf(i32) #1

declare dso_local i32 @SetWindowTextU(i32, i8*) #1

declare dso_local i32 @GetDlgItem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
