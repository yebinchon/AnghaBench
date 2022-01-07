; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_index_name_pos.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_index_name_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @index_name_pos(%struct.index_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.index_state*, %struct.index_state** %5, align 8
  %14 = getelementptr inbounds %struct.index_state, %struct.index_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  br label %16

16:                                               ; preds = %50, %48, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %21, %22
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %10, align 4
  %25 = load %struct.index_state*, %struct.index_state** %5, align 8
  %26 = getelementptr inbounds %struct.index_state, %struct.index_state* %25, i32 0, i32 1
  %27 = load %struct.cache_entry**, %struct.cache_entry*** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %27, i64 %29
  %31 = load %struct.cache_entry*, %struct.cache_entry** %30, align 8
  store %struct.cache_entry* %31, %struct.cache_entry** %11, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %35 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %38 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cache_name_compare(i8* %32, i32 %33, i32 %36, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %20
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %57

45:                                               ; preds = %20
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %9, align 4
  br label %16

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %16

53:                                               ; preds = %16
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 0, %54
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %43
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @cache_name_compare(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
