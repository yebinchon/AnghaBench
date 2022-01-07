; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_add_index_entry.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_add_index_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, i32, i64 }
%struct.cache_entry = type { i32 }

@ADD_CACHE_JUST_APPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_index_entry(%struct.index_state* %0, %struct.cache_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @ADD_CACHE_JUST_APPEND, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.index_state*, %struct.index_state** %5, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.index_state*, %struct.index_state** %5, align 8
  %20 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @add_index_entry_with_check(%struct.index_state* %19, %struct.cache_entry* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %99

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %14
  %31 = load %struct.index_state*, %struct.index_state** %5, align 8
  %32 = getelementptr inbounds %struct.index_state, %struct.index_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.index_state*, %struct.index_state** %5, align 8
  %35 = getelementptr inbounds %struct.index_state, %struct.index_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %30
  %39 = load %struct.index_state*, %struct.index_state** %5, align 8
  %40 = getelementptr inbounds %struct.index_state, %struct.index_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @alloc_nr(i32 %41)
  %43 = load %struct.index_state*, %struct.index_state** %5, align 8
  %44 = getelementptr inbounds %struct.index_state, %struct.index_state* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.index_state*, %struct.index_state** %5, align 8
  %46 = getelementptr inbounds %struct.index_state, %struct.index_state* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.index_state*, %struct.index_state** %5, align 8
  %49 = getelementptr inbounds %struct.index_state, %struct.index_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = trunc i64 %52 to i32
  %54 = call i64 @realloc(i64 %47, i32 %53)
  %55 = load %struct.index_state*, %struct.index_state** %5, align 8
  %56 = getelementptr inbounds %struct.index_state, %struct.index_state* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %38, %30
  %58 = load %struct.index_state*, %struct.index_state** %5, align 8
  %59 = getelementptr inbounds %struct.index_state, %struct.index_state* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.index_state*, %struct.index_state** %5, align 8
  %63 = getelementptr inbounds %struct.index_state, %struct.index_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %57
  %69 = load %struct.index_state*, %struct.index_state** %5, align 8
  %70 = getelementptr inbounds %struct.index_state, %struct.index_state* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = add nsw i64 %74, 1
  %76 = load %struct.index_state*, %struct.index_state** %5, align 8
  %77 = getelementptr inbounds %struct.index_state, %struct.index_state* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load %struct.index_state*, %struct.index_state** %5, align 8
  %83 = getelementptr inbounds %struct.index_state, %struct.index_state* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = mul i64 %88, 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memmove(i64 %75, i64 %81, i32 %90)
  br label %92

92:                                               ; preds = %68, %57
  %93 = load %struct.index_state*, %struct.index_state** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %96 = call i32 @set_index_entry(%struct.index_state* %93, i32 %94, %struct.cache_entry* %95)
  %97 = load %struct.index_state*, %struct.index_state** %5, align 8
  %98 = getelementptr inbounds %struct.index_state, %struct.index_state* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %92, %25
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @add_index_entry_with_check(%struct.index_state*, %struct.cache_entry*, i32) #1

declare dso_local i32 @alloc_nr(i32) #1

declare dso_local i64 @realloc(i64, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @set_index_entry(%struct.index_state*, i32, %struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
