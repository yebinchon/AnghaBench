; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_control.c_Control_UpdateListViewStyle.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_control.c_Control_UpdateListViewStyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GWL_STYLE = common dso_local global i32 0, align 4
@LISTVIEW_DEFSTYLE = common dso_local global i32 0, align 4
@FCIDM_SHVIEW_BIGICON = common dso_local global i32 0, align 4
@FCIDM_SHVIEW_REPORTVIEW = common dso_local global i32 0, align 4
@MF_BYCOMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32)* @Control_UpdateListViewStyle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Control_UpdateListViewStyle(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GWL_STYLE, align 4
  %13 = load i32, i32* @LISTVIEW_DEFSTYLE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @SetWindowLongW(i32 %11, i32 %12, i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @GetMenu(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @GetSubMenu(i32 %21, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @FCIDM_SHVIEW_BIGICON, align 4
  %25 = load i32, i32* @FCIDM_SHVIEW_REPORTVIEW, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @MF_BYCOMMAND, align 4
  %28 = call i32 @CheckMenuRadioItem(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  ret void
}

declare dso_local i32 @SetWindowLongW(i32, i32, i32) #1

declare dso_local i32 @GetMenu(i32) #1

declare dso_local i32 @GetSubMenu(i32, i32) #1

declare dso_local i32 @CheckMenuRadioItem(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
