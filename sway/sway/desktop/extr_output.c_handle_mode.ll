; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_mode.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_handle_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.wl_listener = type { i32 }
%struct.output_config = type { i64 }

@mode = common dso_local global i32 0, align 4
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Output %s has gained a CRTC, trying to enable it\00", align 1
@output = common dso_local global %struct.sway_output* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl_listener*, i8*)* @handle_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_mode(%struct.wl_listener* %0, i8* %1) #0 {
  %3 = alloca %struct.wl_listener*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca %struct.output_config*, align 8
  store %struct.wl_listener* %0, %struct.wl_listener** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wl_listener*, %struct.wl_listener** %3, align 8
  %8 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %9 = ptrtoint %struct.sway_output* %8 to i32
  %10 = load i32, i32* @mode, align 4
  %11 = call %struct.sway_output* @wl_container_of(%struct.wl_listener* %7, i32 %9, i32 %10)
  store %struct.sway_output* %11, %struct.sway_output** %5, align 8
  %12 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %13 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %2
  %17 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %18 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %16
  %22 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %23 = call %struct.output_config* @find_output_config(%struct.sway_output* %22)
  store %struct.output_config* %23, %struct.output_config** %6, align 8
  %24 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %25 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %21
  %31 = load %struct.output_config*, %struct.output_config** %6, align 8
  %32 = icmp ne %struct.output_config* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.output_config*, %struct.output_config** %6, align 8
  %35 = getelementptr inbounds %struct.output_config, %struct.output_config* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33, %30
  %39 = load i32, i32* @SWAY_DEBUG, align 4
  %40 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %41 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sway_log(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.output_config*, %struct.output_config** %6, align 8
  %47 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %48 = call i32 @apply_output_config(%struct.output_config* %46, %struct.sway_output* %47)
  br label %49

49:                                               ; preds = %38, %33, %21
  br label %71

50:                                               ; preds = %16, %2
  %51 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %52 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %57 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55, %50
  br label %71

61:                                               ; preds = %55
  %62 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %63 = call i32 @arrange_layers(%struct.sway_output* %62)
  %64 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %65 = call i32 @arrange_output(%struct.sway_output* %64)
  %66 = call i32 (...) @transaction_commit_dirty()
  %67 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %68 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @update_output_manager_config(i32 %69)
  br label %71

71:                                               ; preds = %61, %60, %49
  ret void
}

declare dso_local %struct.sway_output* @wl_container_of(%struct.wl_listener*, i32, i32) #1

declare dso_local %struct.output_config* @find_output_config(%struct.sway_output*) #1

declare dso_local i32 @sway_log(i32, i8*, i32) #1

declare dso_local i32 @apply_output_config(%struct.output_config*, %struct.sway_output*) #1

declare dso_local i32 @arrange_layers(%struct.sway_output*) #1

declare dso_local i32 @arrange_output(%struct.sway_output*) #1

declare dso_local i32 @transaction_commit_dirty(...) #1

declare dso_local i32 @update_output_manager_config(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
