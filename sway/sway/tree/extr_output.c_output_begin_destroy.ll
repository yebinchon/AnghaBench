; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_begin_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_begin_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Expected a disabled output\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Destroying output '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_begin_destroy(%struct.sway_output* %0) #0 {
  %2 = alloca %struct.sway_output*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %2, align 8
  %3 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %4 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @sway_assert(i32 %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %35

12:                                               ; preds = %1
  %13 = load i32, i32* @SWAY_DEBUG, align 4
  %14 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %15 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @sway_log(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %21 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %24 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %23, i32 0, i32 2
  %25 = call i32 @node_set_dirty(%struct.TYPE_4__* %24)
  %26 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %27 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %26, i32 0, i32 1
  %28 = call i32 @wl_list_remove(i32* %27)
  %29 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %30 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %34 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %33, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %34, align 8
  br label %35

35:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @node_set_dirty(%struct.TYPE_4__*) #1

declare dso_local i32 @wl_list_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
