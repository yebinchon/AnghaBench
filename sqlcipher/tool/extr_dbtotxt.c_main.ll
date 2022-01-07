; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_dbtotxt.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_dbtotxt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"pagesize\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Page size must be a power of two between 512 and 65536.\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown option: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Already using a different input file: [%s]\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"No input file specified.\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Usage: %s [--pagesize N] FILENAME\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Cannot open input file [%s]\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [44 x i8] c"File too short. Minimum size is 100 bytes.\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Cannot read file header\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Invalid page size in header: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"| size %d pagesize %d filename %s\0A\00", align 1
@main.once = internal global i32 1, align 4
@.str.12 = private unnamed_addr constant [47 x i8] c"Could not read input file starting at byte %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"| page %d offset %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"|  %5d:\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"| end %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  %17 = alloca [100 x i8], align 16
  %18 = alloca [256 x i8], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %23 = call i32 @memset(i8* %22, i8 signext 46, i32 256)
  store i32 32, i32* %9, align 4
  br label %24

24:                                               ; preds = %46, %2
  %25 = load i32, i32* %9, align 4
  %26 = icmp sle i32 %25, 126
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 123
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 125
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 34
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 92
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = trunc i32 %40 to i8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 %43
  store i8 %41, i8* %44, align 1
  br label %45

45:                                               ; preds = %39, %36, %33, %30, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %24

49:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %141, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %144

54:                                               ; preds = %50
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 45
  br i1 %63, label %64, label %120

64:                                               ; preds = %54
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %19, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %19, align 8
  %72 = load i8*, i8** %19, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 45
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load i8*, i8** %19, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %19, align 8
  br label %80

80:                                               ; preds = %77, %64
  %81 = load i8*, i8** %19, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %80
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @atoi(i8* %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 512
  br i1 %94, label %104, label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %6, align 4
  %97 = icmp sgt i32 %96, 65536
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 1
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98, %95, %84
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %105, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %104, %98
  br label %141

110:                                              ; preds = %80
  %111 = load i32, i32* @stderr, align 4
  %112 = load i8**, i8*** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %140

120:                                              ; preds = %54
  %121 = load i8*, i8** %12, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i32, i32* @stderr, align 4
  %125 = load i8**, i8*** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %129)
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %139

133:                                              ; preds = %120
  %134 = load i8**, i8*** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  %138 = load i8*, i8** %137, align 8
  store i8* %138, i8** %12, align 8
  br label %139

139:                                              ; preds = %133, %123
  br label %140

140:                                              ; preds = %139, %110
  br label %141

141:                                              ; preds = %140, %109
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %50

144:                                              ; preds = %50
  %145 = load i8*, i8** %12, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32, i32* @stderr, align 4
  %149 = call i32 (i32, i8*, ...) @fprintf(i32 %148, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %147, %144
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load i32, i32* @stderr, align 4
  %157 = load i8**, i8*** %5, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %159)
  %161 = call i32 @exit(i32 1) #3
  unreachable

