; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_table_header.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_table_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i32 }
%struct.sd_markdown = type { i32 }

@MKD_TABLE_ALIGN_L = common dso_local global i32 0, align 4
@MKD_TABLE_ALIGN_R = common dso_local global i32 0, align 4
@MKD_TABLE_HEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64, i64*, i32**)* @parse_table_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_table_header(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3, i64* %4, i32** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.buf*, align 8
  %9 = alloca %struct.sd_markdown*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.buf* %0, %struct.buf** %8, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32** %5, i32*** %13, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %44, %6
  %21 = load i64, i64* %15, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %15, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 10
  br label %31

31:                                               ; preds = %24, %20
  %32 = phi i1 [ false, %20 ], [ %30, %24 ]
  br i1 %32, label %33, label %45

33:                                               ; preds = %31
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %15, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %15, align 8
  %37 = getelementptr inbounds i8, i8* %34, i64 %35
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 124
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* %14, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %44

44:                                               ; preds = %41, %33
  br label %20

45:                                               ; preds = %31
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %45
  store i64 0, i64* %7, align 8
  br label %291

53:                                               ; preds = %49
  %54 = load i64, i64* %15, align 8
  store i64 %54, i64* %17, align 8
  br label %55

55:                                               ; preds = %68, %53
  %56 = load i64, i64* %17, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = load i64, i64* %17, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @_isspace(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %58, %55
  %67 = phi i1 [ false, %55 ], [ %65, %58 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i64, i64* %17, align 8
  %70 = add i64 %69, -1
  store i64 %70, i64* %17, align 8
  br label %55

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 124
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = load i64, i64* %17, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i8*, i8** %10, align 8
  %85 = load i64, i64* %17, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 124
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %91, %83, %80
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = load i64*, i64** %12, align 8
  store i64 %97, i64* %98, align 8
  %99 = load i64*, i64** %12, align 8
  %100 = load i64, i64* %99, align 8
  %101 = call i32* @calloc(i64 %100, i32 4)
  %102 = load i32**, i32*** %13, align 8
  store i32* %101, i32** %102, align 8
  %103 = load i64, i64* %15, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %15, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %11, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %94
  %109 = load i8*, i8** %10, align 8
  %110 = load i64, i64* %15, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 124
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i64, i64* %15, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %15, align 8
  br label %118

118:                                              ; preds = %115, %108, %94
  %119 = load i64, i64* %15, align 8
  store i64 %119, i64* %18, align 8
  br label %120

120:                                              ; preds = %133, %118
  %121 = load i64, i64* %18, align 8
  %122 = load i64, i64* %11, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %120
  %125 = load i8*, i8** %10, align 8
  %126 = load i64, i64* %18, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 10
  br label %131

131:                                              ; preds = %124, %120
  %132 = phi i1 [ false, %120 ], [ %130, %124 ]
  br i1 %132, label %133, label %136

133:                                              ; preds = %131
  %134 = load i64, i64* %18, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %18, align 8
  br label %120

136:                                              ; preds = %131
  store i64 0, i64* %16, align 8
  br label %137

137:                                              ; preds = %269, %136
  %138 = load i64, i64* %16, align 8
  %139 = load i64*, i64** %12, align 8
  %140 = load i64, i64* %139, align 8
  %141 = icmp ult i64 %138, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* %18, align 8
  %145 = icmp ult i64 %143, %144
  br label %146

146:                                              ; preds = %142, %137
  %147 = phi i1 [ false, %137 ], [ %145, %142 ]
  br i1 %147, label %148, label %272

148:                                              ; preds = %146
  store i64 0, i64* %19, align 8
  br label %149

149:                                              ; preds = %162, %148
  %150 = load i64, i64* %15, align 8
  %151 = load i64, i64* %18, align 8
  %152 = icmp ult i64 %150, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i8*, i8** %10, align 8
  %155 = load i64, i64* %15, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 32
  br label %160

160:                                              ; preds = %153, %149
  %161 = phi i1 [ false, %149 ], [ %159, %153 ]
  br i1 %161, label %162, label %165

162:                                              ; preds = %160
  %163 = load i64, i64* %15, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %15, align 8
  br label %149

165:                                              ; preds = %160
  %166 = load i8*, i8** %10, align 8
  %167 = load i64, i64* %15, align 8
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 58
  br i1 %171, label %172, label %184

172:                                              ; preds = %165
  %173 = load i64, i64* %15, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %15, align 8
  %175 = load i32, i32* @MKD_TABLE_ALIGN_L, align 4
  %176 = load i32**, i32*** %13, align 8
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* %16, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %175
  store i32 %181, i32* %179, align 4
  %182 = load i64, i64* %19, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %19, align 8
  br label %184

184:                                              ; preds = %172, %165
  br label %185

185:                                              ; preds = %198, %184
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* %18, align 8
  %188 = icmp ult i64 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i8*, i8** %10, align 8
  %191 = load i64, i64* %15, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 45
  br label %196

196:                                              ; preds = %189, %185
  %197 = phi i1 [ false, %185 ], [ %195, %189 ]
  br i1 %197, label %198, label %203

198:                                              ; preds = %196
  %199 = load i64, i64* %15, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %15, align 8
  %201 = load i64, i64* %19, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %19, align 8
  br label %185

203:                                              ; preds = %196
  %204 = load i64, i64* %15, align 8
  %205 = load i64, i64* %18, align 8
  %206 = icmp ult i64 %204, %205
  br i1 %206, label %207, label %226

207:                                              ; preds = %203
  %208 = load i8*, i8** %10, align 8
  %209 = load i64, i64* %15, align 8
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 58
  br i1 %213, label %214, label %226

214:                                              ; preds = %207
  %215 = load i64, i64* %15, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %15, align 8
  %217 = load i32, i32* @MKD_TABLE_ALIGN_R, align 4
  %218 = load i32**, i32*** %13, align 8
  %219 = load i32*, i32** %218, align 8
  %220 = load i64, i64* %16, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %217
  store i32 %223, i32* %221, align 4
  %224 = load i64, i64* %19, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %19, align 8
  br label %226

226:                                              ; preds = %214, %207, %203
  br label %227

227:                                              ; preds = %240, %226
  %228 = load i64, i64* %15, align 8
  %229 = load i64, i64* %18, align 8
  %230 = icmp ult i64 %228, %229
  br i1 %230, label %231, label %238

231:                                              ; preds = %227
  %232 = load i8*, i8** %10, align 8
  %233 = load i64, i64* %15, align 8
  %234 = getelementptr inbounds i8, i8* %232, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = sext i8 %235 to i32
  %237 = icmp eq i32 %236, 32
  br label %238

238:                                              ; preds = %231, %227
  %239 = phi i1 [ false, %227 ], [ %237, %231 ]
  br i1 %239, label %240, label %243

240:                                              ; preds = %238
  %241 = load i64, i64* %15, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %15, align 8
  br label %227

243:                                              ; preds = %238
  %244 = load i64, i64* %15, align 8
  %245 = load i64, i64* %18, align 8
  %246 = icmp ult i64 %244, %245
  br i1 %246, label %247, label %262

247:                                              ; preds = %243
  %248 = load i8*, i8** %10, align 8
  %249 = load i64, i64* %15, align 8
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp ne i32 %252, 124
  br i1 %253, label %254, label %262

254:                                              ; preds = %247
  %255 = load i8*, i8** %10, align 8
  %256 = load i64, i64* %15, align 8
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 43
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  br label %272

262:                                              ; preds = %254, %247, %243
  %263 = load i64, i64* %19, align 8
  %264 = icmp ult i64 %263, 1
  br i1 %264, label %265, label %266

265:                                              ; preds = %262
  br label %272

266:                                              ; preds = %262
  %267 = load i64, i64* %15, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %15, align 8
  br label %269

269:                                              ; preds = %266
  %270 = load i64, i64* %16, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %16, align 8
  br label %137

272:                                              ; preds = %265, %261, %146
  %273 = load i64, i64* %16, align 8
  %274 = load i64*, i64** %12, align 8
  %275 = load i64, i64* %274, align 8
  %276 = icmp ult i64 %273, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  store i64 0, i64* %7, align 8
  br label %291

278:                                              ; preds = %272
  %279 = load %struct.buf*, %struct.buf** %8, align 8
  %280 = load %struct.sd_markdown*, %struct.sd_markdown** %9, align 8
  %281 = load i8*, i8** %10, align 8
  %282 = load i64, i64* %17, align 8
  %283 = load i64*, i64** %12, align 8
  %284 = load i64, i64* %283, align 8
  %285 = load i32**, i32*** %13, align 8
  %286 = load i32*, i32** %285, align 8
  %287 = load i32, i32* @MKD_TABLE_HEADER, align 4
  %288 = call i32 @parse_table_row(%struct.buf* %279, %struct.sd_markdown* %280, i8* %281, i64 %282, i64 %284, i32* %286, i32 %287)
  %289 = load i64, i64* %18, align 8
  %290 = add i64 %289, 1
  store i64 %290, i64* %7, align 8
  br label %291

291:                                              ; preds = %278, %277, %52
  %292 = load i64, i64* %7, align 8
  ret i64 %292
}

declare dso_local i64 @_isspace(i8 signext) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @parse_table_row(%struct.buf*, %struct.sd_markdown*, i8*, i64, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
