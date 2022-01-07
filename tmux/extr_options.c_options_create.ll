; ModuleID = '/home/carl/AnghaBench/tmux/extr_options.c_options_create.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_options.c_options_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { %struct.options*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.options* @options_create(%struct.options* %0) #0 {
  %2 = alloca %struct.options*, align 8
  %3 = alloca %struct.options*, align 8
  store %struct.options* %0, %struct.options** %2, align 8
  %4 = call %struct.options* @xcalloc(i32 1, i32 16)
  store %struct.options* %4, %struct.options** %3, align 8
  %5 = load %struct.options*, %struct.options** %3, align 8
  %6 = getelementptr inbounds %struct.options, %struct.options* %5, i32 0, i32 1
  %7 = call i32 @RB_INIT(i32* %6)
  %8 = load %struct.options*, %struct.options** %2, align 8
  %9 = load %struct.options*, %struct.options** %3, align 8
  %10 = getelementptr inbounds %struct.options, %struct.options* %9, i32 0, i32 0
  store %struct.options* %8, %struct.options** %10, align 8
  %11 = load %struct.options*, %struct.options** %3, align 8
  ret %struct.options* %11
}

declare dso_local %struct.options* @xcalloc(i32, i32) #1

declare dso_local i32 @RB_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
