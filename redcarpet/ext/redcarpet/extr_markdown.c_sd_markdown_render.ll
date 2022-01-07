; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_sd_markdown_render.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_sd_markdown_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32, i8* }
%struct.sd_markdown = type { i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.buf.0*, i32)*, i32 (%struct.buf.1*, i32)* }
%struct.buf.0 = type opaque
%struct.buf.1 = type opaque

@sd_markdown_render.UTF8_BOM = internal constant [3 x i8] c"\EF\BB\BF", align 1
@REF_TABLE_SIZE = common dso_local global i32 0, align 4
@MKDEXT_FOOTNOTES = common dso_local global i32 0, align 4
@MKDEXT_FENCED_CODE = common dso_local global i32 0, align 4
@BUFFER_SPAN = common dso_local global i64 0, align 8
@BUFFER_BLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sd_markdown_render(%struct.buf* %0, i8* %1, i64 %2, %struct.sd_markdown* %3) #0 {
  %5 = alloca %struct.buf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca %struct.buf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.buf* %0, %struct.buf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sd_markdown* %3, %struct.sd_markdown** %8, align 8
  store i32 0, i32* %12, align 4
  %15 = call %struct.buf* @bufnew(i32 64)
  store %struct.buf* %15, %struct.buf** %9, align 8
  %16 = load %struct.buf*, %struct.buf** %9, align 8
  %17 = icmp ne %struct.buf* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %339

19:                                               ; preds = %4
  %20 = load %struct.buf*, %struct.buf** %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @bufgrow(%struct.buf* %20, i64 %21)
  %23 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %24 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %23, i32 0, i32 4
  %25 = load i32, i32* @REF_TABLE_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %24, i32 0, i32 %28)
  %30 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %31 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MKDEXT_FOOTNOTES, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %13, align 4
  %35 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %36 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MKDEXT_FENCED_CODE, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %19
  %43 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %44 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %43, i32 0, i32 3
  %45 = call i32 @memset(i32* %44, i32 0, i32 4)
  %46 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %47 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %46, i32 0, i32 2
  %48 = call i32 @memset(i32* %47, i32 0, i32 4)
  br label %49

49:                                               ; preds = %42, %19
  store i64 0, i64* %10, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp uge i64 %50, 3
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @memcmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @sd_markdown_render.UTF8_BOM, i64 0, i64 0), i32 3)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %56, %52, %49
  br label %60

60:                                               ; preds = %201, %59
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %202

