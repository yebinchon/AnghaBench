; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_input.c_swaybar_seat_free.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_input.c_swaybar_seat_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_seat = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swaybar_seat_free(%struct.swaybar_seat* %0) #0 {
  %2 = alloca %struct.swaybar_seat*, align 8
  store %struct.swaybar_seat* %0, %struct.swaybar_seat** %2, align 8
  %3 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %4 = icmp ne %struct.swaybar_seat* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %52

6:                                                ; preds = %1
  %7 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %8 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %14 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @wl_pointer_release(i32* %16)
  br label %18

18:                                               ; preds = %12, %6
  %19 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %20 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %26 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @wl_surface_destroy(i32* %28)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %32 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %38 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @wl_touch_release(i32* %40)
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %44 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wl_seat_destroy(i32 %45)
  %47 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %48 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %47, i32 0, i32 0
  %49 = call i32 @wl_list_remove(i32* %48)
  %50 = load %struct.swaybar_seat*, %struct.swaybar_seat** %2, align 8
  %51 = call i32 @free(%struct.swaybar_seat* %50)
  br label %52

52:                                               ; preds = %42, %5
  ret void
}

declare dso_local i32 @wl_pointer_release(i32*) #1

declare dso_local i32 @wl_surface_destroy(i32*) #1

declare dso_local i32 @wl_touch_release(i32*) #1

declare dso_local i32 @wl_seat_destroy(i32) #1

declare dso_local i32 @wl_list_remove(i32*) #1

declare dso_local i32 @free(%struct.swaybar_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
