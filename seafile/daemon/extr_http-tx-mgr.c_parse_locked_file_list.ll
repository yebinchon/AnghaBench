; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_parse_locked_file_list.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_parse_locked_file_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@g_free = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"by_me\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @parse_locked_file_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_locked_file_list(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %10 = load i32, i32* @g_str_hash, align 4
  %11 = load i32, i32* @g_str_equal, align 4
  %12 = load i32, i32* @g_free, align 4
  %13 = call i32* @g_hash_table_new_full(i32 %10, i32 %11, i32 %12, i32* null)
  store i32* %13, i32** %4, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %57

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @json_array_size(i32* %18)
  store i64 %19, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %52, %17
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32* @json_array_get(i32* %25, i64 %26)
  store i32* %27, i32** %7, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32* @json_object_get(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @g_hash_table_destroy(i32* %33)
  store i32* null, i32** %2, align 8
  br label %57

35:                                               ; preds = %24
  %36 = load i32*, i32** %7, align 8
  %37 = call i32* @json_object_get(i32* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %37, i32** %9, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @g_hash_table_destroy(i32* %41)
  store i32* null, i32** %2, align 8
  br label %57

43:                                               ; preds = %35
  %44 = load i32*, i32** %4, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @json_string_value(i32* %45)
  %47 = call i32 @g_strdup(i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = call i64 @json_integer_value(i32* %48)
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @g_hash_table_insert(i32* %44, i32 %47, i8* %50)
  br label %52

52:                                               ; preds = %43
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %20

55:                                               ; preds = %20
  %56 = load i32*, i32** %4, align 8
  store i32* %56, i32** %2, align 8
  br label %57

57:                                               ; preds = %55, %40, %32, %16
  %58 = load i32*, i32** %2, align 8
  ret i32* %58
}

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32, i32*) #1

declare dso_local i64 @json_array_size(i32*) #1

declare dso_local i32* @json_array_get(i32*, i64) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i32 @g_hash_table_destroy(i32*) #1

declare dso_local i32 @g_hash_table_insert(i32*, i32, i8*) #1

declare dso_local i32 @g_strdup(i32) #1

declare dso_local i32 @json_string_value(i32*) #1

declare dso_local i64 @json_integer_value(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
