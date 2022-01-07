; ModuleID = '/home/carl/AnghaBench/sway/swaybar/extr_bar.c_destroy_layer_surface.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/extr_bar.c_destroy_layer_surface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swaybar_output = type { i32, i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_layer_surface(%struct.swaybar_output* %0) #0 {
  %2 = alloca %struct.swaybar_output*, align 8
  store %struct.swaybar_output* %0, %struct.swaybar_output** %2, align 8
  %3 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %4 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %23

8:                                                ; preds = %1
  %9 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %10 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @zwlr_layer_surface_v1_destroy(i32* %11)
  %13 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %14 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @wl_surface_attach(i32 %15, i32* null, i32 0, i32 0)
  %17 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %18 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %20 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.swaybar_output*, %struct.swaybar_output** %2, align 8
  %22 = getelementptr inbounds %struct.swaybar_output, %struct.swaybar_output* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %23

23:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @zwlr_layer_surface_v1_destroy(i32*) #1

declare dso_local i32 @wl_surface_attach(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
