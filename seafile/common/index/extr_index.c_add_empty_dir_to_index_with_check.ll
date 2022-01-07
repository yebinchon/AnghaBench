; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_add_empty_dir_to_index_with_check.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_add_empty_dir_to_index_with_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, i32, %struct.cache_entry** }
%struct.cache_entry = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_empty_dir_to_index_with_check(%struct.index_state* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.index_state*, %struct.index_state** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @index_name_pos(%struct.index_state* %16, i8* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %142

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 0, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @g_strconcat(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %28, i8** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %63, %23
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.index_state*, %struct.index_state** %5, align 8
  %35 = getelementptr inbounds %struct.index_state, %struct.index_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %32
  %39 = load %struct.index_state*, %struct.index_state** %5, align 8
  %40 = getelementptr inbounds %struct.index_state, %struct.index_state* %39, i32 0, i32 3
  %41 = load %struct.cache_entry**, %struct.cache_entry*** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %41, i64 %43
  %45 = load %struct.cache_entry*, %struct.cache_entry** %44, align 8
  store %struct.cache_entry* %45, %struct.cache_entry** %10, align 8
  %46 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %47 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @strncmp(i32 %48, i8* %49, i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %38
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %63

57:                                               ; preds = %38
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i64, i64* @FALSE, align 8
  store i64 %61, i64* %12, align 8
  br label %64

62:                                               ; preds = %57
  br label %64

63:                                               ; preds = %54
  br label %32

64:                                               ; preds = %62, %60, %32
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @g_free(i8* %65)
  %67 = load i64, i64* %12, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %141

69:                                               ; preds = %64
  %70 = load i8*, i8** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call %struct.cache_entry* @create_empty_dir_index_entry(i8* %70, i32* %71)
  store %struct.cache_entry* %72, %struct.cache_entry** %10, align 8
  %73 = load %struct.index_state*, %struct.index_state** %5, align 8
  %74 = getelementptr inbounds %struct.index_state, %struct.index_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.index_state*, %struct.index_state** %5, align 8
  %77 = getelementptr inbounds %struct.index_state, %struct.index_state* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %69
  %81 = load %struct.index_state*, %struct.index_state** %5, align 8
  %82 = getelementptr inbounds %struct.index_state, %struct.index_state* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @alloc_nr(i32 %83)
  %85 = load %struct.index_state*, %struct.index_state** %5, align 8
  %86 = getelementptr inbounds %struct.index_state, %struct.index_state* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.index_state*, %struct.index_state** %5, align 8
  %88 = getelementptr inbounds %struct.index_state, %struct.index_state* %87, i32 0, i32 3
  %89 = load %struct.cache_entry**, %struct.cache_entry*** %88, align 8
  %90 = load %struct.index_state*, %struct.index_state** %5, align 8
  %91 = getelementptr inbounds %struct.index_state, %struct.index_state* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %93, 8
  %95 = trunc i64 %94 to i32
  %96 = call %struct.cache_entry** @realloc(%struct.cache_entry** %89, i32 %95)
  %97 = load %struct.index_state*, %struct.index_state** %5, align 8
  %98 = getelementptr inbounds %struct.index_state, %struct.index_state* %97, i32 0, i32 3
  store %struct.cache_entry** %96, %struct.cache_entry*** %98, align 8
  br label %99

99:                                               ; preds = %80, %69
  %100 = load %struct.index_state*, %struct.index_state** %5, align 8
  %101 = getelementptr inbounds %struct.index_state, %struct.index_state* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.index_state*, %struct.index_state** %5, align 8
  %105 = getelementptr inbounds %struct.index_state, %struct.index_state* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  %109 = icmp sgt i32 %106, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %99
  %111 = load %struct.index_state*, %struct.index_state** %5, align 8
  %112 = getelementptr inbounds %struct.index_state, %struct.index_state* %111, i32 0, i32 3
  %113 = load %struct.cache_entry**, %struct.cache_entry*** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %113, i64 %115
  %117 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %116, i64 1
  %118 = load %struct.index_state*, %struct.index_state** %5, align 8
  %119 = getelementptr inbounds %struct.index_state, %struct.index_state* %118, i32 0, i32 3
  %120 = load %struct.cache_entry**, %struct.cache_entry*** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %120, i64 %122
  %124 = load %struct.index_state*, %struct.index_state** %5, align 8
  %125 = getelementptr inbounds %struct.index_state, %struct.index_state* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sub nsw i32 %126, %127
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = mul i64 %130, 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @memmove(%struct.cache_entry** %117, %struct.cache_entry** %123, i32 %132)
  br label %134

134:                                              ; preds = %110, %99
  %135 = load %struct.index_state*, %struct.index_state** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.cache_entry*, %struct.cache_entry** %10, align 8
  %138 = call i32 @set_index_entry(%struct.index_state* %135, i32 %136, %struct.cache_entry* %137)
  %139 = load %struct.index_state*, %struct.index_state** %5, align 8
  %140 = getelementptr inbounds %struct.index_state, %struct.index_state* %139, i32 0, i32 2
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %134, %64
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %22
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @index_name_pos(%struct.index_state*, i8*, i32) #1

declare dso_local i8* @g_strconcat(i8*, i8*, i32*) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local %struct.cache_entry* @create_empty_dir_index_entry(i8*, i32*) #1

declare dso_local i32 @alloc_nr(i32) #1

declare dso_local %struct.cache_entry** @realloc(%struct.cache_entry**, i32) #1

declare dso_local i32 @memmove(%struct.cache_entry**, %struct.cache_entry**, i32) #1

declare dso_local i32 @set_index_entry(%struct.index_state*, i32, %struct.cache_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
