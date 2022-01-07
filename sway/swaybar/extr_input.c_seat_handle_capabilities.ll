; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_input.c_seat_handle_capabilities.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_input.c_seat_handle_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_seat = type { i32 }
%struct.swaybar_seat = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32*, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@WL_SEAT_CAPABILITY_POINTER = common dso_local global i32 0, align 4
@pointer_listener = common dso_local global i32 0, align 4
@WL_SEAT_CAPABILITY_TOUCH = common dso_local global i32 0, align 4
@touch_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_seat*, i32)* @seat_handle_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_handle_capabilities(i8* %0, %struct.wl_seat* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_seat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.swaybar_seat*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wl_seat* %1, %struct.wl_seat** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.swaybar_seat*
  store %struct.swaybar_seat* %9, %struct.swaybar_seat** %7, align 8
  %10 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %11 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %17 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @wl_pointer_release(i32* %19)
  %21 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %22 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %15, %3
  %25 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %26 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %32 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @wl_touch_release(i32* %34)
  %36 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %37 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %30, %24
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @WL_SEAT_CAPABILITY_POINTER, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %84

44:                                               ; preds = %39
  %45 = load %struct.wl_seat*, %struct.wl_seat** %5, align 8
  %46 = call i32* @wl_seat_get_pointer(%struct.wl_seat* %45)
  %47 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %48 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %51 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %44
  %57 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %58 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %56
  %63 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %64 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @wl_compositor_create_surface(i32 %67)
  %69 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %70 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i64 %68, i64* %71, align 8
  %72 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %73 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @assert(i64 %75)
  br label %77

77:                                               ; preds = %62, %56, %44
  %78 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %79 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %83 = call i32 @wl_pointer_add_listener(i32* %81, i32* @pointer_listener, %struct.swaybar_seat* %82)
  br label %84

84:                                               ; preds = %77, %39
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @WL_SEAT_CAPABILITY_TOUCH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.wl_seat*, %struct.wl_seat** %5, align 8
  %91 = call i32* @wl_seat_get_touch(%struct.wl_seat* %90)
  %92 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %93 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32* %91, i32** %94, align 8
  %95 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %96 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.swaybar_seat*, %struct.swaybar_seat** %7, align 8
  %100 = call i32 @wl_touch_add_listener(i32* %98, i32* @touch_listener, %struct.swaybar_seat* %99)
  br label %101

101:                                              ; preds = %89, %84
  ret void
}

declare dso_local i32 @wl_pointer_release(i32*) #1

declare dso_local i32 @wl_touch_release(i32*) #1

declare dso_local i32* @wl_seat_get_pointer(%struct.wl_seat*) #1

declare dso_local i64 @wl_compositor_create_surface(i32) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @wl_pointer_add_listener(i32*, i32*, %struct.swaybar_seat*) #1

declare dso_local i32* @wl_seat_get_touch(%struct.wl_seat*) #1

declare dso_local i32 @wl_touch_add_listener(i32*, i32*, %struct.swaybar_seat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
