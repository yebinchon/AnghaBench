; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_add_empty_dir_to_index.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_add_empty_dir_to_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32 }
%struct.cache_entry = type { i32, i32 }

@ADD_CACHE_OK_TO_ADD = common dso_local global i32 0, align 4
@ADD_CACHE_OK_TO_REPLACE = common dso_local global i32 0, align 4
@CE_ADDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unable to add %s to index\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_empty_dir_to_index(%struct.index_state* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca %struct.cache_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @ADD_CACHE_OK_TO_ADD, align 4
  %12 = load i32, i32* @ADD_CACHE_OK_TO_REPLACE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.cache_entry* @create_empty_dir_index_entry(i8* %14, i32* %15)
  store %struct.cache_entry* %16, %struct.cache_entry** %8, align 8
  %17 = load %struct.index_state*, %struct.index_state** %5, align 8
  %18 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %19 = call i64 @is_garbage_empty_dir(%struct.index_state* %17, %struct.cache_entry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %23 = call i32 @free(%struct.cache_entry* %22)
  store i32 0, i32* %4, align 4
  br label %55

24:                                               ; preds = %3
  %25 = load %struct.index_state*, %struct.index_state** %5, align 8
  %26 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %27 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %30 = call i32 @ce_namelen(%struct.cache_entry* %29)
  %31 = call %struct.cache_entry* @index_name_exists(%struct.index_state* %25, i32 %28, i32 %30, i32 0)
  store %struct.cache_entry* %31, %struct.cache_entry** %9, align 8
  %32 = load %struct.cache_entry*, %struct.cache_entry** %9, align 8
  %33 = icmp ne %struct.cache_entry* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %36 = call i32 @free(%struct.cache_entry* %35)
  store i32 0, i32* %4, align 4
  br label %55

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* @CE_ADDED, align 4
  %40 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %41 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.index_state*, %struct.index_state** %5, align 8
  %45 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @add_index_entry(%struct.index_state* %44, %struct.cache_entry* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @seaf_warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %53 = call i32 @free(%struct.cache_entry* %52)
  store i32 -1, i32* %4, align 4
  br label %55

54:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %49, %34, %21
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.cache_entry* @create_empty_dir_index_entry(i8*, i32*) #1

declare dso_local i64 @is_garbage_empty_dir(%struct.index_state*, %struct.cache_entry*) #1

declare dso_local i32 @free(%struct.cache_entry*) #1

declare dso_local %struct.cache_entry* @index_name_exists(%struct.index_state*, i32, i32, i32) #1

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #1

declare dso_local i64 @add_index_entry(%struct.index_state*, %struct.cache_entry*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
