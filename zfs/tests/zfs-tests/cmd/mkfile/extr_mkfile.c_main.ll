; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mkfile/extr_mkfile.c_main.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/mkfile/extr_mkfile.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i64 }

@KILOBYTE = common dso_local global i64 0, align 8
@BLOCKSIZE = common dso_local global i64 0, align 8
@MEGABYTE = common dso_local global i64 0, align 8
@GIGABYTE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unknown size %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s %lld bytes\0A\00", align 1
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@FILE_MODE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Could not open %s: %s\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Could not seek to offset %ld in %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Could not set length of %s: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Could not seek to beginning of %s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Could not fstat64 %s: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Could not allocate buffer of size %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"%s: initialized %lu of %lu bytes: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Error encountered when closing %s: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"warning: couldn't set mode to %#o\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.stat64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 1, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (...) @usage()
  br label %26

26:                                               ; preds = %24, %2
  br label %27

27:                                               ; preds = %65, %26
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %27
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br label %40

40:                                               ; preds = %32, %27
  %41 = phi i1 [ false, %27 ], [ %39, %32 ]
  br i1 %41, label %42, label %70

42:                                               ; preds = %40
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %64, %42
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  switch i32 %55, label %62 [
    i32 118, label %56
    i32 110, label %59
  ]

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %64

59:                                               ; preds = %52
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %64

62:                                               ; preds = %52
  %63 = call i32 (...) @usage()
  br label %64

64:                                               ; preds = %62, %59, %56
  br label %47

65:                                               ; preds = %47
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %4, align 4
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %5, align 8
  br label %27

70:                                               ; preds = %40
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (...) @usage()
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @strlen(i8* %78)
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %153

82:                                               ; preds = %75
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = sub i64 %86, 1
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @isalpha(i8 signext %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %153

92:                                               ; preds = %82
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 1
  %95 = load i8*, i8** %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = sub i64 %96, 1
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  switch i32 %100, label %109 [
    i32 107, label %101
    i32 75, label %101
    i32 98, label %103
    i32 66, label %103
    i32 109, label %105
    i32 77, label %105
    i32 103, label %107
    i32 71, label %107
  ]

101:                                              ; preds = %92, %92
  %102 = load i64, i64* @KILOBYTE, align 8
  store i64 %102, i64* %9, align 8
  br label %117

103:                                              ; preds = %92, %92
  %104 = load i64, i64* @BLOCKSIZE, align 8
  store i64 %104, i64* %9, align 8
  br label %117

105:                                              ; preds = %92, %92
  %106 = load i64, i64* @MEGABYTE, align 8
  store i64 %106, i64* %9, align 8
  br label %117

107:                                              ; preds = %92, %92
  %108 = load i64, i64* @GIGABYTE, align 8
  store i64 %108, i64* %9, align 8
  br label %117

109:                                              ; preds = %92
  %110 = load i32, i32* @stderr, align 4
  %111 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %112 = load i8**, i8*** %5, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %110, i8* %111, i8* %114)
  %116 = call i32 (...) @usage()
  br label %117

117:                                              ; preds = %109, %107, %105, %103, %101
  store i32 0, i32* %13, align 4
  br label %118

118:                                              ; preds = %143, %117
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %8, align 8
  %122 = sub i64 %121, 2
  %123 = icmp ule i64 %120, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %118
  %125 = load i8**, i8*** %5, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 1
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = call i32 @isdigit(i8 signext %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %124
  %135 = load i32, i32* @stderr, align 4
  %136 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %135, i8* %136, i8* %139)
  %141 = call i32 (...) @usage()
  br label %142

142:                                              ; preds = %134, %124
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %118

146:                                              ; preds = %118
  %147 = load i8**, i8*** %5, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = sub i64 %150, 1
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  store i8 0, i8* %152, align 1
  br label %153

153:                                              ; preds = %146, %82, %75
  %154 = load i8**, i8*** %5, align 8
  %155 = getelementptr inbounds i8*, i8** %154, i64 1
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @atoll(i8* %156)
  %158 = load i64, i64* %9, align 8
  %159 = mul i64 %157, %158
  store i64 %159, i64* %7, align 8
  %160 = load i8**, i8*** %5, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i32 1
  store i8** %161, i8*** %5, align 8
  %162 = load i32, i32* %4, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %426, %398, %386, %324, %288, %266, %239, %215, %192, %153
  %165 = load i32, i32* %4, align 4
  %166 = icmp sgt i32 %165, 1
  br i1 %166, label %167, label %431

