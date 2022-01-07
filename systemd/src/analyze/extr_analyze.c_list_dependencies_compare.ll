; ModuleID = '/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_list_dependencies_compare.c'
source_filename = "/home/carl/AnghaBench/systemd/src/analyze/extr_analyze.c_list_dependencies_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_times = type { i32 }

@unit_times_hashmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**)* @list_dependencies_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_dependencies_compare(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.unit_times*, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @unit_times_hashmap, align 4
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = call %struct.unit_times* @hashmap_get(i32 %8, i8* %10)
  store %struct.unit_times* %11, %struct.unit_times** %7, align 8
  %12 = load %struct.unit_times*, %struct.unit_times** %7, align 8
  %13 = icmp ne %struct.unit_times* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.unit_times*, %struct.unit_times** %7, align 8
  %16 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @unit_times_hashmap, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call %struct.unit_times* @hashmap_get(i32 %19, i8* %21)
  store %struct.unit_times* %22, %struct.unit_times** %7, align 8
  %23 = load %struct.unit_times*, %struct.unit_times** %7, align 8
  %24 = icmp ne %struct.unit_times* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.unit_times*, %struct.unit_times** %7, align 8
  %27 = getelementptr inbounds %struct.unit_times, %struct.unit_times* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %18
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @CMP(i32 %30, i32 %31)
  ret i32 %32
}

declare dso_local %struct.unit_times* @hashmap_get(i32, i8*) #1

declare dso_local i32 @CMP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
