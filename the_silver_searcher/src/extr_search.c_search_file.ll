; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_search.c_search_file.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_search.c_search_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i32, i32, i64, i32, i64, i64, i32, i32, i64 }
%struct.stat = type { i64, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Skipping %s: Error fstat()ing file.\00", align 1
@opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Skipping %s: stdout is redirected to it\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Skipping %s: Mode %u is not a file.\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Skipping %s: Error opening file: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"%s is a named pipe. stream searching\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Skipping %s: file is empty.\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [66 x i8] c"Skipping %s: pcre_exec() can't handle files larger than %i bytes.\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"File %s failed to load: %s.\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"File %s is binary. Skipping...\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"File %s read(): expected to read %u bytes but read %u\00", align 1
@AG_NO_COMPRESSION = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"Cannot decompress zipped file %s\00", align 1
@print_mtx = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_FROM_SYSTEM = common dso_local global i32 0, align 4
@FORMAT_MESSAGE_IGNORE_INSERTS = common dso_local global i32 0, align 4
@MADV_SEQUENTIAL = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@POSIX_MADV_SEQUENTIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @search_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i8* null, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @stat(i8* %14, %struct.stat* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %251

21:                                               ; preds = %1
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 0), align 8
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @log_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %251

32:                                               ; preds = %24, %21
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @S_ISREG(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @S_ISFIFO(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %2, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %43, i32 %45)
  br label %251

47:                                               ; preds = %37, %32
  %48 = load i8*, i8** %2, align 8
  %49 = load i32, i32* @O_RDONLY, align 4
  %50 = call i32 @open(i8* %48, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i8*, i8** %2, align 8
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %54, i32 %56)
  br label %251

58:                                               ; preds = %47
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @fstat(i32 %59, %struct.stat* %6)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %64)
  br label %251

66:                                               ; preds = %58
  %67 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 0), align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 0), align 8
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %70, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %2, align 8
  %76 = call i32 @log_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  br label %251

77:                                               ; preds = %69, %66
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @S_ISREG(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @S_ISFIFO(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %2, align 8
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %88, i32 %90)
  br label %251

92:                                               ; preds = %82, %77
  %93 = call i32 (...) @print_init_context()
  %94 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @S_IFIFO, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = load i8*, i8** %2, align 8
  %101 = call i32 @log_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* %3, align 4
  %103 = call i32* @fdopen(i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32* %103, i32** %9, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load i8*, i8** %2, align 8
  %106 = call i32 @search_stream(i32* %104, i8* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32*, i32** %9, align 8
  %108 = call i32 @fclose(i32* %107)
  br label %251

109:                                              ; preds = %92
  %110 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %138

114:                                              ; preds = %109
  %115 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 1), align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 46
  br i1 %119, label %120, label %134

120:                                              ; preds = %114
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 2), align 8
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 9), align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 10), align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i8*, i8** %5, align 8
  %131 = load i32, i32* %4, align 4
  %132 = load i8*, i8** %2, align 8
  %133 = call i32 @search_buf(i8* %130, i32 %131, i8* %132)
  store i32 %133, i32* %8, align 4
  br label %137

134:                                              ; preds = %126, %123, %120, %114
  %135 = load i8*, i8** %2, align 8
  %136 = call i32 @log_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %134, %129
  br label %251

138:                                              ; preds = %109
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 9), align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @INT_MAX, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i8*, i8** %2, align 8
  %147 = load i32, i32* @INT_MAX, align 4
  %148 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i8* %146, i32 %147)
  br label %251

149:                                              ; preds = %141, %138
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 4), align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %149
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @PROT_READ, align 4
  %155 = load i32, i32* @MAP_PRIVATE, align 4
  %156 = load i32, i32* %3, align 4
  %157 = call i8* @mmap(i32 0, i32 %153, i32 %154, i32 %155, i32 %156, i32 0)
  store i8* %157, i8** %5, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = load i8*, i8** @MAP_FAILED, align 8
  %160 = icmp eq i8* %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %152
  %162 = load i8*, i8** %2, align 8
  %163 = load i32, i32* @errno, align 4
  %164 = call i32 @strerror(i32 %163)
  %165 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %162, i32 %164)
  br label %251

166:                                              ; preds = %152
  br label %213

167:                                              ; preds = %149
  %168 = load i32, i32* %4, align 4
  %169 = call i8* @ag_malloc(i32 %168)
  store i8* %169, i8** %5, align 8
  store i32 0, i32* %10, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 8), align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %188, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %3, align 4
  %174 = load i8*, i8** %5, align 8
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @ag_min(i32 %175, i32 512)
  %177 = call i32 @read(i32 %173, i8* %174, i32 %176)
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %10, align 4
  %180 = load i8*, i8** %5, align 8
  %181 = load i32, i32* %4, align 4
  %182 = call i64 @is_binary(i8* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %172
  %185 = load i8*, i8** %2, align 8
  %186 = call i32 @log_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %185)
  br label %251

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187, %167
  br label %189

