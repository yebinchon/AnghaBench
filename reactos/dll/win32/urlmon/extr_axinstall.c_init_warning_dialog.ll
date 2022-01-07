; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_init_warning_dialog.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_axinstall.c_init_warning_dialog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }

@ctxW = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ID_AXINSTALL_LOCATION = common dso_local global i32 0, align 4
@ID_AXINSTALL_ICON = common dso_local global i32 0, align 4
@STM_SETICON = common dso_local global i32 0, align 4
@OIC_WARNING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*)* @init_warning_dialog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_warning_dialog(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ctxW, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = call i32 @SetPropW(i32 %8, i32 %9, %struct.TYPE_5__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IUri_GetDisplayUri(i32 %18, i32* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @FAILED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @ID_AXINSTALL_LOCATION, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @SetDlgItemTextW(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SysFreeString(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ID_AXINSTALL_ICON, align 4
  %34 = load i32, i32* @STM_SETICON, align 4
  %35 = load i64, i64* @OIC_WARNING, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = call i64 @LoadIconW(i32 0, i32* %36)
  %38 = trunc i64 %37 to i32
  %39 = call i32 @SendDlgItemMessageW(i32 %32, i32 %33, i32 %34, i32 %38, i32 0)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 4, i32* %41, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @update_counter(%struct.TYPE_5__* %42, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @SetTimer(i32 %45, i32 1, i32 1000, i32* null)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %25, %23, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @SetPropW(i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @IUri_GetDisplayUri(i32, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @SetDlgItemTextW(i32, i32, i32) #1

declare dso_local i32 @SysFreeString(i32) #1

declare dso_local i32 @SendDlgItemMessageW(i32, i32, i32, i32, i32) #1

declare dso_local i64 @LoadIconW(i32, i32*) #1

declare dso_local i32 @update_counter(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SetTimer(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
