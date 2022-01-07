; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlCharEncOutFunc.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_encoding.c_xmlCharEncOutFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32*, i32 }

@XML_I18N_NO_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"xmlCharEncOutFunc: no output function !\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"&#%d;\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"0x%02X 0x%02X 0x%02X 0x%02X\00", align 1
@XML_I18N_CONV_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"output conversion failed due to conv error, bytes %s\0A\00", align 1
@XML_BUFFER_ALLOC_IMMUTABLE = common dso_local global i32 0, align 4
@xmlGenericErrorContext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlCharEncOutFunc(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [20 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [50 x i8], align 16
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %254

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = icmp eq %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %254

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %235, %130, %26
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %27
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %67

43:                                               ; preds = %40
  store i32 0, i32* %11, align 4
  %44 = load i32*, i32** %5, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %47, i64 %51
  %53 = call i32 @xmlEncOutputChunk(i32* %44, i32* %52, i32* %9, i32* null, i32* %11)
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 0, i32* %66, align 4
  store i32 0, i32* %4, align 4
  br label %254

67:                                               ; preds = %40
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %254

74:                                               ; preds = %67
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %75, 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 %81, 4
  %83 = call i32 @xmlBufferGrow(%struct.TYPE_6__* %80, i32 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %86, %89
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %79, %74
  %93 = load i32*, i32** %5, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @xmlEncOutputChunk(i32* %93, i32* %101, i32* %9, i32* %104, i32* %11)
  store i32 %105, i32* %8, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @xmlBufferShrink(%struct.TYPE_6__* %106, i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %10, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %119, i64 %123
  store i32 0, i32* %124, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %132

127:                                              ; preds = %92
  %128 = load i32, i32* %9, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %27

131:                                              ; preds = %127
  store i32 -3, i32* %8, align 4
  br label %132

132:                                              ; preds = %131, %92
  %133 = load i32, i32* %8, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %135, %132
  %140 = load i32, i32* %8, align 4
  switch i32 %140, label %252 [
    i32 0, label %141
    i32 -1, label %142
    i32 -3, label %143
    i32 -4, label %144
    i32 -2, label %147
  ]

141:                                              ; preds = %139
  br label %252

142:                                              ; preds = %139
  br label %252

143:                                              ; preds = %139
  br label %252

144:                                              ; preds = %139
  %145 = load i32, i32* @XML_I18N_NO_OUTPUT, align 4
  %146 = call i32 @xmlEncodingErr(i32 %145, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* null)
  store i32 -1, i32* %8, align 4
  br label %252

147:                                              ; preds = %139
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %14, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  store i32* %153, i32** %15, align 8
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @xmlGetUTF8Char(i32* %154, i32* %14)
  store i32 %155, i32* %16, align 4
  %156 = load i32, i32* %16, align 4
  %157 = icmp sle i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %252

159:                                              ; preds = %147
  %160 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i64 0, i64 0
  %161 = bitcast i32* %160 to i8*
  %162 = load i32, i32* %16, align 4
  %163 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %161, i32 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  store i32 %163, i32* %17, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %165 = load i32, i32* %14, align 4
  %166 = call i32 @xmlBufferShrink(%struct.TYPE_6__* %164, i32 %165)
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %168 = load i32, i32* %17, align 4
  %169 = mul nsw i32 %168, 4
  %170 = call i32 @xmlBufferGrow(%struct.TYPE_6__* %167, i32 %169)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %173, %176
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %17, align 4
  store i32 %179, i32* %11, align 4
  %180 = load i32*, i32** %5, align 8
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  %189 = getelementptr inbounds [20 x i32], [20 x i32]* %13, i64 0, i64 0
  %190 = call i32 @xmlEncOutputChunk(i32* %180, i32* %188, i32* %9, i32* %189, i32* %11)
  store i32 %190, i32* %8, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %159
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %17, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %235

197:                                              ; preds = %193, %159
  %198 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 0
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 2
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 3
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %198, i32 49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %203, i32 %208, i32 %213, i32 %218)
  %220 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 49
  store i8 0, i8* %220, align 1
  %221 = load i32, i32* @XML_I18N_CONV_FAILED, align 4
  %222 = getelementptr inbounds [50 x i8], [50 x i8]* %18, i64 0, i64 0
  %223 = call i32 @xmlEncodingErr(i32 %221, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* %222)
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @XML_BUFFER_ALLOC_IMMUTABLE, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %197
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 32, i32* %233, align 4
  br label %234

234:                                              ; preds = %229, %197
  br label %252

235:                                              ; preds = %193
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* %10, align 4
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %246, i64 %250
  store i32 0, i32* %251, align 4
  br label %27

252:                                              ; preds = %139, %234, %158, %144, %143, %142, %141
  %253 = load i32, i32* %8, align 4
  store i32 %253, i32* %4, align 4
  br label %254

254:                                              ; preds = %252, %73, %43, %25, %21
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local i32 @xmlEncOutputChunk(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @xmlBufferGrow(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @xmlBufferShrink(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @xmlEncodingErr(i32, i8*, i8*) #1

declare dso_local i32 @xmlGetUTF8Char(i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
