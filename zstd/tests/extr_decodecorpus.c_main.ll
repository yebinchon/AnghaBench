; ModuleID = '/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_main.c'
source_filename = "/home/carl/AnghaBench/zstd/tests/extr_decodecorpus.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gt_frame = common dso_local global i32 0, align 4
@g_displayLevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"content-size\00", align 1
@opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"use-dict=\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gen-blocks\00", align 1
@gt_block = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"max-block-size-log=\00", align 1
@ZSTD_BLOCKSIZE_MAX = common dso_local global i32 0, align 4
@g_maxBlockSize = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"max-content-size-log=\00", align 1
@MAX_DECOMPRESSED_SIZE_LOG = common dso_local global i32 0, align 4
@g_maxDecompressedSizeLog = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Error: -T requires test mode (-t)\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Error: path is required in file generation mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 10240, i32* %14, align 4
  %20 = load i32, i32* @gt_frame, align 4
  store i32 %20, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %21

21:                                               ; preds = %188, %2
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %191

25:                                               ; preds = %21
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32, i32* %16, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %17, align 8
  %31 = load i8*, i8** %17, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %188

34:                                               ; preds = %25
  %35 = load i8*, i8** %17, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %187

40:                                               ; preds = %34
  %41 = load i8*, i8** %17, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %17, align 8
  br label %43

43:                                               ; preds = %185, %40
  %44 = load i8*, i8** %17, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %186

48:                                               ; preds = %43
  %49 = load i8*, i8** %17, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %180 [
    i32 104, label %52
    i32 72, label %57
    i32 118, label %62
    i32 115, label %67
    i32 110, label %72
    i32 84, label %77
    i32 111, label %100
    i32 112, label %109
    i32 116, label %118
    i32 45, label %121
  ]

52:                                               ; preds = %48
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @usage(i8* %55)
  store i32 0, i32* %3, align 4
  br label %254

57:                                               ; preds = %48
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @advancedUsage(i8* %60)
  store i32 0, i32* %3, align 4
  br label %254

62:                                               ; preds = %48
  %63 = load i8*, i8** %17, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %17, align 8
  %65 = load i32, i32* @g_displayLevel, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* @g_displayLevel, align 4
  br label %185

67:                                               ; preds = %48
  %68 = load i8*, i8** %17, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %17, align 8
  store i32 1, i32* %7, align 4
  %70 = call i8* @readInt(i8** %17)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %6, align 4
  br label %185

72:                                               ; preds = %48
  %73 = load i8*, i8** %17, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %17, align 8
  %75 = call i8* @readInt(i8** %17)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %8, align 4
  br label %185

77:                                               ; preds = %48
  %78 = load i8*, i8** %17, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %17, align 8
  %80 = call i8* @readInt(i8** %17)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %9, align 4
  %82 = load i8*, i8** %17, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 109
  br i1 %85, label %86, label %99

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = mul i32 %87, 60
  store i32 %88, i32* %9, align 4
  %89 = load i8*, i8** %17, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %17, align 8
  %91 = load i8*, i8** %17, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 110
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load i8*, i8** %17, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %17, align 8
  br label %98

98:                                               ; preds = %95, %86
  br label %99

99:                                               ; preds = %98, %77
  br label %185

100:                                              ; preds = %48
  %101 = load i8*, i8** %17, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %17, align 8
  %103 = load i8*, i8** %17, align 8
  store i8* %103, i8** %12, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = load i8*, i8** %17, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %17, align 8
  br label %185

109:                                              ; preds = %48
  %110 = load i8*, i8** %17, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %17, align 8
  %112 = load i8*, i8** %17, align 8
  store i8* %112, i8** %11, align 8
  %113 = load i8*, i8** %17, align 8
  %114 = call i32 @strlen(i8* %113)
  %115 = load i8*, i8** %17, align 8
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8* %117, i8** %17, align 8
  br label %185

118:                                              ; preds = %48
  %119 = load i8*, i8** %17, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %17, align 8
  store i32 1, i32* %10, align 4
  br label %185

121:                                              ; preds = %48
  %122 = load i8*, i8** %17, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %17, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = call i32 @strcmp(i8* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 0), align 4
  br label %174

