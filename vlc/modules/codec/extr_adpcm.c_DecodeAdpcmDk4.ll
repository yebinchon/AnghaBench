; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeAdpcmDk4.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeAdpcmDk4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32*)* @DecodeAdpcmDk4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeAdpcmDk4(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca [2 x %struct.TYPE_12__], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %7, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 2
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %10, align 4
  %22 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 16
  %25 = call i32 @GetWord(i32 %24)
  %26 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @GetByte(i32 %28)
  %30 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @CLAMP(i32 %32, i32 0, i32 88)
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %3
  %39 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @GetWord(i32 %41)
  %43 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GetByte(i32 %45)
  %47 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @CLAMP(i32 %49, i32 0, i32 88)
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %6, align 8
  br label %53

53:                                               ; preds = %38, %3
  %54 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 16
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %5, align 8
  store i32 %56, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  br label %67

67:                                               ; preds = %61, %53
  store i64 0, i64* %9, align 8
  br label %68

68:                                               ; preds = %105, %67
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 2, i32 1
  %77 = mul nsw i32 4, %76
  %78 = sub nsw i32 %72, %77
  %79 = sext i32 %78 to i64
  %80 = icmp ult i64 %69, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %68
  %82 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 4
  %86 = call i8* @AdpcmImaWavExpandNibble(%struct.TYPE_12__* %82, i32 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %5, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 %94
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 15
  %99 = call i8* @AdpcmImaWavExpandNibble(%struct.TYPE_12__* %95, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %5, align 8
  store i32 %100, i32* %101, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %6, align 8
  br label %105

105:                                              ; preds = %81
  %106 = load i64, i64* %9, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %9, align 8
  br label %68

108:                                              ; preds = %68
  ret void
}

declare dso_local i32 @GetWord(i32) #1

declare dso_local i32 @GetByte(i32) #1

declare dso_local i32 @CLAMP(i32, i32, i32) #1

declare dso_local i8* @AdpcmImaWavExpandNibble(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