167:                                              ; preds = %164
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i32, i32* @stdout, align 4
  %172 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %173 = load i8**, i8*** %5, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 1
  %175 = load i8*, i8** %174, align 8
  %176 = load i64, i64* %7, align 8
  %177 = trunc i64 %176 to i32
  %178 = call i32 (i32, i8*, ...) @fprintf(i32 %171, i8* %172, i8* %175, i32 %177)
  br label %179

179:                                              ; preds = %170, %167
  %180 = load i8**, i8*** %5, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 1
  %182 = load i8*, i8** %181, align 8
  %183 = load i32, i32* @O_CREAT, align 4
  %184 = load i32, i32* @O_TRUNC, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @O_RDWR, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @FILE_MODE, align 4
  %189 = call i32 @open(i8* %182, i32 %187, i32 %188)
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %17, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %179
  %193 = load i32, i32* @errno, align 4
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* @stderr, align 4
  %195 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i8**, i8*** %5, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 1
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* %16, align 4
  %200 = call i8* @strerror(i32 %199)
  %201 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* %195, i8* %198, i8* %200)
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %12, align 4
  %204 = load i8**, i8*** %5, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i32 1
  store i8** %205, i8*** %5, align 8
  %206 = load i32, i32* %4, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %4, align 4
  br label %164

208:                                              ; preds = %179
  %209 = load i32, i32* %17, align 4
  %210 = load i64, i64* %7, align 8
  %211 = sub i64 %210, 1
  %212 = load i32, i32* @SEEK_SET, align 4
  %213 = call i64 @lseek(i32 %209, i64 %211, i32 %212)
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %235

215:                                              ; preds = %208
  %216 = load i32, i32* @errno, align 4
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* @stderr, align 4
  %218 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %219 = load i64, i64* %7, align 8
  %220 = sub i64 %219, 1
  %221 = load i8**, i8*** %5, align 8
  %222 = getelementptr inbounds i8*, i8** %221, i64 1
  %223 = load i8*, i8** %222, align 8
  %224 = load i32, i32* %16, align 4
  %225 = call i8* @strerror(i32 %224)
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %217, i8* %218, i64 %220, i8* %223, i8* %225)
  %227 = load i32, i32* %17, align 4
  %228 = call i64 @close(i32 %227)
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  %231 = load i8**, i8*** %5, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i32 1
  store i8** %232, i8*** %5, align 8
  %233 = load i32, i32* %4, align 4
  %234 = add nsw i32 %233, -1
  store i32 %234, i32* %4, align 4
  br label %164

235:                                              ; preds = %208
  %236 = load i32, i32* %17, align 4
  %237 = call i32 @write(i32 %236, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i64 1)
  %238 = icmp ne i32 %237, 1
  br i1 %238, label %239, label %257

239:                                              ; preds = %235
  %240 = load i32, i32* @errno, align 4
  store i32 %240, i32* %16, align 4
  %241 = load i32, i32* @stderr, align 4
  %242 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %243 = load i8**, i8*** %5, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 1
  %245 = load i8*, i8** %244, align 8
  %246 = load i32, i32* %16, align 4
  %247 = call i8* @strerror(i32 %246)
  %248 = call i32 (i32, i8*, ...) @fprintf(i32 %241, i8* %242, i8* %245, i8* %247)
  %249 = load i32, i32* %17, align 4
  %250 = call i64 @close(i32 %249)
  %251 = load i32, i32* %12, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %12, align 4
  %253 = load i8**, i8*** %5, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i32 1
  store i8** %254, i8*** %5, align 8
  %255 = load i32, i32* %4, align 4
  %256 = add nsw i32 %255, -1
  store i32 %256, i32* %4, align 4
  br label %164

257:                                              ; preds = %235
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %15, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %394, label %261

261:                                              ; preds = %258
  store i64 0, i64* %18, align 8
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* @SEEK_SET, align 4
  %264 = call i64 @lseek(i32 %262, i64 0, i32 %263)
  %265 = icmp slt i64 %264, 0
  br i1 %265, label %266, label %284

266:                                              ; preds = %261
  %267 = load i32, i32* @errno, align 4
  store i32 %267, i32* %16, align 4
  %268 = load i32, i32* @stderr, align 4
  %269 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %270 = load i8**, i8*** %5, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 1
  %272 = load i8*, i8** %271, align 8
  %273 = load i32, i32* %16, align 4
  %274 = call i8* @strerror(i32 %273)
  %275 = call i32 (i32, i8*, ...) @fprintf(i32 %268, i8* %269, i8* %272, i8* %274)
  %276 = load i32, i32* %17, align 4
  %277 = call i64 @close(i32 %276)
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %12, align 4
  %280 = load i8**, i8*** %5, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i32 1
  store i8** %281, i8*** %5, align 8
  %282 = load i32, i32* %4, align 4
  %283 = add nsw i32 %282, -1
  store i32 %283, i32* %4, align 4
  br label %164

