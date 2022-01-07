; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzip2.c_uncompress.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/bzip2/extr_bzip2.c_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MY_STAT = type { i32 }

@False = common dso_local global i8* null, align 8
@deleteOutputOnInterrupt = common dso_local global i8* null, align 8
@srcMode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"uncompress: bad modes\0A\00", align 1
@inName = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@outName = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1
@BZ_N_SUFFIX_PAIRS = common dso_local global i64 0, align 8
@zSuffix = common dso_local global i32* null, align 8
@unzSuffix = common dso_local global i32* null, align 8
@True = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@noisy = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: There are no files matching `%s'.\0A\00", align 1
@progName = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"%s: Can't open input file %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1
@forceOverwrite = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"%s: Input file %s is not a normal file.\0A\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"%s: Can't guess original name for %s -- using %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"%s: Output file %s already exists.\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"%s: Input file %s has %d other link%s.\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stdin = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str.13 = private unnamed_addr constant [51 x i8] c"%s: I won't read compressed data from a terminal.\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"%s: Can't open input file %s:%s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"%s: Can't create output file %s: %s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"uncompress: bad srcMode\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1
@outputHandleJustInCase = common dso_local global i32* null, align 8
@keepInputFiles = common dso_local global i32 0, align 4
@unzFailsExist = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"not a bzip2 file.\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"%s: %s is not a bzip2 file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncompress(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.MY_STAT, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = load i8*, i8** @False, align 8
  store i8* %12, i8** @deleteOutputOnInterrupt, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @srcMode, align 4
  %17 = icmp ne i32 %16, 128
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15, %1
  %21 = load i8*, i8** @False, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i32, i32* @srcMode, align 4
  switch i32 %22, label %66 [
    i32 128, label %23
    i32 130, label %28
    i32 129, label %60
  ]

23:                                               ; preds = %20
  %24 = load i8*, i8** @inName, align 8
  %25 = call i32 @copyFileName(i8* %24, i32* bitcast ([8 x i8]* @.str.1 to i32*))
  %26 = load i8*, i8** @outName, align 8
  %27 = call i32 @copyFileName(i8* %26, i32* bitcast ([9 x i8]* @.str.2 to i32*))
  br label %66

28:                                               ; preds = %20
  %29 = load i8*, i8** @inName, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @copyFileName(i8* %29, i32* %30)
  %32 = load i8*, i8** @outName, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @copyFileName(i8* %32, i32* %33)
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %53, %28
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @BZ_N_SUFFIX_PAIRS, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i8*, i8** @outName, align 8
  %41 = load i32*, i32** @zSuffix, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @unzSuffix, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mapSuffix(i8* %40, i32 %44, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %67

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %6, align 8
  br label %35

56:                                               ; preds = %35
  %57 = load i8*, i8** @True, align 8
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** @outName, align 8
  %59 = call i32 @strcat(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %66

60:                                               ; preds = %20
  %61 = load i8*, i8** @inName, align 8
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @copyFileName(i8* %61, i32* %62)
  %64 = load i8*, i8** @outName, align 8
  %65 = call i32 @copyFileName(i8* %64, i32* bitcast ([9 x i8]* @.str.2 to i32*))
  br label %66

66:                                               ; preds = %20, %60, %56, %23
  br label %67

67:                                               ; preds = %66, %51
  %68 = load i32, i32* @srcMode, align 4
  %69 = icmp ne i32 %68, 128
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i8*, i8** @inName, align 8
  %72 = call i64 @containsDubiousChars(i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i64, i64* @noisy, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** @progName, align 8
  %80 = load i8*, i8** @inName, align 8
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %79, i8* %80)
  br label %82

82:                                               ; preds = %77, %74
  %83 = call i32 @setExit(i32 1)
  br label %350

84:                                               ; preds = %70, %67
  %85 = load i32, i32* @srcMode, align 4
  %86 = icmp ne i32 %85, 128
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i8*, i8** @inName, align 8
  %89 = call i64 @fileExists(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @stderr, align 4
  %93 = load i8*, i8** @progName, align 8
  %94 = load i8*, i8** @inName, align 8
  %95 = load i32, i32* @errno, align 4
  %96 = call i8* @strerror(i32 %95)
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %93, i8* %94, i8* %96)
  %98 = call i32 @setExit(i32 1)
  br label %350

99:                                               ; preds = %87, %84
  %100 = load i32, i32* @srcMode, align 4
  %101 = icmp eq i32 %100, 130
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @srcMode, align 4
  %104 = icmp eq i32 %103, 129
  br i1 %104, label %105, label %119

105:                                              ; preds = %102, %99
  %106 = load i8*, i8** @inName, align 8
  %107 = call i32 @MY_STAT(i8* %106, %struct.MY_STAT* %9)
  %108 = getelementptr inbounds %struct.MY_STAT, %struct.MY_STAT* %9, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @MY_S_ISDIR(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load i32, i32* @stderr, align 4
  %114 = load i8*, i8** @progName, align 8
  %115 = load i8*, i8** @inName, align 8
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %114, i8* %115)
  %117 = call i32 @setExit(i32 1)
  br label %350

118:                                              ; preds = %105
  br label %119

119:                                              ; preds = %118, %102
  %120 = load i32, i32* @srcMode, align 4
  %121 = icmp eq i32 %120, 130
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load i64, i64* @forceOverwrite, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %139, label %125

125:                                              ; preds = %122
  %126 = load i8*, i8** @inName, align 8
  %127 = call i64 @notAStandardFile(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load i64, i64* @noisy, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = load i32, i32* @stderr, align 4
  %134 = load i8*, i8** @progName, align 8
  %135 = load i8*, i8** @inName, align 8
  %136 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %134, i8* %135)
  br label %137

137:                                              ; preds = %132, %129
  %138 = call i32 @setExit(i32 1)
  br label %350

139:                                              ; preds = %125, %122, %119
  %140 = load i8*, i8** %8, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %152

142:                                              ; preds = %139
  %143 = load i64, i64* @noisy, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32, i32* @stderr, align 4
  %147 = load i8*, i8** @progName, align 8
  %148 = load i8*, i8** @inName, align 8
  %149 = load i8*, i8** @outName, align 8
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %146, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* %147, i8* %148, i8* %149)
  br label %151

151:                                              ; preds = %145, %142
  br label %152

152:                                              ; preds = %151, %139
  %153 = load i32, i32* @srcMode, align 4
  %154 = icmp eq i32 %153, 130
  br i1 %154, label %155, label %172

155:                                              ; preds = %152
  %156 = load i8*, i8** @outName, align 8
  %157 = call i64 @fileExists(i8* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load i64, i64* @forceOverwrite, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i8*, i8** @outName, align 8
  %164 = call i32 @remove(i8* %163)
  br label %171

165:                                              ; preds = %159
  %166 = load i32, i32* @stderr, align 4
  %167 = load i8*, i8** @progName, align 8
  %168 = load i8*, i8** @outName, align 8
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* %167, i8* %168)
  %170 = call i32 @setExit(i32 1)
  br label %350

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %171, %155, %152
  %173 = load i32, i32* @srcMode, align 4
  %174 = icmp eq i32 %173, 130
  br i1 %174, label %175, label %193

175:                                              ; preds = %172
  %176 = load i64, i64* @forceOverwrite, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %193, label %178

178:                                              ; preds = %175
  %179 = load i8*, i8** @inName, align 8
  %180 = call i64 @countHardLinks(i8* %179)
  store i64 %180, i64* %5, align 8
  %181 = icmp ugt i64 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %178
  %183 = load i32, i32* @stderr, align 4
  %184 = load i8*, i8** @progName, align 8
  %185 = load i8*, i8** @inName, align 8
  %186 = load i64, i64* %5, align 8
  %187 = load i64, i64* %5, align 8
  %188 = icmp ugt i64 %187, 1
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %191 = call i32 (i32, i8*, ...) @fprintf(i32 %183, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i8* %184, i8* %185, i64 %186, i8* %190)
  %192 = call i32 @setExit(i32 1)
  br label %350

193:                                              ; preds = %178, %175, %172
  %194 = load i32, i32* @srcMode, align 4
  %195 = icmp eq i32 %194, 130
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i8*, i8** @inName, align 8
  %198 = call i32 @saveInputFileMetaInfo(i8* %197)
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i32, i32* @srcMode, align 4
  switch i32 %200, label %278 [
    i32 128, label %201
    i32 129, label %218
    i32 130, label %239
  ]

201:                                              ; preds = %199
  %202 = load i32*, i32** @stdin, align 8
  store i32* %202, i32** %3, align 8
  %203 = load i32*, i32** @stdout, align 8
  store i32* %203, i32** %4, align 8
  %204 = load i32*, i32** @stdin, align 8
  %205 = call i32 @fileno(i32* %204)
  %206 = call i32 @isatty(i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %201
  %209 = load i32, i32* @stderr, align 4
  %210 = load i8*, i8** @progName, align 8
  %211 = call i32 (i32, i8*, ...) @fprintf(i32 %209, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i8* %210)
  %212 = load i32, i32* @stderr, align 4
  %213 = load i8*, i8** @progName, align 8
  %214 = load i8*, i8** @progName, align 8
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %212, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* %213, i8* %214)
  %216 = call i32 @setExit(i32 1)
  br label %350

217:                                              ; preds = %201
  br label %280

218:                                              ; preds = %199
  %219 = load i8*, i8** @inName, align 8
  %220 = call i32* @fopen(i8* %219, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32* %220, i32** %3, align 8
  %221 = load i32*, i32** @stdout, align 8
  store i32* %221, i32** %4, align 8
  %222 = load i32*, i32** %3, align 8
  %223 = icmp eq i32* %222, null
  br i1 %223, label %224, label %238

224:                                              ; preds = %218
  %225 = load i32, i32* @stderr, align 4
  %226 = load i8*, i8** @progName, align 8
  %227 = load i8*, i8** @inName, align 8
  %228 = load i32, i32* @errno, align 4
  %229 = call i8* @strerror(i32 %228)
  %230 = call i32 (i32, i8*, ...) @fprintf(i32 %225, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* %226, i8* %227, i8* %229)
  %231 = load i32*, i32** %3, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %224
  %234 = load i32*, i32** %3, align 8
  %235 = call i32 @fclose(i32* %234)
  br label %236

236:                                              ; preds = %233, %224
  %237 = call i32 @setExit(i32 1)
  br label %350

238:                                              ; preds = %218
  br label %280

239:                                              ; preds = %199
  %240 = load i8*, i8** @inName, align 8
  %241 = call i32* @fopen(i8* %240, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  store i32* %241, i32** %3, align 8
  %242 = load i8*, i8** @outName, align 8
  %243 = call i32* @fopen_output_safely(i8* %242, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  store i32* %243, i32** %4, align 8
  %244 = load i32*, i32** %4, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %260

246:                                              ; preds = %239
  %247 = load i32, i32* @stderr, align 4
  %248 = load i8*, i8** @progName, align 8
  %249 = load i8*, i8** @outName, align 8
  %250 = load i32, i32* @errno, align 4
  %251 = call i8* @strerror(i32 %250)
  %252 = call i32 (i32, i8*, ...) @fprintf(i32 %247, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i8* %248, i8* %249, i8* %251)
  %253 = load i32*, i32** %3, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %258

255:                                              ; preds = %246
  %256 = load i32*, i32** %3, align 8
  %257 = call i32 @fclose(i32* %256)
  br label %258

258:                                              ; preds = %255, %246
  %259 = call i32 @setExit(i32 1)
  br label %350

260:                                              ; preds = %239
  %261 = load i32*, i32** %3, align 8
  %262 = icmp eq i32* %261, null
  br i1 %262, label %263, label %277

263:                                              ; preds = %260
  %264 = load i32, i32* @stderr, align 4
  %265 = load i8*, i8** @progName, align 8
  %266 = load i8*, i8** @inName, align 8
  %267 = load i32, i32* @errno, align 4
  %268 = call i8* @strerror(i32 %267)
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %264, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %265, i8* %266, i8* %268)
  %270 = load i32*, i32** %4, align 8
  %271 = icmp ne i32* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %263
  %273 = load i32*, i32** %4, align 8
  %274 = call i32 @fclose(i32* %273)
  br label %275

275:                                              ; preds = %272, %263
  %276 = call i32 @setExit(i32 1)
  br label %350

277:                                              ; preds = %260
  br label %280

278:                                              ; preds = %199
  %279 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  br label %280

280:                                              ; preds = %278, %277, %238, %217
  %281 = load i32, i32* @verbosity, align 4
  %282 = icmp sge i32 %281, 1
  br i1 %282, label %283, label %291

283:                                              ; preds = %280
  %284 = load i32, i32* @stderr, align 4
  %285 = load i8*, i8** @inName, align 8
  %286 = call i32 (i32, i8*, ...) @fprintf(i32 %284, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %285)
  %287 = load i8*, i8** @inName, align 8
  %288 = call i32 @pad(i8* %287)
  %289 = load i32, i32* @stderr, align 4
  %290 = call i32 @fflush(i32 %289)
  br label %291

291:                                              ; preds = %283, %280
  %292 = load i32*, i32** %4, align 8
  store i32* %292, i32** @outputHandleJustInCase, align 8
  %293 = load i8*, i8** @True, align 8
  store i8* %293, i8** @deleteOutputOnInterrupt, align 8
  %294 = load i32*, i32** %3, align 8
  %295 = load i32*, i32** %4, align 8
  %296 = call i8* @uncompressStream(i32* %294, i32* %295)
  store i8* %296, i8** %7, align 8
  store i32* null, i32** @outputHandleJustInCase, align 8
  %297 = load i8*, i8** %7, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %315

299:                                              ; preds = %291
  %300 = load i32, i32* @srcMode, align 4
  %301 = icmp eq i32 %300, 130
  br i1 %301, label %302, label %314

302:                                              ; preds = %299
  %303 = load i8*, i8** @outName, align 8
  %304 = call i32 @applySavedTimeInfoToOutputFile(i8* %303)
  %305 = load i8*, i8** @False, align 8
  store i8* %305, i8** @deleteOutputOnInterrupt, align 8
  %306 = load i32, i32* @keepInputFiles, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %302
  %309 = load i8*, i8** @inName, align 8
  %310 = call i32 @remove(i8* %309)
  store i32 %310, i32* %10, align 4
  %311 = load i32, i32* %10, align 4
  %312 = call i32 @ERROR_IF_NOT_ZERO(i32 %311)
  br label %313

313:                                              ; preds = %308, %302
  br label %314

314:                                              ; preds = %313, %299
  br label %326

315:                                              ; preds = %291
  %316 = load i8*, i8** @True, align 8
  store i8* %316, i8** @unzFailsExist, align 8
  %317 = load i8*, i8** @False, align 8
  store i8* %317, i8** @deleteOutputOnInterrupt, align 8
  %318 = load i32, i32* @srcMode, align 4
  %319 = icmp eq i32 %318, 130
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = load i8*, i8** @outName, align 8
  %322 = call i32 @remove(i8* %321)
  store i32 %322, i32* %11, align 4
  %323 = load i32, i32* %11, align 4
  %324 = call i32 @ERROR_IF_NOT_ZERO(i32 %323)
  br label %325

325:                                              ; preds = %320, %315
  br label %326

326:                                              ; preds = %325, %314
  %327 = load i8*, i8** @False, align 8
  store i8* %327, i8** @deleteOutputOnInterrupt, align 8
  %328 = load i8*, i8** %7, align 8
  %329 = icmp ne i8* %328, null
  br i1 %329, label %330, label %337

330:                                              ; preds = %326
  %331 = load i32, i32* @verbosity, align 4
  %332 = icmp sge i32 %331, 1
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load i32, i32* @stderr, align 4
  %335 = call i32 (i32, i8*, ...) @fprintf(i32 %334, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  br label %336

336:                                              ; preds = %333, %330
  br label %350

337:                                              ; preds = %326
  %338 = call i32 @setExit(i32 2)
  %339 = load i32, i32* @verbosity, align 4
  %340 = icmp sge i32 %339, 1
  br i1 %340, label %341, label %344

341:                                              ; preds = %337
  %342 = load i32, i32* @stderr, align 4
  %343 = call i32 (i32, i8*, ...) @fprintf(i32 %342, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  br label %349

344:                                              ; preds = %337
  %345 = load i32, i32* @stderr, align 4
  %346 = load i8*, i8** @progName, align 8
  %347 = load i8*, i8** @inName, align 8
  %348 = call i32 (i32, i8*, ...) @fprintf(i32 %345, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i8* %346, i8* %347)
  br label %349

349:                                              ; preds = %344, %341
  br label %350

350:                                              ; preds = %82, %91, %112, %137, %165, %182, %208, %236, %258, %275, %349, %336
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @copyFileName(i8*, i32*) #1

declare dso_local i32 @mapSuffix(i8*, i32, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i64 @containsDubiousChars(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @setExit(i32) #1

declare dso_local i64 @fileExists(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @MY_STAT(i8*, %struct.MY_STAT*) #1

declare dso_local i64 @MY_S_ISDIR(i32) #1

declare dso_local i64 @notAStandardFile(i8*) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i64 @countHardLinks(i8*) #1

declare dso_local i32 @saveInputFileMetaInfo(i8*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32* @fopen_output_safely(i8*, i8*) #1

declare dso_local i32 @pad(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i8* @uncompressStream(i32*, i32*) #1

declare dso_local i32 @applySavedTimeInfoToOutputFile(i8*) #1

declare dso_local i32 @ERROR_IF_NOT_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
