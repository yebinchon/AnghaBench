; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_eval_cb2.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_helper_eval_cb2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64)* @helper_eval_cb2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helper_eval_cb2(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @g_match_info_get_match_count(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @g_match_info_fetch(i32* %18, i32 4)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32*, i32** %7, align 8
  %26 = call i32* @g_hash_table_lookup(i32* %24, i32* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @g_string_append(i32* %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @g_free(i32* %34)
  br label %36

36:                                               ; preds = %33, %17
  br label %75

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %74

40:                                               ; preds = %37
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @g_match_info_fetch(i32* %41, i32 2)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %73

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32*, i32** %7, align 8
  %49 = call i32* @g_hash_table_lookup(i32* %47, i32* %48)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %70

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  %54 = call i32* @g_match_info_fetch(i32* %53, i32 1)
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @g_string_append(i32* %55, i32* %56)
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @g_free(i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @g_string_append(i32* %60, i32* %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32* @g_match_info_fetch(i32* %63, i32 3)
  store i32* %64, i32** %12, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @g_string_append(i32* %65, i32* %66)
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @g_free(i32* %68)
  br label %70

70:                                               ; preds = %52, %45
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @g_free(i32* %71)
  br label %73

73:                                               ; preds = %70, %40
  br label %74

74:                                               ; preds = %73, %37
  br label %75

75:                                               ; preds = %74, %36
  %76 = load i32, i32* @FALSE, align 4
  ret i32 %76
}

declare dso_local i32 @g_match_info_get_match_count(i32*) #1

declare dso_local i32* @g_match_info_fetch(i32*, i32) #1

declare dso_local i32* @g_hash_table_lookup(i32*, i32*) #1

declare dso_local i32 @g_string_append(i32*, i32*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
