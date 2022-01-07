; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/spec2def/extr_spec2def.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/spec2def/extr_spec2def.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"--version=0x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@pszDllName = common dso_local global i8* null, align 8
@guOsVersion = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"--implib\00", align 1
@gbImportLib = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"--ms\00", align 1
@gbMSComp = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"--no-private-warnings\00", align 1
@gbNotPrivateNoWarn = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"--with-tracing\00", align 1
@stderr = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [53 x i8] c"Error: cannot use --with-tracing without -s option.\0A\00", align 1
@gbTracing = common dso_local global i32 0, align 4
@pszArchString = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"Unrecognized option: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@ARCH_X86 = common dso_local global i64 0, align 8
@giArch = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@gpszUnderscore = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"x86_64\00", align 1
@ARCH_AMD64 = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"ia64\00", align 1
@ARCH_IA64 = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@ARCH_ARM = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"ppc\00", align 1
@ARCH_PPC = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c"win64\00", align 1
@pszArchString2 = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"win32\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"name too long: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c".dll\00", align 1
@pszSourceFileName = common dso_local global i8* null, align 8
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"error: could not open file %s\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for export data!\0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.23 = private unnamed_addr constant [38 x i8] c"error: could not open output file %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"\0A    END\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [40 x i8], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = call i32 (...) @usage()
  store i32 -1, i32* %3, align 4
  br label %590

24:                                               ; preds = %2
  store i32 1, i32* %15, align 4
  br label %25

25:                                               ; preds = %276, %24
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %15, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br label %38

38:                                               ; preds = %29, %25
  %39 = phi i1 [ false, %25 ], [ %37, %29 ]
  br i1 %39, label %40, label %279

