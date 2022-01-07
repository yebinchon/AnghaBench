; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_get_only.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_get_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options_entry = type { i8* }
%struct.options = type { i32 }

@options_tree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.options_entry* @options_get_only(%struct.options* %0, i8* %1) #0 {
  %3 = alloca %struct.options*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.options_entry, align 8
  store %struct.options* %0, %struct.options** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = getelementptr inbounds %struct.options_entry, %struct.options_entry* %5, i32 0, i32 0
  store i8* %6, i8** %7, align 8
  %8 = load i32, i32* @options_tree, align 4
  %9 = load %struct.options*, %struct.options** %3, align 8
  %10 = getelementptr inbounds %struct.options, %struct.options* %9, i32 0, i32 0
  %11 = call %struct.options_entry* @RB_FIND(i32 %8, i32* %10, %struct.options_entry* %5)
  ret %struct.options_entry* %11
}

declare dso_local %struct.options_entry* @RB_FIND(i32, i32*, %struct.options_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
