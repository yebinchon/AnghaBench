; ModuleID = '/home/carl/AnghaBench/vlc/modules/keystore/extr_secret.c_values_to_ghashtable.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/keystore/extr_secret.c_values_to_ghashtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_MAX = common dso_local global i32 0, align 4
@g_str_hash = common dso_local global i32 0, align 4
@g_str_equal = common dso_local global i32 0, align 4
@ppsz_keys = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**)* @values_to_ghashtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @values_to_ghashtable(i8** %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %6 = load i32, i32* @KEY_MAX, align 4
  %7 = zext i32 %6 to i64
  %8 = load i32, i32* @g_str_hash, align 4
  %9 = load i32, i32* @g_str_equal, align 4
  %10 = call i32* @g_hash_table_new_full(i32 %8, i32 %9, i32* null, i32* null)
  store i32* %10, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %47

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %42, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @KEY_MAX, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load i8**, i8*** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load i32*, i32** %4, align 8
  %28 = load i64*, i64** @ppsz_keys, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i8**, i8*** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = call i32 @g_hash_table_insert(i32* %27, i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %26, %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %15

45:                                               ; preds = %15
  %46 = load i32*, i32** %4, align 8
  store i32* %46, i32** %2, align 8
  br label %47

47:                                               ; preds = %45, %13
  %48 = load i32*, i32** %2, align 8
  ret i32* %48
}

declare dso_local i32* @g_hash_table_new_full(i32, i32, i32*, i32*) #1

declare dso_local i32 @g_hash_table_insert(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
