; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_output.c_find_output_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_output.c_find_output_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_config = type { i32 }
%struct.sway_output = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.output_config* @find_output_config(%struct.sway_output* %0) #0 {
  %2 = alloca %struct.sway_output*, align 8
  %3 = alloca [128 x i8], align 16
  store %struct.sway_output* %0, %struct.sway_output** %2, align 8
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %5 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %6 = call i32 @output_get_identifier(i8* %4, i32 128, %struct.sway_output* %5)
  %7 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %8 = load %struct.sway_output*, %struct.sway_output** %2, align 8
  %9 = call %struct.output_config* @get_output_config(i8* %7, %struct.sway_output* %8)
  ret %struct.output_config* %9
}

declare dso_local i32 @output_get_identifier(i8*, i32, %struct.sway_output*) #1

declare dso_local %struct.output_config* @get_output_config(i8*, %struct.sway_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
