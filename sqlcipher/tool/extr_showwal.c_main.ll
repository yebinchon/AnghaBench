; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showwal.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Usage: %s FILENAME ?PAGE? ...\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@fd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@pagesize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Pagesize: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"file too small to be a WAL\0A\00", align 1
@mxFrame = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Available pages: 1..%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: unknown option: [%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"..end\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Page argument should be LOWER?..UPPER?.  Range 1 to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load i32, i32* @stderr, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = call i32 @exit(i32 1) #3
  unreachable

28:                                               ; preds = %2
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = call i64 @open(i8* %31, i32 %32)
  store i64 %33, i64* @fd, align 8
  %34 = load i64, i64* @fd, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load i32, i32* @stderr, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %43)
  %45 = call i32 @exit(i32 1) #3
  unreachable

46:                                               ; preds = %28
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %47, align 1
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %48, align 1
  %49 = load i64, i64* @fd, align 8
  %50 = load i32, i32* @SEEK_SET, align 4
  %51 = call i32 @lseek(i64 %49, i32 8, i32 %50)
  %52 = load i64, i64* @fd, align 8
  %53 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %54 = call i32 @read(i64 %52, i8* %53, i32 4)
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = mul nsw i32 %57, 65536
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 2
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = mul nsw i32 %61, 256
  %63 = add nsw i32 %58, %62
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 3
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* @pagesize, align 4
  %68 = load i32, i32* @pagesize, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %46
  store i32 1024, i32* @pagesize, align 4
  br label %71

71:                                               ; preds = %70, %46
  %72 = load i32, i32* @pagesize, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i64, i64* @fd, align 8
  %75 = call i32 @fstat(i64 %74, %struct.stat* %6)
  %76 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 32
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %274

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 32
  %85 = load i32, i32* @pagesize, align 4
  %86 = add nsw i32 %85, 24
  %87 = sdiv i32 %84, %86
  store i32 %87, i32* @mxFrame, align 4
  %88 = load i32, i32* @mxFrame, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %4, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %105

92:                                               ; preds = %81
  %93 = call i32 @print_wal_header(i32* %9)
  store i32 1, i32* %8, align 4
  br label %94

94:                                               ; preds = %101, %92
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @mxFrame, align 4
  %97 = icmp sle i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @print_oneline_frame(i32 %99, i32* %9)
  br label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %94

104:                                              ; preds = %94
  br label %271

105:                                              ; preds = %81
  store i32 2, i32* %10, align 4
  br label %106

106:                                              ; preds = %267, %105
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %270

