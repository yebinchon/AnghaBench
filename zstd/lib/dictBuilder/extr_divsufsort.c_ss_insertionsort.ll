; ModuleID = '/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_divsufsort.c_ss_insertionsort.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_divsufsort.c_ss_insertionsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*, i32)* @ss_insertionsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ss_insertionsort(i8* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 -2
  store i32* %16, i32** %11, align 8
  br label %17

17:                                               ; preds = %75, %5
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ule i32* %18, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %17
  %22 = load i32*, i32** %11, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32* %25, i32** %12, align 8
  br label %26

26:                                               ; preds = %62, %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @ss_compare(i8* %27, i32* %31, i32* %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = icmp slt i32 0, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 -1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %41
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = icmp ult i32* %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 0
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i1 [ false, %46 ], [ %54, %51 ]
  br i1 %56, label %41, label %57

57:                                               ; preds = %55
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ule i32* %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %63

62:                                               ; preds = %57
  br label %26

63:                                               ; preds = %61, %26
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, -1
  %70 = load i32*, i32** %12, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 -1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %71
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 -1
  store i32* %77, i32** %11, align 8
  br label %17

78:                                               ; preds = %17
  ret void
}

declare dso_local i32 @ss_compare(i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
