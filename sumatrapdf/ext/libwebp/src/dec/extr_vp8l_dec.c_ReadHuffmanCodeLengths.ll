; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_ReadHuffmanCodeLengths.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_vp8l_dec.c_ReadHuffmanCodeLengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32, i64 }

@DEFAULT_CODE_LENGTH = common dso_local global i32 0, align 4
@LENGTHS_TABLE_BITS = common dso_local global i32 0, align 4
@NUM_CODE_LENGTH_CODES = common dso_local global i32 0, align 4
@LENGTHS_TABLE_MASK = common dso_local global i64 0, align 8
@kCodeLengthLiterals = common dso_local global i32 0, align 4
@kCodeLengthRepeatCode = common dso_local global i32 0, align 4
@kCodeLengthExtraBits = common dso_local global i32* null, align 8
@kCodeLengthRepeatOffsets = common dso_local global i32* null, align 8
@VP8_STATUS_BITSTREAM_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32, i32*)* @ReadHuffmanCodeLengths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadHuffmanCodeLengths(%struct.TYPE_10__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %10, align 8
  %27 = load i32, i32* @DEFAULT_CODE_LENGTH, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* @LENGTHS_TABLE_BITS, align 4
  %29 = shl i32 1, %28
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %14, align 8
  %32 = alloca %struct.TYPE_12__, i64 %30, align 16
  store i64 %30, i64* %15, align 8
  %33 = load i32, i32* @LENGTHS_TABLE_BITS, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @NUM_CODE_LENGTH_CODES, align 4
  %36 = call i32 @VP8LBuildHuffmanTable(%struct.TYPE_12__* %32, i32 %33, i32* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %4
  br label %156

39:                                               ; preds = %4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %41 = call i32 @VP8LReadBits(%struct.TYPE_11__* %40, i32 1)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = call i32 @VP8LReadBits(%struct.TYPE_11__* %44, i32 3)
  %46 = mul nsw i32 2, %45
  %47 = add nsw i32 2, %46
  store i32 %47, i32* %16, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @VP8LReadBits(%struct.TYPE_11__* %48, i32 %49)
  %51 = add nsw i32 2, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %156

56:                                               ; preds = %43
  br label %59

57:                                               ; preds = %39
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %57, %56
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %154, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %155

64:                                               ; preds = %60
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %12, align 4
  %67 = icmp eq i32 %65, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %155

69:                                               ; preds = %64
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = call i32 @VP8LFillBitWindow(%struct.TYPE_11__* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %73 = call i64 @VP8LPrefetchBits(%struct.TYPE_11__* %72)
  %74 = load i64, i64* @LENGTHS_TABLE_MASK, align 8
  %75 = and i64 %73, %74
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i64 %75
  store %struct.TYPE_12__* %76, %struct.TYPE_12__** %17, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = call i32 @VP8LSetBitPos(%struct.TYPE_11__* %77, i64 %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* @kCodeLengthLiterals, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %69
  %93 = load i32, i32* %18, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i32, i32* %18, align 4
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %101, %92
  br label %154

104:                                              ; preds = %69
  %105 = load i32, i32* %18, align 4
  %106 = load i32, i32* @kCodeLengthRepeatCode, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %19, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* @kCodeLengthLiterals, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %20, align 4
  %112 = load i32*, i32** @kCodeLengthExtraBits, align 8
  %113 = load i32, i32* %20, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %21, align 4
  %117 = load i32*, i32** @kCodeLengthRepeatOffsets, align 8
  %118 = load i32, i32* %20, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %22, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = load i32, i32* %21, align 4
  %124 = call i32 @VP8LReadBits(%struct.TYPE_11__* %122, i32 %123)
  %125 = load i32, i32* %22, align 4
  %126 = add nsw i32 %124, %125
  store i32 %126, i32* %23, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %23, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %7, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %104
  br label %156

133:                                              ; preds = %104
  %134 = load i32, i32* %19, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i32, i32* %13, align 4
  br label %139

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ]
  store i32 %140, i32* %24, align 4
  br label %141

141:                                              ; preds = %145, %139
  %142 = load i32, i32* %23, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %23, align 4
  %144 = icmp sgt i32 %142, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = load i32, i32* %24, align 4
  %147 = load i32*, i32** %8, align 8
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  br label %141

152:                                              ; preds = %141
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153, %103
  br label %60

155:                                              ; preds = %68, %60
  store i32 1, i32* %9, align 4
  br label %156

156:                                              ; preds = %155, %132, %55, %38
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @VP8_STATUS_BITSTREAM_ERROR, align 4
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %159, %156
  %164 = load i32, i32* %9, align 4
  %165 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %165)
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VP8LBuildHuffmanTable(%struct.TYPE_12__*, i32, i32*, i32) #2

declare dso_local i32 @VP8LReadBits(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @VP8LFillBitWindow(%struct.TYPE_11__*) #2

declare dso_local i64 @VP8LPrefetchBits(%struct.TYPE_11__*) #2

declare dso_local i32 @VP8LSetBitPos(%struct.TYPE_11__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
