; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_repo_head_commit_map_from_json.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_repo_head_commit_map_from_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to load json: %s\0A\00", align 1
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@g_free = common dso_local global i32 0, align 4
@JSON_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [57 x i8] c"Bad json object format when parsing head commit id map.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i64)* @repo_head_commit_map_from_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @repo_head_commit_map_from_json(i8* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32* @json_loadb(i8* %12, i64 %13, i32 0, %struct.TYPE_3__* %7)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32* null, i32** %3, align 8
  br label %61

21:                                               ; preds = %2
  %22 = load i32, i32* @g_str_hash, align 4
  %23 = load i32, i32* @g_str_equal, align 4
  %24 = load i32, i32* @g_free, align 4
  %25 = load i32, i32* @g_free, align 4
  %26 = call i32* @g_hash_table_new_full(i32 %22, i32 %23, i32 %24, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i8* @json_object_iter(i32* %27)
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %45, %21
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %29
  %33 = load i8*, i8** %9, align 8
  %34 = call i8* @json_object_iter_key(i8* %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32* @json_object_iter_value(i8* %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i64 @json_typeof(i32* %37)
  %39 = load i64, i64* @JSON_STRING, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @g_hash_table_destroy(i32* %43)
  br label %57

45:                                               ; preds = %32
  %46 = load i32*, i32** %8, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @g_strdup(i8* %47)
  %49 = load i32*, i32** %11, align 8
  %50 = call i8* @json_string_value(i32* %49)
  %51 = call i32 @g_strdup(i8* %50)
  %52 = call i32 @g_hash_table_replace(i32* %46, i32 %48, i32 %51)
  %53 = load i32*, i32** %6, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i8* @json_object_iter_next(i32* %53, i8* %54)
  store i8* %55, i8** %9, align 8
  br label %29

56:                                               ; preds = %29
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @json_decref(i32* %58)
  %60 = load i32*, i32** %8, align 8
  store i32* %60, i32** %3, align 8
  br label %61

61:                                               ; preds = %57, %17
  %62 = load i32*, i32** %3, align 8
  ret i32* %62
}

declare dso_local i32* @json_loadb(i8*, i64, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32, i32) #1

declare dso_local i8* @json_object_iter(i32*) #1

declare dso_local i8* @json_object_iter_key(i8*) #1

declare dso_local i32* @json_object_iter_value(i8*) #1

declare dso_local i64 @json_typeof(i32*) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

declare dso_local i32 @g_hash_table_replace(i32*, i32, i32) #1

declare dso_local i32 @g_strdup(i8*) #1

declare dso_local i8* @json_string_value(i32*) #1

declare dso_local i8* @json_object_iter_next(i32*, i8*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
