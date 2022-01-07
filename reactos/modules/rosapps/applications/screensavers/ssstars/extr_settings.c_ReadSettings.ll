; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_settings.c_ReadSettings.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/ssstars/extr_settings.c_ReadSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@IDC_SLIDER_NUM_OF_STARS = common dso_local global i32 0, align 4
@TBM_GETPOS = common dso_local global i32 0, align 4
@Settings = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IDC_TEXT_NUM_OF_STARS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDC_SLIDER_SPEED = common dso_local global i32 0, align 4
@IDC_TEXT_SPEED = common dso_local global i32 0, align 4
@IDC_COMBO_ROTATION = common dso_local global i32 0, align 4
@CB_GETCURSEL = common dso_local global i32 0, align 4
@IDC_CHECK_DOBLENDING = common dso_local global i32 0, align 4
@BM_GETCHECK = common dso_local global i32 0, align 4
@IDC_CHECK_PERSPECTIVE = common dso_local global i32 0, align 4
@IDC_CHECK_FILTERING = common dso_local global i32 0, align 4
@IDC_CHECK_SHADING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ReadSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadSettings(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @IDC_SLIDER_NUM_OF_STARS, align 4
  %5 = load i32, i32* @TBM_GETPOS, align 4
  %6 = call i8* @SendDlgItemMessage(i32 %3, i32 %4, i32 %5, i32 0, i32 0)
  store i8* %6, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 6), align 8
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @IDC_TEXT_NUM_OF_STARS, align 4
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 6), align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = call i32 @SetDlgItemInt(i32 %7, i32 %8, i8* %9, i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @IDC_SLIDER_SPEED, align 4
  %14 = load i32, i32* @TBM_GETPOS, align 4
  %15 = call i8* @SendDlgItemMessage(i32 %12, i32 %13, i32 %14, i32 0, i32 0)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 5), align 8
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @IDC_TEXT_SPEED, align 4
  %18 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 5), align 8
  %19 = load i32, i32* @FALSE, align 4
  %20 = call i32 @SetDlgItemInt(i32 %16, i32 %17, i8* %18, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @IDC_COMBO_ROTATION, align 4
  %23 = load i32, i32* @CB_GETCURSEL, align 4
  %24 = call i8* @SendDlgItemMessage(i32 %21, i32 %22, i32 %23, i32 0, i32 0)
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 4), align 8
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @IDC_CHECK_DOBLENDING, align 4
  %27 = load i32, i32* @BM_GETCHECK, align 4
  %28 = call i8* @SendDlgItemMessage(i32 %25, i32 %26, i32 %27, i32 0, i32 0)
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 3), align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @IDC_CHECK_PERSPECTIVE, align 4
  %31 = load i32, i32* @BM_GETCHECK, align 4
  %32 = call i8* @SendDlgItemMessage(i32 %29, i32 %30, i32 %31, i32 0, i32 0)
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 2), align 8
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @IDC_CHECK_FILTERING, align 4
  %35 = load i32, i32* @BM_GETCHECK, align 4
  %36 = call i8* @SendDlgItemMessage(i32 %33, i32 %34, i32 %35, i32 0, i32 0)
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 1), align 8
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @IDC_CHECK_SHADING, align 4
  %39 = load i32, i32* @BM_GETCHECK, align 4
  %40 = call i8* @SendDlgItemMessage(i32 %37, i32 %38, i32 %39, i32 0, i32 0)
  store i8* %40, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Settings, i32 0, i32 0), align 8
  ret void
}

declare dso_local i8* @SendDlgItemMessage(i32, i32, i32, i32, i32) #1

declare dso_local i32 @SetDlgItemInt(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
