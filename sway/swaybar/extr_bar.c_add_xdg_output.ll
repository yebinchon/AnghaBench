; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_bar.c_add_xdg_output.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_bar.c_add_xdg_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@xdg_output_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swaybar_output*)* @add_xdg_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_xdg_output(%struct.swaybar_output* %0) #0 {
  %2 = alloca %struct.swaybar_output*, align 8
  store %struct.swaybar_output* %0, %struct.swaybar_output** %2, align 8
  %3 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %4 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  %9 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %10 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %18 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %23 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @zxdg_output_manager_v1_get_xdg_output(i32* %21, i32 %24)
  %26 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %27 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %29 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %32 = call i32 @zxdg_output_v1_add_listener(i32* %30, i32* @xdg_output_listener, %struct.swaybar_output* %31)
  br label %33

33:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @zxdg_output_manager_v1_get_xdg_output(i32*, i32) #1

declare dso_local i32 @zxdg_output_v1_add_listener(i32*, i32*, %struct.swaybar_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
