; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_util.c_vstrfmtmake.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_util.c_vstrfmtmake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, i8*, i32)* @vstrfmtmake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vstrfmtmake(i64* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 1000, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i8* @malloc(i64 %12)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %60

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %49
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @vsnprintf(i8* %19, i64 %20, i8* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i64, i64* %8, align 8
  %28 = mul i64 %27, 2
  store i64 %28, i64* %8, align 8
  br label %40

29:                                               ; preds = %18
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %8, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %8, align 8
  br label %39

38:                                               ; preds = %29
  br label %51

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %26
  %41 = load i8*, i8** %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i8* @realloc(i8* %41, i64 %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @free(i8* %47)
  store i8* null, i8** %4, align 8
  br label %60

49:                                               ; preds = %40
  %50 = load i8*, i8** %10, align 8
  store i8* %50, i8** %9, align 8
  br label %18

51:                                               ; preds = %38
  %52 = load i64*, i64** %5, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64*, i64** %5, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i8*, i8** %9, align 8
  store i8* %59, i8** %4, align 8
  br label %60

60:                                               ; preds = %58, %46, %16
  %61 = load i8*, i8** %4, align 8
  ret i8* %61
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @vsnprintf(i8*, i64, i8*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
