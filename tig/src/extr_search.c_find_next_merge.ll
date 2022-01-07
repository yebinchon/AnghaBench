; ModuleID = '/home/carl/AnghaBench/tig/src/extr_search.c_find_next_merge.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_search.c_find_next_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i32 }

@opt_wrap_search = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid request searching for next merge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, i32)* @find_next_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_merge(%struct.view* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view*, align 8
  %5 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %15 [
    i32 129, label %7
    i32 128, label %11
  ]

7:                                                ; preds = %2
  %8 = load %struct.view*, %struct.view** %4, align 8
  %9 = load i32, i32* @opt_wrap_search, align 4
  %10 = call i32 @find_next_merge_line(%struct.view* %8, i32 1, i32 %9)
  store i32 %10, i32* %3, align 4
  br label %17

11:                                               ; preds = %2
  %12 = load %struct.view*, %struct.view** %4, align 8
  %13 = load i32, i32* @opt_wrap_search, align 4
  %14 = call i32 @find_next_merge_line(%struct.view* %12, i32 -1, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %17

15:                                               ; preds = %2
  %16 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %11, %7
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @find_next_merge_line(%struct.view*, i32, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