284:                                              ; preds = %261
  %285 = load i32, i32* %17, align 4
  %286 = call i64 @fstat64(i32 %285, %struct.stat64* %19)
  %287 = icmp slt i64 %286, 0
  br i1 %287, label %288, label %306

288:                                              ; preds = %284
  %289 = load i32, i32* @errno, align 4
  store i32 %289, i32* %16, align 4
  %290 = load i32, i32* @stderr, align 4
  %291 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %292 = load i8**, i8*** %5, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 1
  %294 = load i8*, i8** %293, align 8
  %295 = load i32, i32* %16, align 4
  %296 = call i8* @strerror(i32 %295)
  %297 = call i32 (i32, i8*, ...) @fprintf(i32 %290, i8* %291, i8* %294, i8* %296)
  %298 = load i32, i32* %17, align 4
  %299 = call i64 @close(i32 %298)
  %300 = load i32, i32* %12, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %12, align 4
  %302 = load i8**, i8*** %5, align 8
  %303 = getelementptr inbounds i8*, i8** %302, i32 1
  store i8** %303, i8*** %5, align 8
  %304 = load i32, i32* %4, align 4
  %305 = add nsw i32 %304, -1
  store i32 %305, i32* %4, align 4
  br label %164

306:                                              ; preds = %284
  %307 = load i64, i64* %11, align 8
  %308 = getelementptr inbounds %struct.stat64, %struct.stat64* %19, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %307, %309
  br i1 %310, label %311, label %339

311:                                              ; preds = %306
  %312 = load i8*, i8** %10, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %317

314:                                              ; preds = %311
  %315 = load i8*, i8** %10, align 8
  %316 = call i32 @free(i8* %315)
  br label %317

317:                                              ; preds = %314, %311
  %318 = getelementptr inbounds %struct.stat64, %struct.stat64* %19, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %11, align 8
  %320 = load i64, i64* %11, align 8
  %321 = call i8* @calloc(i32 1, i64 %320)
  store i8* %321, i8** %10, align 8
  %322 = load i8*, i8** %10, align 8
  %323 = icmp eq i8* %322, null
  br i1 %323, label %324, label %338

324:                                              ; preds = %317
  %325 = load i32, i32* @stderr, align 4
  %326 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %327 = load i64, i64* %11, align 8
  %328 = trunc i64 %327 to i32
  %329 = call i32 (i32, i8*, ...) @fprintf(i32 %325, i8* %326, i32 %328)
  %330 = load i32, i32* %17, align 4
  %331 = call i64 @close(i32 %330)
  store i64 0, i64* %11, align 8
  %332 = load i32, i32* %12, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %12, align 4
  %334 = load i8**, i8*** %5, align 8
  %335 = getelementptr inbounds i8*, i8** %334, i32 1
  store i8** %335, i8*** %5, align 8
  %336 = load i32, i32* %4, align 4
  %337 = add nsw i32 %336, -1
  store i32 %337, i32* %4, align 4
  br label %164

338:                                              ; preds = %317
  br label %339

339:                                              ; preds = %338, %306
  br label %340

340:                                              ; preds = %378, %339
  %341 = load i64, i64* %18, align 8
  %342 = load i64, i64* %7, align 8
  %343 = icmp ult i64 %341, %342
  br i1 %343, label %344, label %382

344:                                              ; preds = %340
  %345 = load i64, i64* %11, align 8
  %346 = load i64, i64* %7, align 8
  %347 = load i64, i64* %18, align 8
  %348 = sub i64 %346, %347
  %349 = call i64 @MIN(i64 %345, i64 %348)
  store i64 %349, i64* %21, align 8
  %350 = load i32, i32* %17, align 4
  %351 = load i8*, i8** %10, align 8
  %352 = load i64, i64* %21, align 8
  %353 = call i32 @write(i32 %350, i8* %351, i64 %352)
  %354 = sext i32 %353 to i64
  store i64 %354, i64* %20, align 8
  %355 = load i64, i64* %21, align 8
  %356 = icmp ne i64 %354, %355
  br i1 %356, label %357, label %378

