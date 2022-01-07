; ModuleID = '/home/carl/AnghaBench/tmux/extr_arguments.c_args_find.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_arguments.c_args_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.args_entry = type { i32 }
%struct.args = type { i32 }

@args_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.args_entry* (%struct.args*, i32)* @args_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.args_entry* @args_find(%struct.args* %0, i32 %1) #0 {
  %3 = alloca %struct.args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.args_entry, align 4
  store %struct.args* %0, %struct.args** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %struct.args_entry, %struct.args_entry* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* @args_tree, align 4
  %9 = load %struct.args*, %struct.args** %3, align 8
  %10 = getelementptr inbounds %struct.args, %struct.args* %9, i32 0, i32 0
  %11 = call %struct.args_entry* @RB_FIND(i32 %8, i32* %10, %struct.args_entry* %5)
  ret %struct.args_entry* %11
}

declare dso_local %struct.args_entry* @RB_FIND(i32, i32*, %struct.args_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
