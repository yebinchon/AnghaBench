; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_str_io.c_getSizeFromString.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_str_io.c_getSizeFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i64*, i64*, i64*)* @getSizeFromString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getSizeFromString(i32* %0, i64 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load i64*, i64** %9, align 8
  %18 = icmp ne i64* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i64*, i64** %10, align 8
  %22 = icmp ne i64* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @parseDimension(i32* %25, i64 %26, i64* %12)
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  %29 = icmp eq i64 %27, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %50

31:                                               ; preds = %5
  %32 = load i64, i64* %12, align 8
  %33 = add i64 %32, 1
  %34 = load i64*, i64** %11, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i64*, i64** %11, align 8
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @parseDimension(i32* %38, i64 %39, i64* %12)
  %41 = load i64*, i64** %10, align 8
  store i64 %40, i64* %41, align 8
  %42 = icmp eq i64 %40, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %50

44:                                               ; preds = %31
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %45, 1
  %47 = load i64*, i64** %11, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, %46
  store i64 %49, i64* %47, align 8
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %43, %30
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @parseDimension(i32*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
