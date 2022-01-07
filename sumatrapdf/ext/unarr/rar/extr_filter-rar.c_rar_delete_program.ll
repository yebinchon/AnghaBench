; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_delete_program.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_filter-rar.c_rar_delete_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RARProgramCode = type { %struct.RARProgramCode*, %struct.RARProgramCode*, i32, %struct.RARProgramCode* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.RARProgramCode*)* @rar_delete_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rar_delete_program(%struct.RARProgramCode* %0) #0 {
  %2 = alloca %struct.RARProgramCode*, align 8
  %3 = alloca %struct.RARProgramCode*, align 8
  store %struct.RARProgramCode* %0, %struct.RARProgramCode** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.RARProgramCode*, %struct.RARProgramCode** %2, align 8
  %6 = icmp ne %struct.RARProgramCode* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = load %struct.RARProgramCode*, %struct.RARProgramCode** %2, align 8
  %9 = getelementptr inbounds %struct.RARProgramCode, %struct.RARProgramCode* %8, i32 0, i32 3
  %10 = load %struct.RARProgramCode*, %struct.RARProgramCode** %9, align 8
  store %struct.RARProgramCode* %10, %struct.RARProgramCode** %3, align 8
  %11 = load %struct.RARProgramCode*, %struct.RARProgramCode** %2, align 8
  %12 = getelementptr inbounds %struct.RARProgramCode, %struct.RARProgramCode* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @RARDeleteProgram(i32 %13)
  %15 = load %struct.RARProgramCode*, %struct.RARProgramCode** %2, align 8
  %16 = getelementptr inbounds %struct.RARProgramCode, %struct.RARProgramCode* %15, i32 0, i32 1
  %17 = load %struct.RARProgramCode*, %struct.RARProgramCode** %16, align 8
  %18 = call i32 @free(%struct.RARProgramCode* %17)
  %19 = load %struct.RARProgramCode*, %struct.RARProgramCode** %2, align 8
  %20 = getelementptr inbounds %struct.RARProgramCode, %struct.RARProgramCode* %19, i32 0, i32 0
  %21 = load %struct.RARProgramCode*, %struct.RARProgramCode** %20, align 8
  %22 = call i32 @free(%struct.RARProgramCode* %21)
  %23 = load %struct.RARProgramCode*, %struct.RARProgramCode** %2, align 8
  %24 = call i32 @free(%struct.RARProgramCode* %23)
  %25 = load %struct.RARProgramCode*, %struct.RARProgramCode** %3, align 8
  store %struct.RARProgramCode* %25, %struct.RARProgramCode** %2, align 8
  br label %4

26:                                               ; preds = %4
  ret void
}

declare dso_local i32 @RARDeleteProgram(i32) #1

declare dso_local i32 @free(%struct.RARProgramCode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
