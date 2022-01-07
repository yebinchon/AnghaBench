; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_input.c_wl_touch_cancel.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_input.c_wl_touch_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_touch = type { i32 }
%struct.swaybar_seat = type { %struct.swaybar_touch }
%struct.swaybar_touch = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_touch*)* @wl_touch_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl_touch_cancel(i8* %0, %struct.wl_touch* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wl_touch*, align 8
  %5 = alloca %struct.swaybar_seat*, align 8
  %6 = alloca %struct.swaybar_touch*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wl_touch* %1, %struct.wl_touch** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.swaybar_seat*
  store %struct.swaybar_seat* %9, %struct.swaybar_seat** %5, align 8
  %10 = load %struct.swaybar_seat*, %struct.swaybar_seat** %5, align 8
  %11 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %10, i32 0, i32 0
  store %struct.swaybar_touch* %11, %struct.swaybar_touch** %6, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %22, %2
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.swaybar_touch*, %struct.swaybar_touch** %6, align 8
  %17 = getelementptr inbounds %struct.swaybar_touch, %struct.swaybar_touch* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %7, align 8
  br label %12

25:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