357:                                              ; preds = %344
  %358 = load i32, i32* @errno, align 4
  store i32 %358, i32* %16, align 4
  %359 = load i64, i64* %20, align 8
  %360 = icmp slt i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %357
  store i64 0, i64* %20, align 8
  br label %362

362:                                              ; preds = %361, %357
  %363 = load i64, i64* %20, align 8
  %364 = load i64, i64* %18, align 8
  %365 = add i64 %364, %363
  store i64 %365, i64* %18, align 8
  %366 = load i32, i32* @stderr, align 4
  %367 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %368 = load i8**, i8*** %5, align 8
  %369 = getelementptr inbounds i8*, i8** %368, i64 1
  %370 = load i8*, i8** %369, align 8
  %371 = load i64, i64* %18, align 8
  %372 = load i64, i64* %7, align 8
  %373 = load i32, i32* %16, align 4
  %374 = call i8* @strerror(i32 %373)
  %375 = call i32 (i32, i8*, ...) @fprintf(i32 %366, i8* %367, i8* %370, i64 %371, i64 %372, i8* %374)
  %376 = load i32, i32* %12, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %12, align 4
  br label %382

378:                                              ; preds = %344
  %379 = load i64, i64* %21, align 8
  %380 = load i64, i64* %18, align 8
  %381 = add i64 %380, %379
  store i64 %381, i64* %18, align 8
  br label %340

382:                                              ; preds = %362, %340
  %383 = load i64, i64* %18, align 8
  %384 = load i64, i64* %7, align 8
  %385 = icmp ult i64 %383, %384
  br i1 %385, label %386, label %393

386:                                              ; preds = %382
  %387 = load i32, i32* %17, align 4
  %388 = call i64 @close(i32 %387)
  %389 = load i8**, i8*** %5, align 8
  %390 = getelementptr inbounds i8*, i8** %389, i32 1
  store i8** %390, i8*** %5, align 8
  %391 = load i32, i32* %4, align 4
  %392 = add nsw i32 %391, -1
  store i32 %392, i32* %4, align 4
  br label %164

393:                                              ; preds = %382
  br label %394

394:                                              ; preds = %393, %258
  %395 = load i32, i32* %17, align 4
  %396 = call i64 @close(i32 %395)
  %397 = icmp slt i64 %396, 0
  br i1 %397, label %398, label %414

398:                                              ; preds = %394
  %399 = load i32, i32* @errno, align 4
  store i32 %399, i32* %16, align 4
  %400 = load i32, i32* @stderr, align 4
  %401 = call i8* @gettext(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %402 = load i8**, i8*** %5, align 8
  %403 = getelementptr inbounds i8*, i8** %402, i64 1
  %404 = load i8*, i8** %403, align 8
  %405 = load i32, i32* %16, align 4
  %406 = call i8* @strerror(i32 %405)
  %407 = call i32 (i32, i8*, ...) @fprintf(i32 %400, i8* %401, i8* %404, i8* %406)
  %408 = load i32, i32* %12, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %12, align 4
  %410 = load i8**, i8*** %5, align 8
  %411 = getelementptr inbounds i8*, i8** %410, i32 1
  store i8** %411, i8*** %5, align 8
  %412 = load i32, i32* %4, align 4
  %413 = add nsw i32 %412, -1
  store i32 %413, i32* %4, align 4
  br label %164

414:                                              ; preds = %394
  %415 = load i8**, i8*** %5, align 8
  %416 = getelementptr inbounds i8*, i8** %415, i64 1
  %417 = load i8*, i8** %416, align 8
  %418 = load i32, i32* @FILE_MODE, align 4
  %419 = call i64 @chmod(i8* %417, i32 %418)
  %420 = icmp slt i64 %419, 0
  br i1 %420, label %421, label %426

421:                                              ; preds = %414
  %422 = load i32, i32* @stderr, align 4
  %423 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %424 = load i32, i32* @FILE_MODE, align 4
  %425 = call i32 (i32, i8*, ...) @fprintf(i32 %422, i8* %423, i32 %424)
  br label %426

426:                                              ; preds = %421, %414
  %427 = load i8**, i8*** %5, align 8
  %428 = getelementptr inbounds i8*, i8** %427, i32 1
  store i8** %428, i8*** %5, align 8
  %429 = load i32, i32* %4, align 4
  %430 = add nsw i32 %429, -1
  store i32 %430, i32* %4, align 4
  br label %164

431:                                              ; preds = %164
  %432 = load i32, i32* %12, align 4
  ret i32 %432
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @atoll(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i64 @fstat64(i32, %struct.stat64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @chmod(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