162:                                              ; preds = %152
  %163 = load i8*, i8** %12, align 8
  %164 = call i32* @fopen(i8* %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32* %164, i32** %8, align 8
  %165 = load i32*, i32** %8, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load i32, i32* @stderr, align 4
  %169 = load i8*, i8** %12, align 8
  %170 = call i32 (i32, i8*, ...) @fprintf(i32 %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %169)
  %171 = call i32 @exit(i32 1) #3
  unreachable

172:                                              ; preds = %162
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* @SEEK_END, align 4
  %175 = call i32 @fseek(i32* %173, i32 0, i32 %174)
  %176 = load i32*, i32** %8, align 8
  %177 = call i64 @ftell(i32* %176)
  store i64 %177, i64* %7, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = call i32 @rewind(i32* %178)
  %180 = load i64, i64* %7, align 8
  %181 = icmp slt i64 %180, 100
  br i1 %181, label %182, label %186

182:                                              ; preds = %172
  %183 = load i32, i32* @stderr, align 4
  %184 = call i32 (i32, i8*, ...) @fprintf(i32 %183, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %185 = call i32 @exit(i32 1) #3
  unreachable

186:                                              ; preds = %172
  %187 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 0
  %188 = load i32*, i32** %8, align 8
  %189 = call i32 @fread(i8* %187, i32 100, i32 1, i32* %188)
  %190 = icmp ne i32 %189, 1
  br i1 %190, label %191, label %195

191:                                              ; preds = %186
  %192 = load i32, i32* @stderr, align 4
  %193 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %194 = call i32 @exit(i32 1) #3
  unreachable

195:                                              ; preds = %186
  %196 = load i32*, i32** %8, align 8
  %197 = call i32 @rewind(i32* %196)
  %198 = load i32, i32* %6, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %227

200:                                              ; preds = %195
  %201 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 16
  %202 = load i8, i8* %201, align 16
  %203 = zext i8 %202 to i32
  %204 = shl i32 %203, 8
  %205 = getelementptr inbounds [100 x i8], [100 x i8]* %17, i64 0, i64 17
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = or i32 %204, %207
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %212

211:                                              ; preds = %200
  store i32 65536, i32* %6, align 4
  br label %212

212:                                              ; preds = %211, %200
  %213 = load i32, i32* %6, align 4
  %214 = icmp slt i32 %213, 512
  br i1 %214, label %221, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = sub nsw i32 %217, 1
  %219 = and i32 %216, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %215, %212
  %222 = load i32, i32* @stderr, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 (i32, i8*, ...) @fprintf(i32 %222, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %223)
  %225 = call i32 @exit(i32 1) #3
  unreachable

226:                                              ; preds = %215
  br label %227

227:                                              ; preds = %226, %195
  %228 = load i8*, i8** %12, align 8
  store i8* %228, i8** %13, align 8
  store i32 0, i32* %9, align 4
  br label %229

229:                                              ; preds = %260, %227
  %230 = load i8*, i8** %12, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = icmp ne i8 %234, 0
  br i1 %235, label %236, label %263

236:                                              ; preds = %229
  %237 = load i8*, i8** %12, align 8
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp eq i32 %242, 47
  br i1 %243, label %244, label %259

244:                                              ; preds = %236
  %245 = load i8*, i8** %12, align 8
  %246 = load i32, i32* %9, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %244
  %254 = load i8*, i8** %12, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  store i8* %258, i8** %13, align 8
  br label %259

259:                                              ; preds = %253, %244, %236
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %9, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %9, align 4
  br label %229

263:                                              ; preds = %229
  %264 = load i64, i64* %7, align 8
  %265 = trunc i64 %264 to i32
  %266 = load i32, i32* %6, align 4
  %267 = load i8*, i8** %13, align 8
  %268 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %265, i32 %266, i8* %267)
  store i32 0, i32* %9, align 4
  br label %269

269:                                              ; preds = %361, %263
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = load i64, i64* %7, align 8
  %273 = icmp slt i64 %271, %272
  br i1 %273, label %274, label %364

274:                                              ; preds = %269
  %275 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %276 = load i32*, i32** %8, align 8
  %277 = call i32 @fread(i8* %275, i32 1, i32 16, i32* %276)
  store i32 %277, i32* %20, align 4
  %278 = load i32, i32* %20, align 4
  %279 = icmp ne i32 %278, 16
  br i1 %279, label %280, label %297

280:                                              ; preds = %274
  %281 = load i32, i32* @main.once, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %280
  %284 = load i32, i32* @stderr, align 4
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* %20, align 4
  %287 = add nsw i32 %285, %286
  %288 = call i32 (i32, i8*, ...) @fprintf(i32 %284, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %283, %280
  %290 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %291 = load i32, i32* %20, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %290, i64 %292
  %294 = load i32, i32* %20, align 4
  %295 = sub nsw i32 16, %294
  %296 = call i32 @memset(i8* %293, i8 signext 0, i32 %295)
  br label %297

297:                                              ; preds = %289, %274
  %298 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %299 = call i64 @allZero(i8* %298)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  br label %361

302:                                              ; preds = %297
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* %6, align 4
  %305 = sdiv i32 %303, %304
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %15, align 4
  %307 = load i32, i32* %14, align 4
  %308 = load i32, i32* %15, align 4
  %309 = icmp ne i32 %307, %308
  br i1 %309, label %310, label %318

310:                                              ; preds = %302
  %311 = load i32, i32* %15, align 4
  %312 = load i32, i32* %15, align 4
  %313 = sub nsw i32 %312, 1
  %314 = load i32, i32* %6, align 4
  %315 = mul nsw i32 %313, %314
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %311, i32 %315)
  %317 = load i32, i32* %15, align 4
  store i32 %317, i32* %14, align 4
  br label %318

318:                                              ; preds = %310, %302
  %319 = load i32, i32* %9, align 4
  %320 = load i32, i32* %15, align 4
  %321 = sub nsw i32 %320, 1
  %322 = load i32, i32* %6, align 4
  %323 = mul nsw i32 %321, %322
  %324 = sub nsw i32 %319, %323
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %324)
  store i32 0, i32* %10, align 4
  br label %326

326:                                              ; preds = %336, %318
  %327 = load i32, i32* %10, align 4
  %328 = icmp slt i32 %327, 16
  br i1 %328, label %329, label %339

329:                                              ; preds = %326
  %330 = load i32, i32* %10, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 %331
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %334)
  br label %336

336:                                              ; preds = %329
  %337 = load i32, i32* %10, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %10, align 4
  br label %326

339:                                              ; preds = %326
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %341

341:                                              ; preds = %355, %339
  %342 = load i32, i32* %10, align 4
  %343 = icmp slt i32 %342, 16
  br i1 %343, label %344, label %358

344:                                              ; preds = %341
  %345 = load i32, i32* %10, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 %346
  %348 = load i8, i8* %347, align 1
  store i8 %348, i8* %21, align 1
  %349 = load i8, i8* %21, align 1
  %350 = zext i8 %349 to i64
  %351 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 %350
  %352 = load i8, i8* %351, align 1
  %353 = load i32, i32* @stdout, align 4
  %354 = call i32 @fputc(i8 signext %352, i32 %353)
  br label %355

355:                                              ; preds = %344
  %356 = load i32, i32* %10, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %10, align 4
  br label %341

358:                                              ; preds = %341
  %359 = load i32, i32* @stdout, align 4
  %360 = call i32 @fputc(i8 signext 10, i32 %359)
  br label %361

361:                                              ; preds = %358, %301
  %362 = load i32, i32* %9, align 4
  %363 = add nsw i32 %362, 16
  store i32 %363, i32* %9, align 4
  br label %269

364:                                              ; preds = %269
  %365 = load i32*, i32** %8, align 8
  %366 = call i32 @fclose(i32* %365)
  %367 = load i8*, i8** %13, align 8
  %368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8* %367)
  ret i32 0
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @allZero(i8*) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
