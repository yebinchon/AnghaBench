; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_decode_block.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_decode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"bad huffman code\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@dezigzag = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i16*, i32*, i32*, i32)* @decode_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_block(%struct.TYPE_7__* %0, i16* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i16* %1, i16** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @decode(%struct.TYPE_7__* %19, i32* %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = call i32 @e(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  br label %103

26:                                               ; preds = %5
  %27 = load i16*, i16** %8, align 8
  %28 = call i32 @memset(i16* %27, i32 0, i32 128)
  %29 = load i32, i32* %15, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @extend_receive(%struct.TYPE_7__* %32, i32 %33)
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 0, %35 ]
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = trunc i32 %56 to i16
  %58 = load i16*, i16** %8, align 8
  %59 = getelementptr inbounds i16, i16* %58, i64 0
  store i16 %57, i16* %59, align 2
  store i32 1, i32* %14, align 4
  br label %60

60:                                               ; preds = %99, %36
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @decode(%struct.TYPE_7__* %61, i32* %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @e(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %67, i32* %6, align 4
  br label %103

68:                                               ; preds = %60
  %69 = load i32, i32* %18, align 4
  %70 = and i32 %69, 15
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %18, align 4
  %72 = ashr i32 %71, 4
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = load i32, i32* %18, align 4
  %77 = icmp ne i32 %76, 240
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %102

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 16
  store i32 %81, i32* %14, align 4
  br label %98

82:                                               ; preds = %68
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %14, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %87 = load i32, i32* %17, align 4
  %88 = call i32 @extend_receive(%struct.TYPE_7__* %86, i32 %87)
  %89 = trunc i32 %88 to i16
  %90 = load i16*, i16** %8, align 8
  %91 = load i64*, i64** @dezigzag, align 8
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i64, i64* %91, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i16, i16* %90, i64 %96
  store i16 %89, i16* %97, align 2
  br label %98

98:                                               ; preds = %82, %79
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 64
  br i1 %101, label %60, label %102

102:                                              ; preds = %99, %78
  store i32 1, i32* %6, align 4
  br label %103

103:                                              ; preds = %102, %66, %24
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @decode(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @e(i8*, i8*) #1

declare dso_local i32 @memset(i16*, i32, i32) #1

declare dso_local i32 @extend_receive(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
