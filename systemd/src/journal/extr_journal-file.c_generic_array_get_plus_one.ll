; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_generic_array_get_plus_one.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journal-file.c_generic_array_get_plus_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBJECT_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64, i64, i32**, i64*)* @generic_array_get_plus_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_array_get_plus_one(i32* %0, i64 %1, i64 %2, i64 %3, i32** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32** %4, i32*** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @assert(i32* %16)
  %18 = load i64, i64* %11, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %6
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @OBJECT_ENTRY, align 4
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @journal_file_move_to_object(i32* %21, i32 %22, i64 %23, i32** %14)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %7, align 4
  br label %50

29:                                               ; preds = %20
  %30 = load i32**, i32*** %12, align 8
  %31 = icmp ne i32** %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32*, i32** %14, align 8
  %34 = load i32**, i32*** %12, align 8
  store i32* %33, i32** %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64*, i64** %13, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i64, i64* %9, align 8
  %40 = load i64*, i64** %13, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %38, %35
  store i32 1, i32* %7, align 4
  br label %50

42:                                               ; preds = %6
  %43 = load i32*, i32** %8, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = sub nsw i64 %45, 1
  %47 = load i32**, i32*** %12, align 8
  %48 = load i64*, i64** %13, align 8
  %49 = call i32 @generic_array_get(i32* %43, i64 %44, i64 %46, i32** %47, i64* %48)
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %42, %41, %27
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @journal_file_move_to_object(i32*, i32, i64, i32**) #1

declare dso_local i32 @generic_array_get(i32*, i64, i64, i32**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
