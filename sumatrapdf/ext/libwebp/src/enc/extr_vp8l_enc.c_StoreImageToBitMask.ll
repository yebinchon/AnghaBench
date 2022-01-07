; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_StoreImageToBitMask.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_vp8l_enc.c_StoreImageToBitMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }

@StoreImageToBitMask.order = internal constant [4 x i32] [i32 1, i32 2, i32 0, i32 3], align 16
@NUM_LENGTH_CODES = common dso_local global i32 0, align 4
@VP8_ENC_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@VP8_ENC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32, i32, i32*, i32*, i32*)* @StoreImageToBitMask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StoreImageToBitMask(%struct.TYPE_18__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_17__, align 8
  %22 = alloca %struct.TYPE_19__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %6
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @VP8LSubSampleSize(i32 %34, i32 %35)
  br label %38

37:                                               ; preds = %6
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 1, %37 ]
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %47

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = shl i32 1, %44
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %43, %42
  %48 = phi i32 [ 0, %42 ], [ %46, %43 ]
  store i32 %48, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %14, align 4
  %54 = and i32 %52, %53
  store i32 %54, i32* %18, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %19, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %19, align 4
  %60 = mul nsw i32 5, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32* %62, i32** %20, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call %struct.TYPE_19__* @VP8LRefsCursorInit(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  store %struct.TYPE_19__* %64, %struct.TYPE_19__** %65, align 8
  br label %66

66:                                               ; preds = %192, %47
  %67 = call i64 @VP8LRefsCursorOk(%struct.TYPE_17__* %21)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %194

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  store %struct.TYPE_19__* %71, %struct.TYPE_19__** %22, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %14, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %77, %69
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %14, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %14, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %18, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %91, %92
  %94 = load i32, i32* %13, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %9, align 4
  %98 = ashr i32 %96, %97
  %99 = add nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %90, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %19, align 4
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %19, align 4
  %105 = mul nsw i32 5, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32* %107, i32** %20, align 8
  br label %108

108:                                              ; preds = %83, %77
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %110 = call i64 @PixOrCopyIsLiteral(%struct.TYPE_19__* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %108
  store i32 0, i32* %23, align 4
  br label %113

113:                                              ; preds = %130, %112
  %114 = load i32, i32* %23, align 4
  %115 = icmp slt i32 %114, 4
  br i1 %115, label %116, label %133

116:                                              ; preds = %113
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %118 = load i32, i32* %23, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* @StoreImageToBitMask.order, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @PixOrCopyLiteral(%struct.TYPE_19__* %117, i32 %121)
  store i32 %122, i32* %24, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %124 = load i32*, i32** %20, align 8
  %125 = load i32, i32* %23, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %24, align 4
  %129 = call i32 @WriteHuffmanCode(%struct.TYPE_18__* %123, i32* %127, i32 %128)
  br label %130

130:                                              ; preds = %116
  %131 = load i32, i32* %23, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %23, align 4
  br label %113

133:                                              ; preds = %113
  br label %175

134:                                              ; preds = %108
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %136 = call i64 @PixOrCopyIsCacheIdx(%struct.TYPE_19__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %140 = call i32 @PixOrCopyCacheIdx(%struct.TYPE_19__* %139)
  store i32 %140, i32* %25, align 4
  %141 = load i32, i32* @NUM_LENGTH_CODES, align 4
  %142 = add nsw i32 256, %141
  %143 = load i32, i32* %25, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %26, align 4
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %146 = load i32*, i32** %20, align 8
  %147 = load i32, i32* %26, align 4
  %148 = call i32 @WriteHuffmanCode(%struct.TYPE_18__* %145, i32* %146, i32 %147)
  br label %174

149:                                              ; preds = %134
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %151 = call i32 @PixOrCopyDistance(%struct.TYPE_19__* %150)
  store i32 %151, i32* %30, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @VP8LPrefixEncode(i32 %154, i32* %29, i32* %28, i32* %27)
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %157 = load i32*, i32** %20, align 8
  %158 = load i32, i32* %29, align 4
  %159 = add nsw i32 256, %158
  %160 = load i32, i32* %27, align 4
  %161 = load i32, i32* %28, align 4
  %162 = call i32 @WriteHuffmanCodeWithExtraBits(%struct.TYPE_18__* %156, i32* %157, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %30, align 4
  %164 = call i32 @VP8LPrefixEncode(i32 %163, i32* %29, i32* %28, i32* %27)
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %166 = load i32*, i32** %20, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 4
  %168 = load i32, i32* %29, align 4
  %169 = call i32 @WriteHuffmanCode(%struct.TYPE_18__* %165, i32* %167, i32 %168)
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %171 = load i32, i32* %27, align 4
  %172 = load i32, i32* %28, align 4
  %173 = call i32 @VP8LPutBits(%struct.TYPE_18__* %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %149, %138
  br label %175

175:                                              ; preds = %174, %133
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %177 = call i64 @PixOrCopyLength(%struct.TYPE_19__* %176)
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %15, align 4
  br label %182

182:                                              ; preds = %186, %175
  %183 = load i32, i32* %15, align 4
  %184 = load i32, i32* %8, align 4
  %185 = icmp sge i32 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = load i32, i32* %8, align 4
  %188 = load i32, i32* %15, align 4
  %189 = sub nsw i32 %188, %187
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %16, align 4
  br label %182

192:                                              ; preds = %182
  %193 = call i32 @VP8LRefsCursorNext(%struct.TYPE_17__* %21)
  br label %66

194:                                              ; preds = %66
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i32, i32* @VP8_ENC_ERROR_OUT_OF_MEMORY, align 4
  br label %203

201:                                              ; preds = %194
  %202 = load i32, i32* @VP8_ENC_OK, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  ret i32 %204
}

declare dso_local i32 @VP8LSubSampleSize(i32, i32) #1

declare dso_local %struct.TYPE_19__* @VP8LRefsCursorInit(i32*) #1

declare dso_local i64 @VP8LRefsCursorOk(%struct.TYPE_17__*) #1

declare dso_local i64 @PixOrCopyIsLiteral(%struct.TYPE_19__*) #1

declare dso_local i32 @PixOrCopyLiteral(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @WriteHuffmanCode(%struct.TYPE_18__*, i32*, i32) #1

declare dso_local i64 @PixOrCopyIsCacheIdx(%struct.TYPE_19__*) #1

declare dso_local i32 @PixOrCopyCacheIdx(%struct.TYPE_19__*) #1

declare dso_local i32 @PixOrCopyDistance(%struct.TYPE_19__*) #1

declare dso_local i32 @VP8LPrefixEncode(i32, i32*, i32*, i32*) #1

declare dso_local i32 @WriteHuffmanCodeWithExtraBits(%struct.TYPE_18__*, i32*, i32, i32, i32) #1

declare dso_local i32 @VP8LPutBits(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @PixOrCopyLength(%struct.TYPE_19__*) #1

declare dso_local i32 @VP8LRefsCursorNext(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
