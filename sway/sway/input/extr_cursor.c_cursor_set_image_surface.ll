; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_set_image_surface.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_cursor_set_image_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_cursor = type { i32, i64, %struct.wl_client*, i8*, i8*, %struct.wlr_surface*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wlr_surface = type { i32 }
%struct.wl_client = type { i32 }

@WL_SEAT_CAPABILITY_POINTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cursor_set_image_surface(%struct.sway_cursor* %0, %struct.wlr_surface* %1, i8* %2, i8* %3, %struct.wl_client* %4) #0 {
  %6 = alloca %struct.sway_cursor*, align 8
  %7 = alloca %struct.wlr_surface*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wl_client*, align 8
  store %struct.sway_cursor* %0, %struct.sway_cursor** %6, align 8
  store %struct.wlr_surface* %1, %struct.wlr_surface** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.wl_client* %4, %struct.wl_client** %10, align 8
  %11 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %12 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %11, i32 0, i32 7
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @WL_SEAT_CAPABILITY_POINTER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %50

22:                                               ; preds = %5
  %23 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %24 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %23, i32 0, i32 6
  store i32* null, i32** %24, align 8
  %25 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %26 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %27 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %26, i32 0, i32 5
  store %struct.wlr_surface* %25, %struct.wlr_surface** %27, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %30 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %33 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.wl_client*, %struct.wl_client** %10, align 8
  %35 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %36 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %35, i32 0, i32 2
  store %struct.wl_client* %34, %struct.wl_client** %36, align 8
  %37 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %38 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %50

42:                                               ; preds = %22
  %43 = load %struct.sway_cursor*, %struct.sway_cursor** %6, align 8
  %44 = getelementptr inbounds %struct.sway_cursor, %struct.sway_cursor* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wlr_surface*, %struct.wlr_surface** %7, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @wlr_cursor_set_surface(i32 %45, %struct.wlr_surface* %46, i8* %47, i8* %48)
  br label %50

50:                                               ; preds = %42, %41, %21
  ret void
}

declare dso_local i32 @wlr_cursor_set_surface(i32, %struct.wlr_surface*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
