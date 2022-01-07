; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeAdpcmImaQT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeAdpcmImaQT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64*, i32*)* @DecodeAdpcmImaQT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeAdpcmImaQT(%struct.TYPE_9__* %0, i64* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x %struct.TYPE_10__], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %97, %3
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %16
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 1
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 7
  %33 = or i32 %28, %32
  %34 = shl i32 %33, 7
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %7, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i64 %35, i64* %39, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 127
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %7, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 16
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %7, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 16
  %53 = call i32 @CLAMP(i32 %52, i32 0, i32 88)
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32* %55, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %87, %24
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 64
  br i1 %58, label %59, label %90

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %7, i64 0, i64 %61
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 15
  %66 = call i64 @AdpcmImaWavExpandNibble(%struct.TYPE_10__* %62, i32 %65)
  %67 = load i64*, i64** %5, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i64*, i64** %5, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  store i64* %71, i64** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x %struct.TYPE_10__], [2 x %struct.TYPE_10__]* %7, i64 0, i64 %73
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 4
  %78 = and i32 %77, 15
  %79 = call i64 @AdpcmImaWavExpandNibble(%struct.TYPE_10__* %74, i32 %78)
  %80 = load i64*, i64** %5, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i64*, i64** %5, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64* %84, i64** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %6, align 8
  br label %87

87:                                               ; preds = %59
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %8, align 4
  br label %56

90:                                               ; preds = %56
  %91 = load i32, i32* %10, align 4
  %92 = mul nsw i32 64, %91
  %93 = sub nsw i32 1, %92
  %94 = load i64*, i64** %5, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64* %96, i64** %5, align 8
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %16

100:                                              ; preds = %16
  ret void
}

declare dso_local i32 @CLAMP(i32, i32, i32) #1

declare dso_local i64 @AdpcmImaWavExpandNibble(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
