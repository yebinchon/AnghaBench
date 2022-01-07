; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_syntax_enc.c_VP8EncWrite.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_syntax_enc.c_VP8EncWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32*, i64, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 (i32*, i64, %struct.TYPE_14__*)* }

@VP8_FRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@TAG_SIZE = common dso_local global i64 0, align 8
@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@VP8X_CHUNK_SIZE = common dso_local global i64 0, align 8
@VP8_ENC_ERROR_FILE_TOO_BIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VP8EncWrite(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %4, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 6
  store i32* %23, i32** %5, align 8
  store i32 19, i32* %6, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sdiv i32 19, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 19
  store i32 %31, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = call i32 @GeneratePartition0(%struct.TYPE_15__* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %243

37:                                               ; preds = %1
  %38 = load i32, i32* @VP8_FRAME_HEADER_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = load i32*, i32** %5, align 8
  %41 = call i64 @VP8BitWriterSize(i32* %40)
  %42 = add i64 %39, %41
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = mul nsw i32 3, %46
  %48 = sext i32 %47 to i64
  %49 = add i64 %42, %48
  store i64 %49, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %66, %37
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i64 @VP8BitWriterSize(i32* %62)
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %50

69:                                               ; preds = %50
  %70 = load i64, i64* %10, align 8
  %71 = and i64 %70, 1
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* @TAG_SIZE, align 8
  %76 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %77 = add i64 %75, %76
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %77, %78
  store i64 %79, i64* %12, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = call i64 @IsVP8XNeeded(%struct.TYPE_15__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %69
  %84 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %85 = load i64, i64* @VP8X_CHUNK_SIZE, align 8
  %86 = add i64 %84, %85
  %87 = load i64, i64* %12, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %12, align 8
  br label %89

89:                                               ; preds = %83, %69
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %89
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 1
  %102 = add nsw i32 %97, %101
  store i32 %102, i32* %14, align 4
  %103 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %103, %105
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %12, align 8
  br label %109

109:                                              ; preds = %94, %89
  %110 = load i64, i64* %12, align 8
  %111 = icmp ugt i64 %110, 4294967294
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = load i32, i32* @VP8_ENC_ERROR_FILE_TOO_BIG, align 4
  %115 = call i32 @WebPEncodingSetError(%struct.TYPE_14__* %113, i32 %114)
  store i32 %115, i32* %2, align 4
  br label %243

116:                                              ; preds = %109
  %117 = load i32*, i32** %5, align 8
  %118 = call i32* @VP8BitWriterBuf(i32* %117)
  store i32* %118, i32** %15, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = call i64 @VP8BitWriterSize(i32* %119)
  store i64 %120, i64* %16, align 8
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %116
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %125 = load i64, i64* %16, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %12, align 8
  %128 = call i64 @PutWebPHeaders(%struct.TYPE_15__* %124, i64 %125, i64 %126, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %144

130:                                              ; preds = %123
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64 (i32*, i64, %struct.TYPE_14__*)*, i64 (i32*, i64, %struct.TYPE_14__*)** %132, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = load i64, i64* %16, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %137 = call i64 %133(i32* %134, i64 %135, %struct.TYPE_14__* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %142 = call i64 @EmitPartitionsSize(%struct.TYPE_15__* %140, %struct.TYPE_14__* %141)
  %143 = icmp ne i64 %142, 0
  br label %144

144:                                              ; preds = %139, %130, %123, %116
  %145 = phi i1 [ false, %130 ], [ false, %123 ], [ false, %116 ], [ %143, %139 ]
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %9, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @VP8BitWriterWipeOut(i32* %147)
  store i32 0, i32* %13, align 4
  br label %149

149:                                              ; preds = %211, %144
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %214

155:                                              ; preds = %149
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = call i32* @VP8BitWriterBuf(i32* %161)
  store i32* %162, i32** %17, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = call i64 @VP8BitWriterSize(i32* %168)
  store i64 %169, i64* %18, align 8
  %170 = load i64, i64* %18, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %155
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %172
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i64 (i32*, i64, %struct.TYPE_14__*)*, i64 (i32*, i64, %struct.TYPE_14__*)** %177, align 8
  %179 = load i32*, i32** %17, align 8
  %180 = load i64, i64* %18, align 8
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %182 = call i64 %178(i32* %179, i64 %180, %struct.TYPE_14__* %181)
  %183 = icmp ne i64 %182, 0
  br label %184

184:                                              ; preds = %175, %172
  %185 = phi i1 [ false, %172 ], [ %183, %175 ]
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %184, %155
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = call i32 @VP8BitWriterWipeOut(i32* %193)
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %208

197:                                              ; preds = %187
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %201, %202
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 1
  %206 = call i64 @WebPReportProgress(%struct.TYPE_14__* %198, i32 %203, i32* %205)
  %207 = icmp ne i64 %206, 0
  br label %208

208:                                              ; preds = %197, %187
  %209 = phi i1 [ false, %187 ], [ %207, %197 ]
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %9, align 4
  br label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %149

214:                                              ; preds = %149
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i64, i64* %11, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %222 = call i32 @PutPaddingByte(%struct.TYPE_14__* %221)
  store i32 %222, i32* %9, align 4
  br label %223

223:                                              ; preds = %220, %217, %214
  %224 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %225 = load i64, i64* %12, align 8
  %226 = add i64 %224, %225
  %227 = trunc i64 %226 to i32
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %9, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %223
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %234 = load i32, i32* %8, align 4
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 1
  %237 = call i64 @WebPReportProgress(%struct.TYPE_14__* %233, i32 %234, i32* %236)
  %238 = icmp ne i64 %237, 0
  br label %239

239:                                              ; preds = %232, %223
  %240 = phi i1 [ false, %223 ], [ %238, %232 ]
  %241 = zext i1 %240 to i32
  store i32 %241, i32* %9, align 4
  %242 = load i32, i32* %9, align 4
  store i32 %242, i32* %2, align 4
  br label %243

243:                                              ; preds = %239, %112, %36
  %244 = load i32, i32* %2, align 4
  ret i32 %244
}

declare dso_local i32 @GeneratePartition0(%struct.TYPE_15__*) #1

declare dso_local i64 @VP8BitWriterSize(i32*) #1

declare dso_local i64 @IsVP8XNeeded(%struct.TYPE_15__*) #1

declare dso_local i32 @WebPEncodingSetError(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @VP8BitWriterBuf(i32*) #1

declare dso_local i64 @PutWebPHeaders(%struct.TYPE_15__*, i64, i64, i64) #1

declare dso_local i64 @EmitPartitionsSize(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @VP8BitWriterWipeOut(i32*) #1

declare dso_local i64 @WebPReportProgress(%struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @PutPaddingByte(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
