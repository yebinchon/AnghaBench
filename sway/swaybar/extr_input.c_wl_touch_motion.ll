; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_input.c_wl_touch_motion.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_input.c_wl_touch_motion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl_touch = type { i32 }
%struct.swaybar_seat = type { i32, i32 }
%struct.touch_slot = type { i32, i32, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_touch*, i32, i32, i32, i32)* @wl_touch_motion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl_touch_motion(i8* %0, %struct.wl_touch* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_touch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.swaybar_seat*, align 8
  %14 = alloca %struct.touch_slot*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.wl_touch* %1, %struct.wl_touch** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.swaybar_seat*
  store %struct.swaybar_seat* %18, %struct.swaybar_seat** %13, align 8
  %19 = load %struct.swaybar_seat*, %struct.swaybar_seat** %13, align 8
  %20 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %19, i32 0, i32 1
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.touch_slot* @get_touch_slot(i32* %20, i32 %21)
  store %struct.touch_slot* %22, %struct.touch_slot** %14, align 8
  %23 = load %struct.touch_slot*, %struct.touch_slot** %14, align 8
  %24 = icmp ne %struct.touch_slot* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  br label %84

26:                                               ; preds = %6
  %27 = load %struct.touch_slot*, %struct.touch_slot** %14, align 8
  %28 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.touch_slot*, %struct.touch_slot** %14, align 8
  %31 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  %34 = load %struct.touch_slot*, %struct.touch_slot** %14, align 8
  %35 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %33, %38
  %40 = mul nsw i32 %39, 100
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i8* @wl_fixed_to_double(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.touch_slot*, %struct.touch_slot** %14, align 8
  %45 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i8* @wl_fixed_to_double(i32 %46)
  %48 = load %struct.touch_slot*, %struct.touch_slot** %14, align 8
  %49 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.touch_slot*, %struct.touch_slot** %14, align 8
  %51 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.touch_slot*, %struct.touch_slot** %14, align 8
  %54 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  %57 = load %struct.touch_slot*, %struct.touch_slot** %14, align 8
  %58 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %56, %61
  %63 = mul nsw i32 %62, 100
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @abs(i32 %64) #3
  %66 = sdiv i32 %65, 20
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @abs(i32 %67) #3
  %69 = sdiv i32 %68, 20
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %26
  %72 = load %struct.swaybar_seat*, %struct.swaybar_seat** %13, align 8
  %73 = getelementptr inbounds %struct.swaybar_seat, %struct.swaybar_seat* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.touch_slot*, %struct.touch_slot** %14, align 8
  %76 = getelementptr inbounds %struct.touch_slot, %struct.touch_slot* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %15, align 4
  %80 = sub nsw i32 %78, %79
  %81 = icmp slt i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @workspace_next(i32 %74, %struct.TYPE_2__* %77, i32 %82)
  br label %84

84:                                               ; preds = %25, %71, %26
  ret void
}

declare dso_local %struct.touch_slot* @get_touch_slot(i32*, i32) #1

declare dso_local i8* @wl_fixed_to_double(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @workspace_next(i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
