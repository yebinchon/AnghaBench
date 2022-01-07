; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_remove_index_entry_at.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_remove_index_entry_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @remove_index_entry_at(%struct.index_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cache_entry*, align 8
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.index_state*, %struct.index_state** %4, align 8
  %8 = getelementptr inbounds %struct.index_state, %struct.index_state* %7, i32 0, i32 2
  %9 = load %struct.cache_entry**, %struct.cache_entry*** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %9, i64 %11
  %13 = load %struct.cache_entry*, %struct.cache_entry** %12, align 8
  store %struct.cache_entry* %13, %struct.cache_entry** %6, align 8
  %14 = load %struct.index_state*, %struct.index_state** %4, align 8
  %15 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %16 = call i32 @remove_name_hash(%struct.index_state* %14, %struct.cache_entry* %15)
  %17 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %18 = call i32 @cache_entry_free(%struct.cache_entry* %17)
  %19 = load %struct.index_state*, %struct.index_state** %4, align 8
  %20 = getelementptr inbounds %struct.index_state, %struct.index_state* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.index_state*, %struct.index_state** %4, align 8
  %22 = getelementptr inbounds %struct.index_state, %struct.index_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.index_state*, %struct.index_state** %4, align 8
  %27 = getelementptr inbounds %struct.index_state, %struct.index_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

31:                                               ; preds = %2
  %32 = load %struct.index_state*, %struct.index_state** %4, align 8
  %33 = getelementptr inbounds %struct.index_state, %struct.index_state* %32, i32 0, i32 2
  %34 = load %struct.cache_entry**, %struct.cache_entry*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %34, i64 %36
  %38 = load %struct.index_state*, %struct.index_state** %4, align 8
  %39 = getelementptr inbounds %struct.index_state, %struct.index_state* %38, i32 0, i32 2
  %40 = load %struct.cache_entry**, %struct.cache_entry*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %40, i64 %42
  %44 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %43, i64 1
  %45 = load %struct.index_state*, %struct.index_state** %4, align 8
  %46 = getelementptr inbounds %struct.index_state, %struct.index_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memmove(%struct.cache_entry** %37, %struct.cache_entry** %44, i32 %52)
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %31, %30
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @remove_name_hash(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i32 @cache_entry_free(%struct.cache_entry*) #1

declare dso_local i32 @memmove(%struct.cache_entry**, %struct.cache_entry**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
