; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_malloc_hook.c_get_allocated_field.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_malloc_hook.c_get_allocated_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_data = type { i32, i64 }

@SLOT_SIZE = common dso_local global i32 0, align 4
@mem_stats = common dso_local global %struct.mem_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32)* @get_allocated_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @get_allocated_field(i32 %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SLOT_SIZE, align 4
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %8, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.mem_data*, %struct.mem_data** @mem_stats, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %12, i64 %14
  store %struct.mem_data* %15, %struct.mem_data** %5, align 8
  %16 = load %struct.mem_data*, %struct.mem_data** %5, align 8
  %17 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.mem_data*, %struct.mem_data** %5, align 8
  %20 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* %7, align 8
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24, %1
  %28 = load %struct.mem_data*, %struct.mem_data** %5, align 8
  %29 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %28, i32 0, i32 0
  %30 = bitcast i32* %29 to i64*
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ATOM_CAS(i64* %30, i64 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  store i64* null, i64** %2, align 8
  br label %56

37:                                               ; preds = %27
  %38 = load i64, i64* %7, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.mem_data*, %struct.mem_data** %5, align 8
  %42 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %41, i32 0, i32 1
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @ATOM_CAS(i64* %42, i64 %43, i32 0)
  br label %45

45:                                               ; preds = %40, %37
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.mem_data*, %struct.mem_data** %5, align 8
  %48 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i64* null, i64** %2, align 8
  br label %56

53:                                               ; preds = %46
  %54 = load %struct.mem_data*, %struct.mem_data** %5, align 8
  %55 = getelementptr inbounds %struct.mem_data, %struct.mem_data* %54, i32 0, i32 1
  store i64* %55, i64** %2, align 8
  br label %56

56:                                               ; preds = %53, %52, %36
  %57 = load i64*, i64** %2, align 8
  ret i64* %57
}

declare dso_local i32 @ATOM_CAS(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
