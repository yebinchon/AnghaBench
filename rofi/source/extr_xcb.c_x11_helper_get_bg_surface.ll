; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_helper_get_bg_surface.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_xcb.c_x11_helper_get_bg_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@xcb = common dso_local global %struct.TYPE_3__* null, align 8
@netatoms = common dso_local global i32* null, align 8
@ESETROOT_PMAP_ID = common dso_local global i64 0, align 8
@XCB_NONE = common dso_local global i64 0, align 8
@root_visual = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @x11_helper_get_bg_surface() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xcb, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xcb, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = load i32*, i32** @netatoms, align 8
  %10 = load i64, i64* @ESETROOT_PMAP_ID, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @get_root_pixmap(i32 %5, %struct.TYPE_4__* %8, i32 %12)
  store i64 %13, i64* %2, align 8
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @XCB_NONE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32* null, i32** %1, align 8
  br label %35

18:                                               ; preds = %0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xcb, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load i32, i32* @root_visual, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xcb, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @xcb, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @cairo_xcb_surface_create(i32 %21, i64 %22, i32 %23, i32 %28, i32 %33)
  store i32* %34, i32** %1, align 8
  br label %35

35:                                               ; preds = %18, %17
  %36 = load i32*, i32** %1, align 8
  ret i32* %36
}

declare dso_local i64 @get_root_pixmap(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32* @cairo_xcb_surface_create(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
