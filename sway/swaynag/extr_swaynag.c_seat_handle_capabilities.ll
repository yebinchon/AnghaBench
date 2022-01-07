; ModuleID = '/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_seat_handle_capabilities.c'
source_filename = "/home/carl/AnghaBench/sway/swaynag/extr_swaynag.c_seat_handle_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_seat = type { i32 }
%struct.swaynag = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@WL_SEAT_CAPABILITY_POINTER = common dso_local global i32 0, align 4
@pointer_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_seat*, i32)* @seat_handle_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @seat_handle_capabilities(i8* %0, %struct.wl_seat* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wl_seat*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.swaynag*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.wl_seat* %1, %struct.wl_seat** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.swaynag*
  store %struct.swaynag* %10, %struct.swaynag** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @WL_SEAT_CAPABILITY_POINTER, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %18 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load %struct.wl_seat*, %struct.wl_seat** %5, align 8
  %24 = call i32* @wl_seat_get_pointer(%struct.wl_seat* %23)
  %25 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %26 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32* %24, i32** %27, align 8
  %28 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %29 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %33 = call i32 @wl_pointer_add_listener(i32* %31, i32* @pointer_listener, %struct.swaynag* %32)
  br label %53

34:                                               ; preds = %16, %3
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %34
  %38 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %39 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %45 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @wl_pointer_destroy(i32* %47)
  %49 = load %struct.swaynag*, %struct.swaynag** %7, align 8
  %50 = getelementptr inbounds %struct.swaynag, %struct.swaynag* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %43, %37, %34
  br label %53

53:                                               ; preds = %52, %22
  ret void
}

declare dso_local i32* @wl_seat_get_pointer(%struct.wl_seat*) #1

declare dso_local i32 @wl_pointer_add_listener(i32*, i32*, %struct.swaynag*) #1

declare dso_local i32 @wl_pointer_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
