; ModuleID = '/home/carl/AnghaBench/redis/utils/lru/extr_lfu-simulation.c_scan_entry.c'
source_filename = "/home/carl/AnghaBench/redis/utils/lru/extr_lfu-simulation.c_scan_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, i32 }

@decr_every = common dso_local global i64 0, align 8
@COUNTER_INIT_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scan_entry(%struct.entry* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  store %struct.entry* %0, %struct.entry** %2, align 8
  %3 = call i32 @time(i32* null)
  %4 = call i32 @to_16bit_minutes(i32 %3)
  %5 = load %struct.entry*, %struct.entry** %2, align 8
  %6 = getelementptr inbounds %struct.entry, %struct.entry* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @minutes_diff(i32 %4, i32 %7)
  %9 = load i64, i64* @decr_every, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load %struct.entry*, %struct.entry** %2, align 8
  %13 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load %struct.entry*, %struct.entry** %2, align 8
  %18 = getelementptr inbounds %struct.entry, %struct.entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @COUNTER_INIT_VAL, align 4
  %21 = mul nsw i32 %20, 2
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.entry*, %struct.entry** %2, align 8
  %25 = getelementptr inbounds %struct.entry, %struct.entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %25, align 4
  br label %33

28:                                               ; preds = %16
  %29 = load %struct.entry*, %struct.entry** %2, align 8
  %30 = getelementptr inbounds %struct.entry, %struct.entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %11
  %35 = call i32 @time(i32* null)
  %36 = call i32 @to_16bit_minutes(i32 %35)
  %37 = load %struct.entry*, %struct.entry** %2, align 8
  %38 = getelementptr inbounds %struct.entry, %struct.entry* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.entry*, %struct.entry** %2, align 8
  %41 = getelementptr inbounds %struct.entry, %struct.entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  ret i32 %42
}

declare dso_local i64 @minutes_diff(i32, i32) #1

declare dso_local i32 @to_16bit_minutes(i32) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
