; ModuleID = '/home/carl/AnghaBench/tig/src/extr_help.c_add_help_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_help.c_add_help_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }
%struct.help = type { %struct.keymap* }
%struct.keymap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.help**, %struct.keymap*, i32)* @add_help_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_help_line(%struct.view* %0, %struct.help** %1, %struct.keymap* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.view*, align 8
  %7 = alloca %struct.help**, align 8
  %8 = alloca %struct.keymap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.help*, align 8
  store %struct.view* %0, %struct.view** %6, align 8
  store %struct.help** %1, %struct.help*** %7, align 8
  store %struct.keymap* %2, %struct.keymap** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.view*, %struct.view** %6, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @add_line_alloc(%struct.view* %11, %struct.help** %10, i32 %12, i32 0, i32 0)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %26

16:                                               ; preds = %4
  %17 = load %struct.keymap*, %struct.keymap** %8, align 8
  %18 = load %struct.help*, %struct.help** %10, align 8
  %19 = getelementptr inbounds %struct.help, %struct.help* %18, i32 0, i32 0
  store %struct.keymap* %17, %struct.keymap** %19, align 8
  %20 = load %struct.help**, %struct.help*** %7, align 8
  %21 = icmp ne %struct.help** %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.help*, %struct.help** %10, align 8
  %24 = load %struct.help**, %struct.help*** %7, align 8
  store %struct.help* %23, %struct.help** %24, align 8
  br label %25

25:                                               ; preds = %22, %16
  store i32 1, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @add_line_alloc(%struct.view*, %struct.help**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