64:                                               ; preds = %60
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub i64 %71, %72
  %74 = call i64 @is_codefence(i8* %70, i64 %73, i32* null)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %67
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %76, %67, %64
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i8*, i8** %6, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %92 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %91, i32 0, i32 3
  %93 = call i64 @is_footnote(i8* %88, i64 %89, i64 %90, i64* %11, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i64, i64* %11, align 8
  store i64 %96, i64* %10, align 8
  br label %201

97:                                               ; preds = %87, %84, %81
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %97
  %101 = load i8*, i8** %6, align 8
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %105 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @is_ref(i8* %101, i64 %102, i64 %103, i64* %11, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i64, i64* %11, align 8
  store i64 %110, i64* %10, align 8
  br label %200

111:                                              ; preds = %100, %97
  %112 = load i64, i64* %10, align 8
  store i64 %112, i64* %11, align 8
  br label %113

113:                                              ; preds = %133, %111
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %7, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i8*, i8** %6, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 10
  br i1 %123, label %124, label %131

124:                                              ; preds = %117
  %125 = load i8*, i8** %6, align 8
  %126 = load i64, i64* %11, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 13
  br label %131

131:                                              ; preds = %124, %117, %113
  %132 = phi i1 [ false, %117 ], [ false, %113 ], [ %130, %124 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %11, align 8
  br label %113

136:                                              ; preds = %131
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %10, align 8
  %139 = icmp ugt i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load %struct.buf*, %struct.buf** %9, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = load i64, i64* %10, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* %10, align 8
  %147 = sub i64 %145, %146
  %148 = call i32 @expand_tabs(%struct.buf* %141, i8* %144, i64 %147)
  br label %149

149:                                              ; preds = %140, %136
  br label %150

150:                                              ; preds = %195, %149
  %151 = load i64, i64* %11, align 8
  %152 = load i64, i64* %7, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %150
  %155 = load i8*, i8** %6, align 8
  %156 = load i64, i64* %11, align 8
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 10
  br i1 %160, label %168, label %161

161:                                              ; preds = %154
  %162 = load i8*, i8** %6, align 8
  %163 = load i64, i64* %11, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 13
  br label %168

168:                                              ; preds = %161, %154
  %169 = phi i1 [ true, %154 ], [ %167, %161 ]
  br label %170

170:                                              ; preds = %168, %150
  %171 = phi i1 [ false, %150 ], [ %169, %168 ]
  br i1 %171, label %172, label %198

172:                                              ; preds = %170
  %173 = load i8*, i8** %6, align 8
  %174 = load i64, i64* %11, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 10
  br i1 %178, label %192, label %179

179:                                              ; preds = %172
  %180 = load i64, i64* %11, align 8
  %181 = add i64 %180, 1
  %182 = load i64, i64* %7, align 8
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %195

184:                                              ; preds = %179
  %185 = load i8*, i8** %6, align 8
  %186 = load i64, i64* %11, align 8
  %187 = add i64 %186, 1
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = icmp ne i32 %190, 10
  br i1 %191, label %192, label %195

192:                                              ; preds = %184, %172
  %193 = load %struct.buf*, %struct.buf** %9, align 8
  %194 = call i32 @bufputc(%struct.buf* %193, i8 signext 10)
  br label %195

195:                                              ; preds = %192, %184, %179
  %196 = load i64, i64* %11, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %11, align 8
  br label %150

198:                                              ; preds = %170
  %199 = load i64, i64* %11, align 8
  store i64 %199, i64* %10, align 8
  br label %200

200:                                              ; preds = %198, %109
  br label %201

201:                                              ; preds = %200, %95
  br label %60

202:                                              ; preds = %60
  %203 = load %struct.buf*, %struct.buf** %5, align 8
  %204 = load %struct.buf*, %struct.buf** %9, align 8
  %205 = getelementptr inbounds %struct.buf, %struct.buf* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.buf*, %struct.buf** %9, align 8
  %208 = getelementptr inbounds %struct.buf, %struct.buf* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = ashr i32 %209, 1
  %211 = add nsw i32 %206, %210
  %212 = sext i32 %211 to i64
  %213 = call i32 @bufgrow(%struct.buf* %203, i64 %212)
  %214 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %215 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %214, i32 0, i32 6
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  %217 = load i32 (%struct.buf.1*, i32)*, i32 (%struct.buf.1*, i32)** %216, align 8
  %218 = icmp ne i32 (%struct.buf.1*, i32)* %217, null
  br i1 %218, label %219, label %230

219:                                              ; preds = %202
  %220 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %221 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 1
  %223 = load i32 (%struct.buf.1*, i32)*, i32 (%struct.buf.1*, i32)** %222, align 8
  %224 = load %struct.buf*, %struct.buf** %5, align 8
  %225 = bitcast %struct.buf* %224 to %struct.buf.1*
  %226 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %227 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = call i32 %223(%struct.buf.1* %225, i32 %228)
  br label %230

230:                                              ; preds = %219, %202
  %231 = load %struct.buf*, %struct.buf** %9, align 8
  %232 = getelementptr inbounds %struct.buf, %struct.buf* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %274

235:                                              ; preds = %230
  %236 = load %struct.buf*, %struct.buf** %9, align 8
  %237 = getelementptr inbounds %struct.buf, %struct.buf* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = load %struct.buf*, %struct.buf** %9, align 8
  %240 = getelementptr inbounds %struct.buf, %struct.buf* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %238, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp ne i32 %246, 10
  br i1 %247, label %248, label %264

248:                                              ; preds = %235
  %249 = load %struct.buf*, %struct.buf** %9, align 8
  %250 = getelementptr inbounds %struct.buf, %struct.buf* %249, i32 0, i32 1
  %251 = load i8*, i8** %250, align 8
  %252 = load %struct.buf*, %struct.buf** %9, align 8
  %253 = getelementptr inbounds %struct.buf, %struct.buf* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %251, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 13
  br i1 %260, label %261, label %264

261:                                              ; preds = %248
  %262 = load %struct.buf*, %struct.buf** %9, align 8
  %263 = call i32 @bufputc(%struct.buf* %262, i8 signext 10)
  br label %264

264:                                              ; preds = %261, %248, %235
  %265 = load %struct.buf*, %struct.buf** %5, align 8
  %266 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %267 = load %struct.buf*, %struct.buf** %9, align 8
  %268 = getelementptr inbounds %struct.buf, %struct.buf* %267, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.buf*, %struct.buf** %9, align 8
  %271 = getelementptr inbounds %struct.buf, %struct.buf* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @parse_block(%struct.buf* %265, %struct.sd_markdown* %266, i8* %269, i32 %272)
  br label %274

274:                                              ; preds = %264, %230
  %275 = load i32, i32* %13, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %283

277:                                              ; preds = %274
  %278 = load %struct.buf*, %struct.buf** %5, align 8
  %279 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %280 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %281 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %280, i32 0, i32 2
  %282 = call i32 @parse_footnote_list(%struct.buf* %278, %struct.sd_markdown* %279, i32* %281)
  br label %283

283:                                              ; preds = %277, %274
  %284 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %285 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %284, i32 0, i32 6
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 0
  %287 = load i32 (%struct.buf.0*, i32)*, i32 (%struct.buf.0*, i32)** %286, align 8
  %288 = icmp ne i32 (%struct.buf.0*, i32)* %287, null
  br i1 %288, label %289, label %300

289:                                              ; preds = %283
  %290 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %291 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %290, i32 0, i32 6
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 0
  %293 = load i32 (%struct.buf.0*, i32)*, i32 (%struct.buf.0*, i32)** %292, align 8
  %294 = load %struct.buf*, %struct.buf** %5, align 8
  %295 = bitcast %struct.buf* %294 to %struct.buf.0*
  %296 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %297 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = call i32 %293(%struct.buf.0* %295, i32 %298)
  br label %300

300:                                              ; preds = %289, %283
  %301 = load %struct.buf*, %struct.buf** %5, align 8
  %302 = call i32 @bufcstr(%struct.buf* %301)
  %303 = load %struct.buf*, %struct.buf** %9, align 8
  %304 = call i32 @bufrelease(%struct.buf* %303)
  %305 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %306 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @free_link_refs(i32 %307)
  %309 = load i32, i32* %13, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %318

311:                                              ; preds = %300
  %312 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %313 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %312, i32 0, i32 3
  %314 = call i32 @free_footnote_list(i32* %313, i32 1)
  %315 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %316 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %315, i32 0, i32 2
  %317 = call i32 @free_footnote_list(i32* %316, i32 0)
  br label %318

318:                                              ; preds = %311, %300
  %319 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %320 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %319, i32 0, i32 1
  %321 = load %struct.TYPE_4__*, %struct.TYPE_4__** %320, align 8
  %322 = load i64, i64* @BUFFER_SPAN, align 8
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = icmp eq i64 %325, 0
  %327 = zext i1 %326 to i32
  %328 = call i32 @assert(i32 %327)
  %329 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %330 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %329, i32 0, i32 1
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %330, align 8
  %332 = load i64, i64* @BUFFER_BLOCK, align 8
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = icmp eq i64 %335, 0
  %337 = zext i1 %336 to i32
  %338 = call i32 @assert(i32 %337)
  br label %339

339:                                              ; preds = %318, %18
  ret void
}

declare dso_local %struct.buf* @bufnew(i32) #1

declare dso_local i32 @bufgrow(%struct.buf*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @is_codefence(i8*, i64, i32*) #1

declare dso_local i64 @is_footnote(i8*, i64, i64, i64*, i32*) #1

declare dso_local i64 @is_ref(i8*, i64, i64, i64*, i32) #1

declare dso_local i32 @expand_tabs(%struct.buf*, i8*, i64) #1

declare dso_local i32 @bufputc(%struct.buf*, i8 signext) #1

declare dso_local i32 @parse_block(%struct.buf*, %struct.sd_markdown*, i8*, i32) #1

declare dso_local i32 @parse_footnote_list(%struct.buf*, %struct.sd_markdown*, i32*) #1

declare dso_local i32 @bufcstr(%struct.buf*) #1

declare dso_local i32 @bufrelease(%struct.buf*) #1

declare dso_local i32 @free_link_refs(i32) #1

declare dso_local i32 @free_footnote_list(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
