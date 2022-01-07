; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_malloc_hook.c_malloc_current_memory.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_malloc_hook.c_malloc_current_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_data = type { i64, i64 }

@SLOT_SIZE = common dso_local global i32 0, align 4
@mem_stats = common dso_local global %struct.mem_data* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @malloc_current_memory() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_data*, align 8
  %5 = call i64 (...) @skynet_current_handle()
  store i64 %5, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %30, %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SLOT_SIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load %struct.mem_data*, %struct.mem_data** @mem_stats, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %11, i64 %13
  store %struct.mem_data* %14, %struct.mem_data** %4, align 8
  %15 = load %struct.mem_data*, %struct.mem_data** %4, align 8
  %16 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %10
  %21 = load %struct.mem_data*, %struct.mem_data** %4, align 8
  %22 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.mem_data*, %struct.mem_data** %4, align 8
  %27 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %1, align 8
  br label %34

29:                                               ; preds = %20, %10
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %6

33:                                               ; preds = %6
  store i64 0, i64* %1, align 8
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i64, i64* %1, align 8
  ret i64 %35
}

declare dso_local i64 @skynet_current_handle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
