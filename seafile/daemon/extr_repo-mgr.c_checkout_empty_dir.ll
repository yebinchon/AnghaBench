; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_checkout_empty_dir.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_checkout_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@FETCH_CHECKOUT_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to create empty dir %s in checkout.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to set mtime for %s.\0A\00", align 1
@CE_REMOVE = common dso_local global i32 0, align 4
@FETCH_CHECKOUT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkout_empty_dir(i8* %0, i8* %1, i32 %2, %struct.cache_entry* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.cache_entry* %3, %struct.cache_entry** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %15, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i8* @build_checkout_path(i8* %18, i8* %19, i32 %21)
  store i8* %22, i8** %14, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* @FETCH_CHECKOUT_FAILED, align 4
  store i32 %26, i32* %7, align 4
  br label %72

27:                                               ; preds = %6
  %28 = load i8*, i8** %14, align 8
  %29 = call i32 @seaf_util_exists(i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %14, align 8
  %33 = call i64 @seaf_util_mkdir(i8* %32, i32 511)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @seaf_warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @g_free(i8* %38)
  %40 = load i32, i32* @FETCH_CHECKOUT_FAILED, align 4
  store i32 %40, i32* %7, align 4
  br label %72

41:                                               ; preds = %31, %27
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i8*, i8** %14, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @seaf_set_file_time(i8* %45, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @seaf_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %44, %41
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* @CE_REMOVE, align 4
  %57 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %58 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @g_free(i8* %61)
  %63 = load i32, i32* @FETCH_CHECKOUT_SUCCESS, align 4
  store i32 %63, i32* %7, align 4
  br label %72

64:                                               ; preds = %52
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @seaf_stat(i8* %65, i32* %16)
  %67 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %68 = call i32 @fill_stat_cache_info(%struct.cache_entry* %67, i32* %16)
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @g_free(i8* %69)
  %71 = load i32, i32* @FETCH_CHECKOUT_SUCCESS, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %64, %55, %35, %25
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i8* @build_checkout_path(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @seaf_util_exists(i8*) #1

declare dso_local i64 @seaf_util_mkdir(i8*, i32) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i64 @seaf_set_file_time(i8*, i32) #1

declare dso_local i32 @seaf_stat(i8*, i32*) #1

declare dso_local i32 @fill_stat_cache_info(%struct.cache_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
