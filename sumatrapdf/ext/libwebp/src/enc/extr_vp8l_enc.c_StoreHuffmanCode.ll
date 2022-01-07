; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_StoreHuffmanCode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_StoreHuffmanCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_4__*)* @StoreHuffmanCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StoreHuffmanCode(i32* %0, i32* %1, i32* %2, %struct.TYPE_4__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = bitcast [2 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  store i32 8, i32* %12, align 4
  store i32 256, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %47, %4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 3
  br label %24

24:                                               ; preds = %21, %15
  %25 = phi i1 [ false, %15 ], [ %23, %21 ]
  br i1 %25, label %26, label %50

26:                                               ; preds = %24
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %15

50:                                               ; preds = %24
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @VP8LPutBits(i32* %54, i32 1, i32 4)
  br label %107

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = icmp sle i32 %57, 2
  br i1 %58, label %59, label %100

59:                                               ; preds = %56
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 256
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 256
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @VP8LPutBits(i32* %68, i32 1, i32 1)
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @VP8LPutBits(i32* %70, i32 %72, i32 1)
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp sle i32 %75, 1
  br i1 %76, label %77, label %84

77:                                               ; preds = %67
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @VP8LPutBits(i32* %78, i32 0, i32 1)
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @VP8LPutBits(i32* %80, i32 %82, i32 1)
  br label %91

84:                                               ; preds = %67
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @VP8LPutBits(i32* %85, i32 1, i32 1)
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @VP8LPutBits(i32* %87, i32 %89, i32 8)
  br label %91

91:                                               ; preds = %84, %77
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @VP8LPutBits(i32* %95, i32 %97, i32 8)
  br label %99

99:                                               ; preds = %94, %91
  br label %106

100:                                              ; preds = %63, %59, %56
  %101 = load i32*, i32** %5, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %105 = call i32 @StoreFullHuffmanCode(i32* %101, i32* %102, i32* %103, %struct.TYPE_4__* %104)
  br label %106

106:                                              ; preds = %100, %99
  br label %107

107:                                              ; preds = %106, %53
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @VP8LPutBits(i32*, i32, i32) #2

declare dso_local i32 @StoreFullHuffmanCode(i32*, i32*, i32*, %struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
