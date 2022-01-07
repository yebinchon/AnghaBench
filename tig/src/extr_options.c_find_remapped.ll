; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_find_remapped.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_find_remapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ([2 x i8*]*, i64, i8*)* @find_remapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_remapped([2 x i8*]* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8*]*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store [2 x i8*]* %0, [2 x i8*]** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %40, %3
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %14
  %20 = load [2 x i8*]*, [2 x i8*]** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 %22
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %23, i64 0, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %11, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %19
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @string_enum_compare(i8* %32, i8* %33, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %44

39:                                               ; preds = %31, %19
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %14

43:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @string_enum_compare(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
