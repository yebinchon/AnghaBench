; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_output.c_reset_outputs.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_output.c_reset_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.output_config** }
%struct.output_config = type { i32 }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@output_name_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_outputs() #0 {
  %1 = alloca %struct.output_config*, align 8
  %2 = alloca i32, align 4
  store %struct.output_config* null, %struct.output_config** %1, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = load i32, i32* @output_name_cmp, align 4
  %7 = call i32 @list_seq_find(%struct.TYPE_3__* %5, i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.output_config**, %struct.output_config*** %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.output_config*, %struct.output_config** %15, i64 %17
  %19 = load %struct.output_config*, %struct.output_config** %18, align 8
  store %struct.output_config* %19, %struct.output_config** %1, align 8
  br label %23

20:                                               ; preds = %0
  %21 = call i32 @new_output_config(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = call %struct.output_config* @store_output_config(i32 %21)
  store %struct.output_config* %22, %struct.output_config** %1, align 8
  br label %23

23:                                               ; preds = %20, %10
  %24 = load %struct.output_config*, %struct.output_config** %1, align 8
  %25 = call i32 @apply_output_config_to_outputs(%struct.output_config* %24)
  ret void
}

declare dso_local i32 @list_seq_find(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local %struct.output_config* @store_output_config(i32) #1

declare dso_local i32 @new_output_config(i8*) #1

declare dso_local i32 @apply_output_config_to_outputs(%struct.output_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
