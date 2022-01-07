; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/rosinternals/pendmoves/extr_pendmoves.c_BeautifyPath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/rosinternals/pendmoves/extr_pendmoves.c_BeautifyPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i32*)* @BeautifyPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @BeautifyPath(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i64*, i64** %3, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @_T(i8 signext 33)
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i64*, i64** %3, align 8
  %18 = getelementptr inbounds i64, i64* %17, i32 1
  store i64* %18, i64** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %10
  br label %22

22:                                               ; preds = %21, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 4
  br i1 %24, label %25, label %55

25:                                               ; preds = %22
  %26 = load i64*, i64** %3, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @_T(i8 signext 92)
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load i64*, i64** %3, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @_T(i8 signext 63)
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load i64*, i64** %3, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @_T(i8 signext 63)
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i64*, i64** %3, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @_T(i8 signext 92)
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i64*, i64** %3, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 4
  store i64* %51, i64** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %52, 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %43, %37, %31, %25
  br label %55

55:                                               ; preds = %54, %22
  %56 = load i32, i32* %5, align 4
  %57 = load i32*, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i64*, i64** %3, align 8
  ret i64* %58
}

declare dso_local i64 @_T(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
