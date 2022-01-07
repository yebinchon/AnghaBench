; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_cache_entry_from_diff_entry.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_cache_entry_from_diff_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32, i32, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_entry* (%struct.TYPE_5__*)* @cache_entry_from_diff_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_entry* @cache_entry_from_diff_entry(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_entry*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @strlen(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @cache_entry_size(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.cache_entry* @calloc(i32 1, i32 %12)
  store %struct.cache_entry* %13, %struct.cache_entry** %5, align 8
  %14 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %15 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @memcpy(i32 %16, i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %24 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %26 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32 %27, i32 %30, i32 20)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @g_strdup(i32 %34)
  %36 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %47 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @S_ISREG(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @create_ce_mode(i32 %57)
  %59 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %60 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %65

61:                                               ; preds = %1
  %62 = load i32, i32* @S_IFDIR, align 4
  %63 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %64 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %61, %54
  %66 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  ret %struct.cache_entry* %66
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @cache_entry_size(i32) #1

declare dso_local %struct.cache_entry* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @g_strdup(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @create_ce_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
