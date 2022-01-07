; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_value_free.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_value_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { i32 }
%union.options_value = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.options_entry*, %union.options_value*)* @options_value_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @options_value_free(%struct.options_entry* %0, %union.options_value* %1) #0 {
  %3 = alloca %struct.options_entry*, align 8
  %4 = alloca %union.options_value*, align 8
  store %struct.options_entry* %0, %struct.options_entry** %3, align 8
  store %union.options_value* %1, %union.options_value** %4, align 8
  %5 = load %struct.options_entry*, %struct.options_entry** %3, align 8
  %6 = call i64 @OPTIONS_IS_STRING(%struct.options_entry* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %union.options_value*, %union.options_value** %4, align 8
  %10 = bitcast %union.options_value* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @free(i32 %11)
  br label %13

13:                                               ; preds = %8, %2
  %14 = load %struct.options_entry*, %struct.options_entry** %3, align 8
  %15 = call i64 @OPTIONS_IS_COMMAND(%struct.options_entry* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load %union.options_value*, %union.options_value** %4, align 8
  %19 = bitcast %union.options_value* %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %union.options_value*, %union.options_value** %4, align 8
  %24 = bitcast %union.options_value* %23 to i32**
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @cmd_list_free(i32* %25)
  br label %27

27:                                               ; preds = %22, %17, %13
  ret void
}

declare dso_local i64 @OPTIONS_IS_STRING(%struct.options_entry*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i64 @OPTIONS_IS_COMMAND(%struct.options_entry*) #1

declare dso_local i32 @cmd_list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
