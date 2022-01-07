; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_is_garbage_empty_dir.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_is_garbage_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, %struct.cache_entry** }
%struct.cache_entry = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, %struct.cache_entry*)* @is_garbage_empty_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_garbage_empty_dir(%struct.index_state* %0, %struct.cache_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.index_state*, align 8
  %5 = alloca %struct.cache_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %4, align 8
  store %struct.cache_entry* %1, %struct.cache_entry** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.index_state*, %struct.index_state** %4, align 8
  %13 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %14 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %17 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @index_name_pos(%struct.index_state* %12, i32 %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 0, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %28 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @g_strconcat(i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %30, i8** %9, align 8
  %31 = load %struct.cache_entry*, %struct.cache_entry** %5, align 8
  %32 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %67, %23
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.index_state*, %struct.index_state** %4, align 8
  %39 = getelementptr inbounds %struct.index_state, %struct.index_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load %struct.index_state*, %struct.index_state** %4, align 8
  %44 = getelementptr inbounds %struct.index_state, %struct.index_state* %43, i32 0, i32 1
  %45 = load %struct.cache_entry**, %struct.cache_entry*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %45, i64 %47
  %49 = load %struct.cache_entry*, %struct.cache_entry** %48, align 8
  store %struct.cache_entry* %49, %struct.cache_entry** %8, align 8
  %50 = load %struct.cache_entry*, %struct.cache_entry** %8, align 8
  %51 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @strncmp(i32 %52, i8* %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %68

59:                                               ; preds = %42
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %66

65:                                               ; preds = %59
  br label %68

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66
  br label %36

68:                                               ; preds = %65, %58, %36
  %69 = load i8*, i8** %9, align 8
  %70 = call i32 @g_free(i8* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %22
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @index_name_pos(%struct.index_state*, i32, i32) #1

declare dso_local i8* @g_strconcat(i32, i8*, i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
