; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_create.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sway_output = type { %struct.TYPE_5__, i8*, i32, %struct.TYPE_4__, i32, %struct.wlr_output*, i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.wlr_output = type { i32, %struct.sway_output* }

@N_OUTPUT = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_output* @output_create(%struct.wlr_output* %0) #0 {
  %2 = alloca %struct.wlr_output*, align 8
  %3 = alloca %struct.sway_output*, align 8
  store %struct.wlr_output* %0, %struct.wlr_output** %2, align 8
  %4 = call %struct.sway_output* @calloc(i32 1, i32 48)
  store %struct.sway_output* %4, %struct.sway_output** %3, align 8
  %5 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %6 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %5, i32 0, i32 6
  %7 = load i32, i32* @N_OUTPUT, align 4
  %8 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %9 = call i32 @node_init(i32* %6, i32 %7, %struct.sway_output* %8)
  %10 = load %struct.wlr_output*, %struct.wlr_output** %2, align 8
  %11 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %12 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %11, i32 0, i32 5
  store %struct.wlr_output* %10, %struct.wlr_output** %12, align 8
  %13 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %14 = load %struct.wlr_output*, %struct.wlr_output** %2, align 8
  %15 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %14, i32 0, i32 1
  store %struct.sway_output* %13, %struct.sway_output** %15, align 8
  %16 = load %struct.wlr_output*, %struct.wlr_output** %2, align 8
  %17 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %20 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %22 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @wl_signal_init(i32* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %28 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %27, i32 0, i32 2
  %29 = call i32 @wl_list_insert(i32* %26, i32* %28)
  %30 = call i8* (...) @create_list()
  %31 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %32 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = call i8* (...) @create_list()
  %34 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %35 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  ret %struct.sway_output* %37
}

declare dso_local %struct.sway_output* @calloc(i32, i32) #1

declare dso_local i32 @node_init(i32*, i32, %struct.sway_output*) #1

declare dso_local i32 @wl_signal_init(i32*) #1

declare dso_local i32 @wl_list_insert(i32*, i32*) #1

declare dso_local i8* @create_list(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