110:                                              ; preds = %106
  %111 = load i8**, i8*** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i64 @strcmp(i8* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = call i32 @print_wal_header(i32* null)
  br label %267

120:                                              ; preds = %110
  %121 = load i8**, i8*** %5, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = call i32 @ISDIGIT(i8 signext %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %120
  %131 = load i32, i32* @stderr, align 4
  %132 = load i8**, i8*** %5, align 8
  %133 = getelementptr inbounds i8*, i8** %132, i64 0
  %134 = load i8*, i8** %133, align 8
  %135 = load i8**, i8*** %5, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %135, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %134, i8* %139)
  br label %267

141:                                              ; preds = %120
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @strtol(i8* %146, i8** %13, i32 0)
  store i32 %147, i32* %11, align 4
  %148 = load i8*, i8** %13, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %141
  %151 = load i8*, i8** %13, align 8
  %152 = call i64 @strcmp(i8* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* @mxFrame, align 4
  store i32 %155, i32* %12, align 4
  br label %240

156:                                              ; preds = %150, %141
  %157 = load i8*, i8** %13, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %175

159:                                              ; preds = %156
  %160 = load i8*, i8** %13, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 46
  br i1 %164, label %165, label %175

165:                                              ; preds = %159
  %166 = load i8*, i8** %13, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 46
  br i1 %170, label %171, label %175

171:                                              ; preds = %165
  %172 = load i8*, i8** %13, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 2
  %174 = call i32 @strtol(i8* %173, i8** null, i32 0)
  store i32 %174, i32* %12, align 4
  br label %239

175:                                              ; preds = %165, %159, %156
  %176 = load i8*, i8** %13, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %217

178:                                              ; preds = %175
  %179 = load i8*, i8** %13, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 98
  br i1 %183, label %184, label %217

184:                                              ; preds = %178
  %185 = load i32, i32* %11, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  store i32 100, i32* %16, align 4
  store i32 100, i32* %16, align 4
  store i32 100, i32* %14, align 4
  %188 = load i32, i32* @pagesize, align 4
  %189 = sub nsw i32 %188, 100
  store i32 %189, i32* %15, align 4
  br label %196

190:                                              ; preds = %184
  store i32 0, i32* %16, align 4
  %191 = load i32, i32* %11, align 4
  %192 = sub nsw i32 %191, 1
  %193 = load i32, i32* @pagesize, align 4
  %194 = mul nsw i32 %192, %193
  store i32 %194, i32* %14, align 4
  %195 = load i32, i32* @pagesize, align 4
  store i32 %195, i32* %15, align 4
  br label %196

196:                                              ; preds = %190, %187
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 32, %197
  %199 = load i32, i32* %11, align 4
  %200 = sub nsw i32 %199, 1
  %201 = load i32, i32* @pagesize, align 4
  %202 = add nsw i32 %201, 24
  %203 = mul nsw i32 %200, %202
  %204 = add nsw i32 %198, %203
  %205 = add nsw i32 %204, 24
  store i32 %205, i32* %14, align 4
  %206 = load i32, i32* %14, align 4
  %207 = load i32, i32* %15, align 4
  %208 = call i8* @getContent(i32 %206, i32 %207)
  store i8* %208, i8** %17, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %16, align 4
  %212 = load i8*, i8** %13, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 1
  %214 = call i32 @decode_btree_page(i8* %209, i32 %210, i32 %211, i8* %213)
  %215 = load i8*, i8** %17, align 8
  %216 = call i32 @free(i8* %215)
  br label %267

217:                                              ; preds = %178, %175
  %218 = load i8*, i8** %13, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %235

220:                                              ; preds = %217
  %221 = load i8*, i8** %13, align 8
  %222 = call i64 @strcmp(i8* %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %235

224:                                              ; preds = %220
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* @pagesize, align 4
  %227 = add nsw i32 %226, 24
  %228 = mul nsw i32 %225, %227
  %229 = add nsw i32 32, %228
  store i32 %229, i32* %18, align 4
  %230 = load i8**, i8*** %5, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 1
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* %18, align 4
  %234 = call i32 @truncate(i8* %232, i32 %233)
  br label %267

235:                                              ; preds = %220, %217
  %236 = load i32, i32* %11, align 4
  store i32 %236, i32* %12, align 4
  br label %237

237:                                              ; preds = %235
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238, %171
  br label %240

240:                                              ; preds = %239, %154
  %241 = load i32, i32* %11, align 4
  %242 = icmp slt i32 %241, 1
  br i1 %242, label %251, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %12, align 4
  %245 = load i32, i32* %11, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* @mxFrame, align 4
  %250 = icmp sgt i32 %248, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %247, %243, %240
  %252 = load i32, i32* @stderr, align 4
  %253 = load i32, i32* @mxFrame, align 4
  %254 = call i32 (i32, i8*, ...) @fprintf(i32 %252, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i32 %253)
  %255 = call i32 @exit(i32 1) #3
  unreachable

256:                                              ; preds = %247
  br label %257

257:                                              ; preds = %261, %256
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* %12, align 4
  %260 = icmp sle i32 %258, %259
  br i1 %260, label %261, label %266

261:                                              ; preds = %257
  %262 = load i32, i32* %11, align 4
  %263 = call i32 @print_frame(i32 %262)
  %264 = load i32, i32* %11, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %11, align 4
  br label %257

266:                                              ; preds = %257
  br label %267

267:                                              ; preds = %266, %224, %196, %130, %118
  %268 = load i32, i32* %10, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %10, align 4
  br label %106

270:                                              ; preds = %106
  br label %271

271:                                              ; preds = %270, %104
  %272 = load i64, i64* @fd, align 8
  %273 = call i32 @close(i64 %272)
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %271, %79
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i32 @lseek(i64, i32, i32) #1

declare dso_local i32 @read(i64, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fstat(i64, %struct.stat*) #1

declare dso_local i32 @print_wal_header(i32*) #1

declare dso_local i32 @print_oneline_frame(i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i8* @getContent(i32, i32) #1

declare dso_local i32 @decode_btree_page(i8*, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @truncate(i8*, i32) #1

declare dso_local i32 @print_frame(i32) #1

declare dso_local i32 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
