; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_array_get.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_array_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.options_value = type { i32 }
%struct.options_entry = type { i32 }
%struct.options_array_item = type { %union.options_value }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.options_value* @options_array_get(%struct.options_entry* %0, i32 %1) #0 {
  %3 = alloca %union.options_value*, align 8
  %4 = alloca %struct.options_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.options_array_item*, align 8
  store %struct.options_entry* %0, %struct.options_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.options_entry*, %struct.options_entry** %4, align 8
  %8 = call i32 @OPTIONS_IS_ARRAY(%struct.options_entry* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %union.options_value* null, %union.options_value** %3, align 8
  br label %21

11:                                               ; preds = %2
  %12 = load %struct.options_entry*, %struct.options_entry** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.options_array_item* @options_array_item(%struct.options_entry* %12, i32 %13)
  store %struct.options_array_item* %14, %struct.options_array_item** %6, align 8
  %15 = load %struct.options_array_item*, %struct.options_array_item** %6, align 8
  %16 = icmp eq %struct.options_array_item* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store %union.options_value* null, %union.options_value** %3, align 8
  br label %21

18:                                               ; preds = %11
  %19 = load %struct.options_array_item*, %struct.options_array_item** %6, align 8
  %20 = getelementptr inbounds %struct.options_array_item, %struct.options_array_item* %19, i32 0, i32 0
  store %union.options_value* %20, %union.options_value** %3, align 8
  br label %21

21:                                               ; preds = %18, %17, %10
  %22 = load %union.options_value*, %union.options_value** %3, align 8
  ret %union.options_value* %22
}

declare dso_local i32 @OPTIONS_IS_ARRAY(%struct.options_entry*) #1

declare dso_local %struct.options_array_item* @options_array_item(%struct.options_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
