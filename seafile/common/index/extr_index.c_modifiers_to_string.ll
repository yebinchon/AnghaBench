; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_modifiers_to_string.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_modifiers_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32, i32, i32 }

@CE_REMOVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"BUG: index entry %s doesn't have modifier info.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.index_state*)* @modifiers_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modifiers_to_string(i32* %0, %struct.index_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cache_entry*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.index_state* %1, %struct.index_state** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %51, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.index_state*, %struct.index_state** %5, align 8
  %11 = getelementptr inbounds %struct.index_state, %struct.index_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %8
  %15 = load %struct.index_state*, %struct.index_state** %5, align 8
  %16 = getelementptr inbounds %struct.index_state, %struct.index_state* %15, i32 0, i32 1
  %17 = load %struct.cache_entry**, %struct.cache_entry*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %17, i64 %19
  %21 = load %struct.cache_entry*, %struct.cache_entry** %20, align 8
  store %struct.cache_entry* %21, %struct.cache_entry** %7, align 8
  %22 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %23 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @S_ISDIR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %14
  %28 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %29 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CE_REMOVE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %14
  br label %51

35:                                               ; preds = %27
  %36 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %37 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %42 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @seaf_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %43)
  store i32 -1, i32* %3, align 4
  br label %55

45:                                               ; preds = %35
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.cache_entry*, %struct.cache_entry** %7, align 8
  %48 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @g_string_append_printf(i32* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %34
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %8

54:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32 @g_string_append_printf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
