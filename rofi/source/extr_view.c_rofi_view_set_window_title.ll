; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_set_window_title.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_view.c_rofi_view_set_window_title.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@xcb = common dso_local global %struct.TYPE_5__* null, align 8
@XCB_PROP_MODE_REPLACE = common dso_local global i32 0, align 4
@CacheState = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@XCB_ATOM_WM_NAME = common dso_local global i32 0, align 4
@XCB_ATOM_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_view_set_window_title(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @strlen(i8* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xcb, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheState, i32 0, i32 0), align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xcb, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xcb, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @xcb_change_property(i32 %8, i32 %9, i32 %10, i32 %14, i32 %18, i32 8, i32 %19, i8* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @xcb, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @CacheState, i32 0, i32 0), align 4
  %27 = load i32, i32* @XCB_ATOM_WM_NAME, align 4
  %28 = load i32, i32* @XCB_ATOM_STRING, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @xcb_change_property(i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 8, i32 %29, i8* %30)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xcb_change_property(i32, i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
