; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_fill_stat_cache_info.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_fill_stat_cache_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_stat_cache_info(%struct.cache_entry* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.cache_entry* %0, %struct.cache_entry** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %9 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %15 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 8
  %17 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %18 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %21 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %27 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %32 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %47 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @S_ISREG(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %2
  %54 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  %55 = call i32 @ce_mark_uptodate(%struct.cache_entry* %54)
  br label %56

56:                                               ; preds = %53, %2
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ce_mark_uptodate(%struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