128:                                              ; preds = %121
  %129 = call i32 @longCommandWArg(i8** %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = call i8* @readU32FromChar(i8** %17)
  %133 = ptrtoint i8* %132 to i32
  store i32 %133, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %173

134:                                              ; preds = %128
  %135 = load i8*, i8** %17, align 8
  %136 = call i32 @strcmp(i8* %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* @gt_block, align 4
  store i32 %139, i32* %15, align 4
  br label %172

140:                                              ; preds = %134
  %141 = call i32 @longCommandWArg(i8** %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %140
  %144 = call i8* @readU32FromChar(i8** %17)
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp sge i32 %146, 2
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* @ZSTD_BLOCKSIZE_MAX, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* %18, align 4
  %154 = shl i32 1, %153
  store i32 %154, i32* @g_maxBlockSize, align 4
  br label %155

155:                                              ; preds = %152, %148, %143
  br label %171

156:                                              ; preds = %140
  %157 = call i32 @longCommandWArg(i8** %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = call i8* @readU32FromChar(i8** %17)
  %161 = ptrtoint i8* %160 to i32
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* @MAX_DECOMPRESSED_SIZE_LOG, align 4
  %163 = load i32, i32* %19, align 4
  %164 = call i32 @MIN(i32 %162, i32 %163)
  store i32 %164, i32* @g_maxDecompressedSizeLog, align 4
  br label %170

165:                                              ; preds = %156
  %166 = load i8**, i8*** %5, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i64 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @advancedUsage(i8* %168)
  store i32 1, i32* %3, align 4
  br label %254

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %170, %155
  br label %172

172:                                              ; preds = %171, %138
  br label %173

173:                                              ; preds = %172, %131
  br label %174

174:                                              ; preds = %173, %127
  %175 = load i8*, i8** %17, align 8
  %176 = call i32 @strlen(i8* %175)
  %177 = load i8*, i8** %17, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8* %179, i8** %17, align 8
  br label %185

180:                                              ; preds = %48
  %181 = load i8**, i8*** %5, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 @usage(i8* %183)
  store i32 1, i32* %3, align 4
  br label %254

185:                                              ; preds = %174, %118, %109, %100, %99, %72, %67, %62
  br label %43

186:                                              ; preds = %43
  br label %187

187:                                              ; preds = %186, %34
  br label %188

188:                                              ; preds = %187, %33
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %16, align 4
  br label %21

191:                                              ; preds = %21
  %192 = load i32, i32* %7, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = call i32 (...) @makeSeed()
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %194, %191
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @runTestMode(i32 %200, i32 %201, i32 %202, i32 %203)
  store i32 %204, i32* %3, align 4
  br label %254

205:                                              ; preds = %196
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = call i32 @DISPLAY(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %210 = load i8**, i8*** %5, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 0
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @usage(i8* %212)
  store i32 1, i32* %3, align 4
  br label %254

214:                                              ; preds = %205
  br label %215

215:                                              ; preds = %214
  %216 = load i8*, i8** %11, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %224, label %218

218:                                              ; preds = %215
  %219 = call i32 @DISPLAY(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0))
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 @usage(i8* %222)
  store i32 1, i32* %3, align 4
  br label %254

224:                                              ; preds = %215
  %225 = load i32, i32* %8, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %224
  %228 = load i32, i32* %13, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load i32, i32* %6, align 4
  %232 = load i8*, i8** %11, align 8
  %233 = load i8*, i8** %12, align 8
  %234 = load i32, i32* %15, align 4
  %235 = call i32 @generateFile(i32 %231, i8* %232, i8* %233, i32 %234)
  store i32 %235, i32* %3, align 4
  br label %254

236:                                              ; preds = %227, %224
  %237 = load i32, i32* %13, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %246

239:                                              ; preds = %236
  %240 = load i32, i32* %6, align 4
  %241 = load i32, i32* %8, align 4
  %242 = load i8*, i8** %11, align 8
  %243 = load i8*, i8** %12, align 8
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @generateCorpus(i32 %240, i32 %241, i8* %242, i8* %243, i32 %244)
  store i32 %245, i32* %3, align 4
  br label %254

246:                                              ; preds = %236
  %247 = load i32, i32* %6, align 4
  %248 = load i32, i32* %8, align 4
  %249 = load i8*, i8** %11, align 8
  %250 = load i8*, i8** %12, align 8
  %251 = load i32, i32* %14, align 4
  %252 = load i32, i32* %15, align 4
  %253 = call i32 @generateCorpusWithDict(i32 %247, i32 %248, i8* %249, i8* %250, i32 %251, i32 %252)
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %246, %239, %230, %218, %208, %199, %180, %165, %57, %52
  %255 = load i32, i32* %3, align 4
  ret i32 %255
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @advancedUsage(i8*) #1

declare dso_local i8* @readInt(i8**) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @longCommandWArg(i8**, i8*) #1

declare dso_local i8* @readU32FromChar(i8**) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @makeSeed(...) #1

declare dso_local i32 @runTestMode(i32, i32, i32, i32) #1

declare dso_local i32 @DISPLAY(i8*) #1

declare dso_local i32 @generateFile(i32, i8*, i8*, i32) #1

declare dso_local i32 @generateCorpus(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @generateCorpusWithDict(i32, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
