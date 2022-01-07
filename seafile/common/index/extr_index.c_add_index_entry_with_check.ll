; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_add_index_entry_with_check.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_add_index_entry_with_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32* }
%struct.cache_entry = type { i32, i32 }

@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_NEW_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.cache_entry*, i32)* @add_index_entry_with_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_index_entry_with_check(%struct.index_state* %0, %struct.cache_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca %struct.cache_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ADD_CACHE_NEW_ONLY, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.index_state*, %struct.index_state** %5, align 8
  %18 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %19 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @remove_empty_parent_dir_entry(%struct.index_state* %17, i32 %20)
  %22 = load %struct.index_state*, %struct.index_state** %5, align 8
  %23 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %24 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %27 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @index_name_pos(%struct.index_state* %22, i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load %struct.index_state*, %struct.index_state** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %39 = call i32 @replace_index_entry(%struct.index_state* %36, i32 %37, %struct.cache_entry* %38)
  br label %40

40:                                               ; preds = %35, %32
  store i32 0, i32* %4, align 4
  br label %81

41:                                               ; preds = %3
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 0, %42
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.index_state*, %struct.index_state** %5, align 8
  %47 = getelementptr inbounds %struct.index_state, %struct.index_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %41
  %51 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %52 = call i64 @ce_stage(%struct.cache_entry* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %72, %54
  %56 = load %struct.index_state*, %struct.index_state** %5, align 8
  %57 = getelementptr inbounds %struct.index_state, %struct.index_state* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cache_entry*, %struct.cache_entry** %6, align 8
  %64 = call i64 @ce_same_name(i32 %62, %struct.cache_entry* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %55
  store i32 1, i32* %9, align 4
  %67 = load %struct.index_state*, %struct.index_state** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @remove_index_entry_at(%struct.index_state* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %73

72:                                               ; preds = %66
  br label %55

73:                                               ; preds = %71, %55
  br label %74

74:                                               ; preds = %73, %50, %41
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 -1, i32* %4, align 4
  br label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %77, %40
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @remove_empty_parent_dir_entry(%struct.index_state*, i32) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i32, i32) #1

declare dso_local i32 @replace_index_entry(%struct.index_state*, i32, %struct.cache_entry*) #1

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i64 @ce_same_name(i32, %struct.cache_entry*) #1

declare dso_local i32 @remove_index_entry_at(%struct.index_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