189:                                              ; preds = %193, %188
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %203

193:                                              ; preds = %189
  %194 = load i32, i32* %3, align 4
  %195 = load i8*, i8** %5, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @read(i32 %194, i8* %198, i32 %199)
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %10, align 4
  br label %189

203:                                              ; preds = %189
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* %4, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = load i8*, i8** %2, align 8
  %209 = load i32, i32* %4, align 4
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @die(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i8* %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %207, %203
  br label %213

213:                                              ; preds = %212, %166
  %214 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 7), align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %246

216:                                              ; preds = %213
  %217 = load i8*, i8** %5, align 8
  %218 = load i32, i32* %4, align 4
  %219 = call i64 @is_zipped(i8* %217, i32 %218)
  store i64 %219, i64* %11, align 8
  %220 = load i64, i64* %11, align 8
  %221 = load i64, i64* @AG_NO_COMPRESSION, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %245

223:                                              ; preds = %216
  %224 = load i32, i32* %4, align 4
  store i32 %224, i32* %12, align 4
  %225 = load i64, i64* %11, align 8
  %226 = load i8*, i8** %5, align 8
  %227 = load i32, i32* %4, align 4
  %228 = load i8*, i8** %2, align 8
  %229 = call i8* @decompress(i64 %225, i8* %226, i32 %227, i8* %228, i32* %12)
  store i8* %229, i8** %13, align 8
  %230 = load i8*, i8** %13, align 8
  %231 = icmp eq i8* %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %223
  %233 = load i32, i32* %12, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232, %223
  %236 = load i8*, i8** %2, align 8
  %237 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %236)
  br label %251

238:                                              ; preds = %232
  %239 = load i8*, i8** %13, align 8
  %240 = load i32, i32* %12, align 4
  %241 = load i8*, i8** %2, align 8
  %242 = call i32 @search_buf(i8* %239, i32 %240, i8* %241)
  store i32 %242, i32* %8, align 4
  %243 = load i8*, i8** %13, align 8
  %244 = call i32 @free(i8* %243)
  br label %251

245:                                              ; preds = %216
  br label %246

246:                                              ; preds = %245, %213
  %247 = load i8*, i8** %5, align 8
  %248 = load i32, i32* %4, align 4
  %249 = load i8*, i8** %2, align 8
  %250 = call i32 @search_buf(i8* %247, i32 %248, i8* %249)
  store i32 %250, i32* %8, align 4
  br label %251

251:                                              ; preds = %246, %238, %235, %184, %161, %145, %137, %99, %87, %74, %63, %53, %42, %29, %18
  %252 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 6), align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %251
  %255 = load i32, i32* %8, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %254
  %258 = call i32 @pthread_mutex_lock(i32* @print_mtx)
  %259 = load i8*, i8** %2, align 8
  %260 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 5), align 8
  %261 = call i32 @print_path(i8* %259, i32 %260)
  %262 = call i32 @pthread_mutex_unlock(i32* @print_mtx)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 3), align 4
  br label %263

263:                                              ; preds = %257, %254, %251
  %264 = call i32 (...) @print_cleanup_context()
  %265 = load i8*, i8** %5, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %283

267:                                              ; preds = %263
  %268 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 4), align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %267
  %271 = load i8*, i8** %5, align 8
  %272 = load i8*, i8** @MAP_FAILED, align 8
  %273 = icmp ne i8* %271, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %270
  %275 = load i8*, i8** %5, align 8
  %276 = load i32, i32* %4, align 4
  %277 = call i32 @munmap(i8* %275, i32 %276)
  br label %278

278:                                              ; preds = %274, %270
  br label %282

279:                                              ; preds = %267
  %280 = load i8*, i8** %5, align 8
  %281 = call i32 @free(i8* %280)
  br label %282

282:                                              ; preds = %279, %278
  br label %283

283:                                              ; preds = %282, %263
  %284 = load i32, i32* %3, align 4
  %285 = icmp ne i32 %284, -1
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load i32, i32* %3, align 4
  %288 = call i32 @close(i32 %287)
  br label %289

289:                                              ; preds = %286, %283
  ret void
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @log_err(i8*, i8*, ...) #1

declare dso_local i32 @log_debug(i8*, i8*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISFIFO(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @print_init_context(...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @search_stream(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @search_buf(i8*, i32, i8*) #1

declare dso_local i8* @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @ag_malloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @ag_min(i32, i32) #1

declare dso_local i64 @is_binary(i8*, i32) #1

declare dso_local i32 @die(i8*, i8*, i32, i32) #1

declare dso_local i64 @is_zipped(i8*, i32) #1

declare dso_local i8* @decompress(i64, i8*, i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @print_path(i8*, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @print_cleanup_context(...) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
