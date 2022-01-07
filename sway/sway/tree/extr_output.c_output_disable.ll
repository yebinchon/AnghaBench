; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_disable.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sway_output = type { i32, i32, i32*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Expected an enabled output\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Disabling output '%s'\00", align 1
@untrack_output = common dso_local global i32 0, align 4
@root = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_disable(%struct.sway_output* %0) #0 {
  %2 = alloca %struct.sway_output*, align 8
  %3 = alloca i32, align 4
  store %struct.sway_output* %0, %struct.sway_output** %2, align 8
  %4 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %5 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @sway_assert(i32 %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load i32, i32* @SWAY_DEBUG, align 4
  %12 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %13 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sway_log(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %19 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %22 = call i32 @wl_signal_emit(i32* %20, %struct.sway_output* %21)
  %23 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %24 = call i32 @output_evacuate(%struct.sway_output* %23)
  %25 = load i32, i32* @untrack_output, align 4
  %26 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %27 = call i32 @root_for_each_container(i32 %25, %struct.sway_output* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %32 = call i32 @list_find(i32 %30, %struct.sway_output* %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @root, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @list_del(i32 %35, i32 %36)
  %38 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %39 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %41 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %43 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  %44 = call i32 (...) @arrange_root()
  br label %45

45:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @wl_signal_emit(i32*, %struct.sway_output*) #1

declare dso_local i32 @output_evacuate(%struct.sway_output*) #1

declare dso_local i32 @root_for_each_container(i32, %struct.sway_output*) #1

declare dso_local i32 @list_find(i32, %struct.sway_output*) #1

declare dso_local i32 @list_del(i32, i32) #1

declare dso_local i32 @arrange_root(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
