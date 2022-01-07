; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_active_paths_to_json.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-mgr.c_active_paths_to_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@path_status_tbl = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @active_paths_to_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @active_paths_to_json(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %10 = call i32* (...) @json_array()
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @g_hash_table_iter_init(i32* %5, i32* %11)
  br label %13

13:                                               ; preds = %16, %1
  %14 = call i64 @g_hash_table_iter_next(i32* %5, i8** %6, i8** %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = call i32* (...) @json_object()
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @json_string(i8* %22)
  %24 = call i32 @json_object_set(i32* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i8**, i8*** @path_status_tbl, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8*, i8** %26, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @json_string(i8* %29)
  %31 = call i32 @json_object_set(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @json_array_append(i32* %32, i32* %33)
  br label %13

35:                                               ; preds = %13
  %36 = load i32*, i32** %3, align 8
  ret i32* %36
}

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @g_hash_table_iter_init(i32*, i32*) #1

declare dso_local i64 @g_hash_table_iter_next(i32*, i8**, i8**) #1

declare dso_local i32* @json_object(...) #1

declare dso_local i32 @json_object_set(i32*, i8*, i32) #1

declare dso_local i32 @json_string(i8*) #1

declare dso_local i32 @json_array_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