40:                                               ; preds = %38
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %15, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strcasecmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %40
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %15, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcasecmp(i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48, %40
  %57 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %590

58:                                               ; preds = %48
  %59 = load i8**, i8*** %5, align 8
  %60 = load i32, i32* %15, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 100
  br i1 %67, label %68, label %85

68:                                               ; preds = %58
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %15, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 61
  br i1 %77, label %78, label %85

78:                                               ; preds = %68
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %15, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  store i8* %84, i8** %8, align 8
  br label %274

85:                                               ; preds = %68, %58
  %86 = load i8**, i8*** %5, align 8
  %87 = load i32, i32* %15, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 108
  br i1 %94, label %95, label %112

95:                                               ; preds = %85
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %15, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 2
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 61
  br i1 %104, label %105, label %112

105:                                              ; preds = %95
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %15, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 3
  store i8* %111, i8** %10, align 8
  br label %273

112:                                              ; preds = %95, %85
  %113 = load i8**, i8*** %5, align 8
  %114 = load i32, i32* %15, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 115
  br i1 %121, label %122, label %139

122:                                              ; preds = %112
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* %15, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 2
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 61
  br i1 %131, label %132, label %139

132:                                              ; preds = %122
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %15, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 3
  store i8* %138, i8** %9, align 8
  br label %272

139:                                              ; preds = %122, %112
  %140 = load i8**, i8*** %5, align 8
  %141 = load i32, i32* %15, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 110
  br i1 %148, label %149, label %166

149:                                              ; preds = %139
  %150 = load i8**, i8*** %5, align 8
  %151 = load i32, i32* %15, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 61
  br i1 %158, label %159, label %166

159:                                              ; preds = %149
  %160 = load i8**, i8*** %5, align 8
  %161 = load i32, i32* %15, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 3
  store i8* %165, i8** @pszDllName, align 8
  br label %271

166:                                              ; preds = %149, %139
  %167 = load i8**, i8*** %5, align 8
  %168 = load i32, i32* %15, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %167, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = load i8*, i8** %11, align 8
  %174 = call i32 @strlen(i8* %173)
  %175 = call i64 @strncasecmp(i8* %171, i8* %172, i32 %174)
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %166
  %178 = load i8**, i8*** %5, align 8
  %179 = load i32, i32* %15, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = load i8*, i8** %11, align 8
  %184 = call i32 @strlen(i8* %183)
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = call i32 @strtoul(i8* %186, i32* null, i32 16)
  store i32 %187, i32* @guOsVersion, align 4
  br label %270

188:                                              ; preds = %166
  %189 = load i8**, i8*** %5, align 8
  %190 = load i32, i32* %15, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = call i64 @strcasecmp(i8* %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  store i32 1, i32* @gbImportLib, align 4
  br label %269

197:                                              ; preds = %188
  %198 = load i8**, i8*** %5, align 8
  %199 = load i32, i32* %15, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i8*, i8** %198, i64 %200
  %202 = load i8*, i8** %201, align 8
  %203 = call i64 @strcasecmp(i8* %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  store i32 1, i32* @gbMSComp, align 4
  br label %268

206:                                              ; preds = %197
  %207 = load i8**, i8*** %5, align 8
  %208 = load i32, i32* %15, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = call i64 @strcasecmp(i8* %211, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  store i32 1, i32* @gbNotPrivateNoWarn, align 4
  br label %267

215:                                              ; preds = %206
  %216 = load i8**, i8*** %5, align 8
  %217 = load i32, i32* %15, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = call i64 @strcasecmp(i8* %220, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %215
  %224 = load i8*, i8** %9, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %223
  %227 = load i32*, i32** @stderr, align 8
  %228 = call i32 (i32*, i8*, ...) @fprintf(i32* %227, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %590

229:                                              ; preds = %223
  store i32 1, i32* @gbTracing, align 4
  br label %266

230:                                              ; preds = %215
  %231 = load i8**, i8*** %5, align 8
  %232 = load i32, i32* %15, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i8*, i8** %231, i64 %233
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 1
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp eq i32 %238, 97
  br i1 %239, label %240, label %257

240:                                              ; preds = %230
  %241 = load i8**, i8*** %5, align 8
  %242 = load i32, i32* %15, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 2
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 61
  br i1 %249, label %250, label %257

250:                                              ; preds = %240
  %251 = load i8**, i8*** %5, align 8
  %252 = load i32, i32* %15, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i8*, i8** %251, i64 %253
  %255 = load i8*, i8** %254, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 3
  store i8* %256, i8** @pszArchString, align 8
  br label %265

257:                                              ; preds = %240, %230
  %258 = load i32*, i32** @stderr, align 8
  %259 = load i8**, i8*** %5, align 8
  %260 = load i32, i32* %15, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 (i32*, i8*, ...) @fprintf(i32* %258, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %263)
  store i32 -1, i32* %3, align 4
  br label %590

265:                                              ; preds = %250
  br label %266

266:                                              ; preds = %265, %229
  br label %267

267:                                              ; preds = %266, %214
  br label %268

268:                                              ; preds = %267, %205
  br label %269

269:                                              ; preds = %268, %196
  br label %270

270:                                              ; preds = %269, %177
  br label %271

271:                                              ; preds = %270, %159
  br label %272

272:                                              ; preds = %271, %132
  br label %273

273:                                              ; preds = %272, %105
  br label %274

274:                                              ; preds = %273, %78
  br label %275

275:                                              ; preds = %274
  br label %276

276:                                              ; preds = %275
  %277 = load i32, i32* %15, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %15, align 4
  br label %25

279:                                              ; preds = %38
  %280 = load i8*, i8** @pszArchString, align 8
  %281 = call i64 @strcasecmp(i8* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %279
  %284 = load i64, i64* @ARCH_X86, align 8
  store i64 %284, i64* @giArch, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8** @gpszUnderscore, align 8
  br label %313

285:                                              ; preds = %279
  %286 = load i8*, i8** @pszArchString, align 8
  %287 = call i64 @strcasecmp(i8* %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = load i64, i64* @ARCH_AMD64, align 8
  store i64 %290, i64* @giArch, align 8
  br label %312

291:                                              ; preds = %285
  %292 = load i8*, i8** @pszArchString, align 8
  %293 = call i64 @strcasecmp(i8* %292, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = load i64, i64* @ARCH_IA64, align 8
  store i64 %296, i64* @giArch, align 8
  br label %311

297:                                              ; preds = %291
  %298 = load i8*, i8** @pszArchString, align 8
  %299 = call i64 @strcasecmp(i8* %298, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = load i64, i64* @ARCH_ARM, align 8
  store i64 %302, i64* @giArch, align 8
  br label %310

303:                                              ; preds = %297
  %304 = load i8*, i8** @pszArchString, align 8
  %305 = call i64 @strcasecmp(i8* %304, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %303
  %308 = load i64, i64* @ARCH_PPC, align 8
  store i64 %308, i64* @giArch, align 8
  br label %309

309:                                              ; preds = %307, %303
  br label %310

310:                                              ; preds = %309, %301
  br label %311

311:                                              ; preds = %310, %295
  br label %312

312:                                              ; preds = %311, %289
  br label %313

313:                                              ; preds = %312, %283
  %314 = load i64, i64* @giArch, align 8
  %315 = load i64, i64* @ARCH_AMD64, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %321, label %317

317:                                              ; preds = %313
  %318 = load i64, i64* @giArch, align 8
  %319 = load i64, i64* @ARCH_IA64, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %322

321:                                              ; preds = %317, %313
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** @pszArchString2, align 8
  br label %323

322:                                              ; preds = %317
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** @pszArchString2, align 8
  br label %323

323:                                              ; preds = %322, %321
  %324 = load i8*, i8** @pszDllName, align 8
  %325 = icmp ne i8* %324, null
  br i1 %325, label %397, label %326

326:                                              ; preds = %323
  %327 = load i8**, i8*** %5, align 8
  %328 = load i32, i32* %15, align 4
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds i8*, i8** %327, i64 %329
  %331 = load i8*, i8** %330, align 8
  %332 = call i8* @strrchr(i8* %331, i8 signext 92)
  store i8* %332, i8** %17, align 8
  %333 = load i8*, i8** %17, align 8
  %334 = icmp ne i8* %333, null
  br i1 %334, label %342, label %335

335:                                              ; preds = %326
  %336 = load i8**, i8*** %5, align 8
  %337 = load i32, i32* %15, align 4
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds i8*, i8** %336, i64 %338
  %340 = load i8*, i8** %339, align 8
  %341 = call i8* @strrchr(i8* %340, i8 signext 47)
  store i8* %341, i8** %17, align 8
  br label %342

342:                                              ; preds = %335, %326
  %343 = load i8*, i8** %17, align 8
  %344 = icmp ne i8* %343, null
  br i1 %344, label %345, label %348

345:                                              ; preds = %342
  %346 = load i8*, i8** %17, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 1
  br label %354

348:                                              ; preds = %342
  %349 = load i8**, i8*** %5, align 8
  %350 = load i32, i32* %15, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds i8*, i8** %349, i64 %351
  %353 = load i8*, i8** %352, align 8
  br label %354

354:                                              ; preds = %348, %345
  %355 = phi i8* [ %347, %345 ], [ %353, %348 ]
  store i8* %355, i8** %17, align 8
  store i8* %355, i8** %18, align 8
  br label %356

356:                                              ; preds = %368, %354
  %357 = load i8*, i8** %18, align 8
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp ne i32 %359, 46
  br i1 %360, label %361, label %366

361:                                              ; preds = %356
  %362 = load i8*, i8** %18, align 8
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp ne i32 %364, 0
  br label %366

366:                                              ; preds = %361, %356
  %367 = phi i1 [ false, %356 ], [ %365, %361 ]
  br i1 %367, label %368, label %371

368:                                              ; preds = %366
  %369 = load i8*, i8** %18, align 8
  %370 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %370, i8** %18, align 8
  br label %356

371:                                              ; preds = %366
  %372 = load i8*, i8** %18, align 8
  %373 = load i8*, i8** %17, align 8
  %374 = ptrtoint i8* %372 to i64
  %375 = ptrtoint i8* %373 to i64
  %376 = sub i64 %374, %375
  store i64 %376, i64* %19, align 8
  %377 = load i64, i64* %19, align 8
  %378 = icmp uge i64 %377, 35
  br i1 %378, label %379, label %383

379:                                              ; preds = %371
  %380 = load i32*, i32** @stderr, align 8
  %381 = load i8*, i8** %17, align 8
  %382 = call i32 (i32*, i8*, ...) @fprintf(i32* %380, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* %381)
  store i32 -2, i32* %3, align 4
  br label %590

383:                                              ; preds = %371
  %384 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %385 = load i8*, i8** %17, align 8
  %386 = load i64, i64* %19, align 8
  %387 = trunc i64 %386 to i32
  %388 = call i32 @strncpy(i8* %384, i8* %385, i32 %387)
  %389 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  %390 = load i64, i64* %19, align 8
  %391 = getelementptr inbounds i8, i8* %389, i64 %390
  %392 = load i64, i64* %19, align 8
  %393 = sub i64 40, %392
  %394 = trunc i64 %393 to i32
  %395 = call i32 @strncpy(i8* %391, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i32 %394)
  %396 = getelementptr inbounds [40 x i8], [40 x i8]* %12, i64 0, i64 0
  store i8* %396, i8** @pszDllName, align 8
  br label %397

397:                                              ; preds = %383, %323
  %398 = load i8**, i8*** %5, align 8
  %399 = load i32, i32* %15, align 4
  %400 = zext i32 %399 to i64
  %401 = getelementptr inbounds i8*, i8** %398, i64 %400
  %402 = load i8*, i8** %401, align 8
  store i8* %402, i8** @pszSourceFileName, align 8
  %403 = load i8*, i8** @pszSourceFileName, align 8
  %404 = call i32* @fopen(i8* %403, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  store i32* %404, i32** %13, align 8
  %405 = load i32*, i32** %13, align 8
  %406 = icmp ne i32* %405, null
  br i1 %406, label %411, label %407

407:                                              ; preds = %397
  %408 = load i32*, i32** @stderr, align 8
  %409 = load i8*, i8** @pszSourceFileName, align 8
  %410 = call i32 (i32*, i8*, ...) @fprintf(i32* %408, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %409)
  store i32 -3, i32* %3, align 4
  br label %590

411:                                              ; preds = %397
  %412 = load i32*, i32** %13, align 8
  %413 = load i32, i32* @SEEK_END, align 4
  %414 = call i32 @fseek(i32* %412, i32 0, i32 %413)
  %415 = load i32*, i32** %13, align 8
  %416 = call i64 @ftell(i32* %415)
  store i64 %416, i64* %6, align 8
  %417 = load i32*, i32** %13, align 8
  %418 = call i32 @rewind(i32* %417)
  %419 = load i64, i64* %6, align 8
  %420 = add i64 %419, 1
  %421 = call i8* @malloc(i64 %420)
  store i8* %421, i8** %7, align 8
  %422 = load i8*, i8** %7, align 8
  %423 = icmp ne i8* %422, null
  br i1 %423, label %427, label %424

424:                                              ; preds = %411
  %425 = load i32*, i32** %13, align 8
  %426 = call i32 @fclose(i32* %425)
  store i32 -4, i32* %3, align 4
  br label %590

427:                                              ; preds = %411
  %428 = load i8*, i8** %7, align 8
  %429 = load i64, i64* %6, align 8
  %430 = load i32*, i32** %13, align 8
  %431 = call i64 @fread(i8* %428, i32 1, i64 %429, i32* %430)
  store i64 %431, i64* %6, align 8
  %432 = load i32*, i32** %13, align 8
  %433 = call i32 @fclose(i32* %432)
  %434 = load i8*, i8** %7, align 8
  %435 = load i64, i64* %6, align 8
  %436 = getelementptr inbounds i8, i8* %434, i64 %435
  store i8 0, i8* %436, align 1
  %437 = load i8*, i8** %7, align 8
  %438 = load i32*, i32** %13, align 8
  %439 = call %struct.TYPE_7__* @ParseFile(i8* %437, i32* %438, i32* %14)
  store %struct.TYPE_7__* %439, %struct.TYPE_7__** %16, align 8
  %440 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %441 = icmp eq %struct.TYPE_7__* %440, null
  br i1 %441, label %442, label %445

442:                                              ; preds = %427
  %443 = load i32*, i32** @stderr, align 8
  %444 = call i32 (i32*, i8*, ...) @fprintf(i32* %443, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %590

445:                                              ; preds = %427
  %446 = load i8*, i8** %8, align 8
  %447 = icmp ne i8* %446, null
  br i1 %447, label %448, label %492

448:                                              ; preds = %445
  %449 = load i8*, i8** %8, align 8
  %450 = call i32* @fopen(i8* %449, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  store i32* %450, i32** %13, align 8
  %451 = load i32*, i32** %13, align 8
  %452 = icmp ne i32* %451, null
  br i1 %452, label %462, label %453

453:                                              ; preds = %448
  %454 = load i32*, i32** @stderr, align 8
  %455 = load i8**, i8*** %5, align 8
  %456 = load i32, i32* %15, align 4
  %457 = add i32 %456, 1
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds i8*, i8** %455, i64 %458
  %460 = load i8*, i8** %459, align 8
  %461 = call i32 (i32*, i8*, ...) @fprintf(i32* %454, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0), i8* %460)
  store i32 -5, i32* %3, align 4
  br label %590

462:                                              ; preds = %448
  %463 = load i32*, i32** %13, align 8
  %464 = load i8*, i8** @pszDllName, align 8
  %465 = call i32 @OutputHeader_def(i32* %463, i8* %464)
  store i32 0, i32* %15, align 4
  br label %466

466:                                              ; preds = %486, %462
  %467 = load i32, i32* %15, align 4
  %468 = load i32, i32* %14, align 4
  %469 = icmp ult i32 %467, %468
  br i1 %469, label %470, label %489

470:                                              ; preds = %466
  %471 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %472 = load i32, i32* %15, align 4
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %478, label %485

478:                                              ; preds = %470
  %479 = load i32*, i32** %13, align 8
  %480 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %481 = load i32, i32* %15, align 4
  %482 = zext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %480, i64 %482
  %484 = call i32 @OutputLine_def(i32* %479, %struct.TYPE_7__* %483)
  br label %485

485:                                              ; preds = %478, %470
  br label %486

486:                                              ; preds = %485
  %487 = load i32, i32* %15, align 4
  %488 = add i32 %487, 1
  store i32 %488, i32* %15, align 4
  br label %466

489:                                              ; preds = %466
  %490 = load i32*, i32** %13, align 8
  %491 = call i32 @fclose(i32* %490)
  br label %492

492:                                              ; preds = %489, %445
  %493 = load i8*, i8** %9, align 8
  %494 = icmp ne i8* %493, null
  br i1 %494, label %495, label %538

495:                                              ; preds = %492
  %496 = load i8*, i8** %9, align 8
  %497 = call i32* @fopen(i8* %496, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  store i32* %497, i32** %13, align 8
  %498 = load i32*, i32** %13, align 8
  %499 = icmp ne i32* %498, null
  br i1 %499, label %509, label %500

500:                                              ; preds = %495
  %501 = load i32*, i32** @stderr, align 8
  %502 = load i8**, i8*** %5, align 8
  %503 = load i32, i32* %15, align 4
  %504 = add i32 %503, 1
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds i8*, i8** %502, i64 %505
  %507 = load i8*, i8** %506, align 8
  %508 = call i32 (i32*, i8*, ...) @fprintf(i32* %501, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0), i8* %507)
  store i32 -5, i32* %3, align 4
  br label %590

509:                                              ; preds = %495
  %510 = load i32*, i32** %13, align 8
  %511 = call i32 @OutputHeader_stub(i32* %510)
  store i32 0, i32* %15, align 4
  br label %512

512:                                              ; preds = %532, %509
  %513 = load i32, i32* %15, align 4
  %514 = load i32, i32* %14, align 4
  %515 = icmp ult i32 %513, %514
  br i1 %515, label %516, label %535

516:                                              ; preds = %512
  %517 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %518 = load i32, i32* %15, align 4
  %519 = zext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %517, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %531

524:                                              ; preds = %516
  %525 = load i32*, i32** %13, align 8
  %526 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %527 = load i32, i32* %15, align 4
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %526, i64 %528
  %530 = call i32 @OutputLine_stub(i32* %525, %struct.TYPE_7__* %529)
  br label %531

531:                                              ; preds = %524, %516
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %15, align 4
  %534 = add i32 %533, 1
  store i32 %534, i32* %15, align 4
  br label %512

535:                                              ; preds = %512
  %536 = load i32*, i32** %13, align 8
  %537 = call i32 @fclose(i32* %536)
  br label %538

538:                                              ; preds = %535, %492
  %539 = load i8*, i8** %10, align 8
  %540 = icmp ne i8* %539, null
  br i1 %540, label %541, label %587

541:                                              ; preds = %538
  %542 = load i8*, i8** %10, align 8
  %543 = call i32* @fopen(i8* %542, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  store i32* %543, i32** %13, align 8
  %544 = load i32*, i32** %13, align 8
  %545 = icmp ne i32* %544, null
  br i1 %545, label %555, label %546

546:                                              ; preds = %541
  %547 = load i32*, i32** @stderr, align 8
  %548 = load i8**, i8*** %5, align 8
  %549 = load i32, i32* %15, align 4
  %550 = add i32 %549, 1
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds i8*, i8** %548, i64 %551
  %553 = load i8*, i8** %552, align 8
  %554 = call i32 (i32*, i8*, ...) @fprintf(i32* %547, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.23, i64 0, i64 0), i8* %553)
  store i32 -5, i32* %3, align 4
  br label %590

555:                                              ; preds = %541
  %556 = load i32*, i32** %13, align 8
  %557 = load i8*, i8** @pszDllName, align 8
  %558 = call i32 @OutputHeader_asmstub(i32* %556, i8* %557)
  store i32 0, i32* %15, align 4
  br label %559

559:                                              ; preds = %579, %555
  %560 = load i32, i32* %15, align 4
  %561 = load i32, i32* %14, align 4
  %562 = icmp ult i32 %560, %561
  br i1 %562, label %563, label %582

563:                                              ; preds = %559
  %564 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %565 = load i32, i32* %15, align 4
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %571, label %578

571:                                              ; preds = %563
  %572 = load i32*, i32** %13, align 8
  %573 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %574 = load i32, i32* %15, align 4
  %575 = zext i32 %574 to i64
  %576 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %573, i64 %575
  %577 = call i32 @OutputLine_asmstub(i32* %572, %struct.TYPE_7__* %576)
  br label %578

578:                                              ; preds = %571, %563
  br label %579

579:                                              ; preds = %578
  %580 = load i32, i32* %15, align 4
  %581 = add i32 %580, 1
  store i32 %581, i32* %15, align 4
  br label %559

582:                                              ; preds = %559
  %583 = load i32*, i32** %13, align 8
  %584 = call i32 (i32*, i8*, ...) @fprintf(i32* %583, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %585 = load i32*, i32** %13, align 8
  %586 = call i32 @fclose(i32* %585)
  br label %587

587:                                              ; preds = %582, %538
  %588 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %589 = call i32 @free(%struct.TYPE_7__* %588)
  store i32 0, i32* %3, align 4
  br label %590

590:                                              ; preds = %587, %546, %500, %453, %442, %424, %407, %379, %257, %226, %56, %22
  %591 = load i32, i32* %3, align 4
  ret i32 %591
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local %struct.TYPE_7__* @ParseFile(i8*, i32*, i32*) #1

declare dso_local i32 @OutputHeader_def(i32*, i8*) #1

declare dso_local i32 @OutputLine_def(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @OutputHeader_stub(i32*) #1

declare dso_local i32 @OutputLine_stub(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @OutputHeader_asmstub(i32*, i8*) #1

declare dso_local i32 @OutputLine_asmstub(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
