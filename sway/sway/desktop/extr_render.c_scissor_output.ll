; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_scissor_output.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_render.c_scissor_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlr_output = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.wlr_renderer = type { i32 }
%struct.wlr_box = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlr_output*, %struct.TYPE_3__*)* @scissor_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scissor_output(%struct.wlr_output* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.wlr_output*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.wlr_renderer*, align 8
  %6 = alloca %struct.wlr_box, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wlr_output* %0, %struct.wlr_output** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %10 = load %struct.wlr_output*, %struct.wlr_output** %3, align 8
  %11 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.wlr_renderer* @wlr_backend_get_renderer(i32 %12)
  store %struct.wlr_renderer* %13, %struct.wlr_renderer** %5, align 8
  %14 = load %struct.wlr_renderer*, %struct.wlr_renderer** %5, align 8
  %15 = call i32 @assert(%struct.wlr_renderer* %14)
  %16 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub nsw i64 %19, %22
  store i64 %23, i64* %16, align 8
  %24 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  store i64 %31, i64* %24, align 8
  %32 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %32, align 8
  %36 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %6, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %36, align 8
  %40 = load %struct.wlr_output*, %struct.wlr_output** %3, align 8
  %41 = call i32 @wlr_output_transformed_resolution(%struct.wlr_output* %40, i32* %7, i32* %8)
  %42 = load %struct.wlr_output*, %struct.wlr_output** %3, align 8
  %43 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @wlr_output_transform_invert(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @wlr_box_transform(%struct.wlr_box* %6, %struct.wlr_box* %6, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.wlr_renderer*, %struct.wlr_renderer** %5, align 8
  %51 = call i32 @wlr_renderer_scissor(%struct.wlr_renderer* %50, %struct.wlr_box* %6)
  ret void
}

declare dso_local %struct.wlr_renderer* @wlr_backend_get_renderer(i32) #1

declare dso_local i32 @assert(%struct.wlr_renderer*) #1

declare dso_local i32 @wlr_output_transformed_resolution(%struct.wlr_output*, i32*, i32*) #1

declare dso_local i32 @wlr_output_transform_invert(i32) #1

declare dso_local i32 @wlr_box_transform(%struct.wlr_box*, %struct.wlr_box*, i32, i32, i32) #1

declare dso_local i32 @wlr_renderer_scissor(%struct.wlr_renderer*, %struct.wlr_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
