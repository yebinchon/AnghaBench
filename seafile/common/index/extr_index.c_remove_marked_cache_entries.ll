; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_remove_marked_cache_entries.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_remove_marked_cache_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@CE_REMOVE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_marked_cache_entries(%struct.index_state* %0) #0 {
  %2 = alloca %struct.index_state*, align 8
  %3 = alloca %struct.cache_entry**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.index_state* %0, %struct.index_state** %2, align 8
  %7 = load %struct.index_state*, %struct.index_state** %2, align 8
  %8 = getelementptr inbounds %struct.index_state, %struct.index_state* %7, i32 0, i32 2
  %9 = load %struct.cache_entry**, %struct.cache_entry*** %8, align 8
  store %struct.cache_entry** %9, %struct.cache_entry*** %3, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %6, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %55, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.index_state*, %struct.index_state** %2, align 8
  %14 = getelementptr inbounds %struct.index_state, %struct.index_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %11
  %18 = load %struct.cache_entry**, %struct.cache_entry*** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %18, i64 %20
  %22 = load %struct.cache_entry*, %struct.cache_entry** %21, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CE_REMOVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %17
  %29 = load %struct.index_state*, %struct.index_state** %2, align 8
  %30 = load %struct.cache_entry**, %struct.cache_entry*** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %30, i64 %32
  %34 = load %struct.cache_entry*, %struct.cache_entry** %33, align 8
  %35 = call i32 @remove_name_hash(%struct.index_state* %29, %struct.cache_entry* %34)
  %36 = load %struct.cache_entry**, %struct.cache_entry*** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %36, i64 %38
  %40 = load %struct.cache_entry*, %struct.cache_entry** %39, align 8
  %41 = call i32 @cache_entry_free(%struct.cache_entry* %40)
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %6, align 8
  br label %54

43:                                               ; preds = %17
  %44 = load %struct.cache_entry**, %struct.cache_entry*** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %44, i64 %46
  %48 = load %struct.cache_entry*, %struct.cache_entry** %47, align 8
  %49 = load %struct.cache_entry**, %struct.cache_entry*** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %49, i64 %52
  store %struct.cache_entry* %48, %struct.cache_entry** %53, align 8
  br label %54

54:                                               ; preds = %43, %28
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load i64, i64* %6, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.index_state*, %struct.index_state** %2, align 8
  %63 = getelementptr inbounds %struct.index_state, %struct.index_state* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.index_state*, %struct.index_state** %2, align 8
  %66 = getelementptr inbounds %struct.index_state, %struct.index_state* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %61, %58
  ret void
}

declare dso_local i32 @remove_name_hash(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i32 @cache_entry_free(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
