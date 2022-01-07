; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_empty.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { %struct.TYPE_2__, %struct.options_table_entry* }
%struct.TYPE_2__ = type { i32 }
%struct.options = type { i32 }
%struct.options_table_entry = type { i32, i32 }

@OPTIONS_TABLE_IS_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.options_entry* @options_empty(%struct.options* %0, %struct.options_table_entry* %1) #0 {
  %3 = alloca %struct.options*, align 8
  %4 = alloca %struct.options_table_entry*, align 8
  %5 = alloca %struct.options_entry*, align 8
  store %struct.options* %0, %struct.options** %3, align 8
  store %struct.options_table_entry* %1, %struct.options_table_entry** %4, align 8
  %6 = load %struct.options*, %struct.options** %3, align 8
  %7 = load %struct.options_table_entry*, %struct.options_table_entry** %4, align 8
  %8 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.options_entry* @options_add(%struct.options* %6, i32 %9)
  store %struct.options_entry* %10, %struct.options_entry** %5, align 8
  %11 = load %struct.options_table_entry*, %struct.options_table_entry** %4, align 8
  %12 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %13 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %12, i32 0, i32 1
  store %struct.options_table_entry* %11, %struct.options_table_entry** %13, align 8
  %14 = load %struct.options_table_entry*, %struct.options_table_entry** %4, align 8
  %15 = getelementptr inbounds %struct.options_table_entry, %struct.options_table_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @OPTIONS_TABLE_IS_ARRAY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  %22 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @RB_INIT(i32* %23)
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.options_entry*, %struct.options_entry** %5, align 8
  ret %struct.options_entry* %26
}

declare dso_local %struct.options_entry* @options_add(%struct.options*, i32) #1

declare dso_local i32 @RB_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
