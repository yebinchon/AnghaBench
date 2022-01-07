; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_array_free.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_array_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.options_array_item = type { i32 }

@options_array = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options_entry*, %struct.options_array_item*)* @options_array_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @options_array_free(%struct.options_entry* %0, %struct.options_array_item* %1) #0 {
  %3 = alloca %struct.options_entry*, align 8
  %4 = alloca %struct.options_array_item*, align 8
  store %struct.options_entry* %0, %struct.options_entry** %3, align 8
  store %struct.options_array_item* %1, %struct.options_array_item** %4, align 8
  %5 = load %struct.options_entry*, %struct.options_entry** %3, align 8
  %6 = load %struct.options_array_item*, %struct.options_array_item** %4, align 8
  %7 = getelementptr inbounds %struct.options_array_item, %struct.options_array_item* %6, i32 0, i32 0
  %8 = call i32 @options_value_free(%struct.options_entry* %5, i32* %7)
  %9 = load i32, i32* @options_array, align 4
  %10 = load %struct.options_entry*, %struct.options_entry** %3, align 8
  %11 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.options_array_item*, %struct.options_array_item** %4, align 8
  %14 = call i32 @RB_REMOVE(i32 %9, i32* %12, %struct.options_array_item* %13)
  %15 = load %struct.options_array_item*, %struct.options_array_item** %4, align 8
  %16 = call i32 @free(%struct.options_array_item* %15)
  ret void
}

declare dso_local i32 @options_value_free(%struct.options_entry*, i32*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.options_array_item*) #1

declare dso_local i32 @free(%struct.options_array_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
