; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_free_modifiers.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_free_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_modifier = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.format_modifier*, i64)* @format_free_modifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_free_modifiers(%struct.format_modifier* %0, i64 %1) #0 {
  %3 = alloca %struct.format_modifier*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.format_modifier* %0, %struct.format_modifier** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.format_modifier*, %struct.format_modifier** %3, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %11, i64 %12
  %14 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.format_modifier*, %struct.format_modifier** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %16, i64 %17
  %19 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cmd_free_argv(i32 %15, i32 %20)
  br label %22

22:                                               ; preds = %10
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %5, align 8
  br label %6

25:                                               ; preds = %6
  %26 = load %struct.format_modifier*, %struct.format_modifier** %3, align 8
  %27 = call i32 @free(%struct.format_modifier* %26)
  ret void
}

declare dso_local i32 @cmd_free_argv(i32, i32) #1

declare dso_local i32 @free(%struct.format_modifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
