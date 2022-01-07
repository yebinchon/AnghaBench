; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_writeBlocks.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_writeBlocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@g_maxBlockSize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i32)* @writeBlocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeBlocks(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @g_maxBlockSize, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @MIN(i64 %15, i64 %19)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %3, %84
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %34

27:                                               ; preds = %22
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @RAND(i32* %28)
  %30 = and i32 %29, 3
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %27, %26
  %35 = phi i32 [ 0, %26 ], [ %33, %27 ]
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  store i64 %39, i64* %10, align 8
  br label %71

40:                                               ; preds = %34
  %41 = load i64, i64* %7, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @RAND(i32* %44)
  %46 = and i32 %45, 7
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @RAND(i32* %49)
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @MIN(i64 %51, i64 %52)
  %54 = add nsw i32 %53, 1
  %55 = srem i32 %50, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %10, align 8
  br label %70

57:                                               ; preds = %43, %40
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @RAND(i32* %62)
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i64, i64* %8, align 8
  store i64 %67, i64* %10, align 8
  br label %69

68:                                               ; preds = %61, %57
  store i64 0, i64* %10, align 8
  br label %69

69:                                               ; preds = %68, %66
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %70, %38
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @writeBlock(i32* %72, %struct.TYPE_6__* %73, i64 %74, i32 %75, i32 %76)
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %7, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %85

84:                                               ; preds = %71
  br label %22

85:                                               ; preds = %83
  ret void
}

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @RAND(i32*) #1

declare dso_local i32 @writeBlock(i32*, %struct.TYPE_6__*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
