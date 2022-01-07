; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_create_cache_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_create_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_17__*, i64, i64, i64, i32*, %struct.TYPE_18__*, %struct.TYPE_14__, i32, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_17__*, %struct.TYPE_16__*)* }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8* }

@create_cache_entry.no_cacheW = internal constant [9 x i8] c"no-cache\00", align 1
@create_cache_entry.no_storeW = internal constant [9 x i8] c"no-store\00", align 1
@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INTERNET_FLAG_NO_CACHE_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@szCache_Control = common dso_local global i32 0, align 4
@INTERNET_FLAG_NEED_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"INTERNET_FLAG_NEED_FILE is not supported correctly\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Could not get URL\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Could not create cache entry: %08x\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not create file: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"WriteFile failed: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @create_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_cache_entry(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = icmp ne %struct.TYPE_18__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = call i32 @req_file_release(%struct.TYPE_18__* %25)
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 6
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %28, align 8
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @CloseHandle(i32* %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 5
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %34, %29
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @INTERNET_FLAG_NO_CACHE_WRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i64, i64* @FALSE, align 8
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %49, %41
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %129

54:                                               ; preds = %51
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 8
  %57 = call i32 @EnterCriticalSection(i32* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = load i32, i32* @szCache_Control, align 4
  %60 = load i64, i64* @FALSE, align 8
  %61 = call i32 @HTTP_GetCustomHeaderIndex(%struct.TYPE_16__* %58, i32 %59, i32 0, i64 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %125

64:                                               ; preds = %54
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 9
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %123, %64
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %77, label %124

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 32
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 9
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ true, %78 ], [ %87, %83 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %8, align 8
  br label %78

93:                                               ; preds = %88
  %94 = load i8*, i8** %8, align 8
  %95 = call i8* @strchrW(i8* %94, i8 signext 44)
  store i8* %95, i8** %9, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @strlenW(i8* %100)
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8* %103, i8** %9, align 8
  br label %104

104:                                              ; preds = %98, %93
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @strncmpiW(i8* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @create_cache_entry.no_cacheW, i64 0, i64 0), i32 8)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i8*, i8** %8, align 8
  %110 = call i32 @strncmpiW(i8* %109, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @create_cache_entry.no_storeW, i64 0, i64 0), i32 8)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108, %104
  %113 = load i64, i64* @FALSE, align 8
  store i64 %113, i64* %6, align 8
  br label %124

114:                                              ; preds = %108
  %115 = load i8*, i8** %9, align 8
  store i8* %115, i8** %8, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 44
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i8*, i8** %8, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %8, align 8
  br label %123

123:                                              ; preds = %120, %114
  br label %73

124:                                              ; preds = %112, %73
  br label %125

125:                                              ; preds = %124, %54
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 8
  %128 = call i32 @LeaveCriticalSection(i32* %127)
  br label %129

129:                                              ; preds = %125, %51
  %130 = load i64, i64* %6, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %129
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @INTERNET_FLAG_NEED_FILE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %132
  store i32 1, i32* %10, align 4
  br label %241

141:                                              ; preds = %132
  %142 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %129
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %145 = call i8* @compose_request_url(%struct.TYPE_16__* %144)
  store i8* %145, i8** %5, align 8
  %146 = load i8*, i8** %5, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %143
  %149 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %241

150:                                              ; preds = %143
  %151 = load i8*, i8** %5, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %161

157:                                              ; preds = %150
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  br label %161

161:                                              ; preds = %157, %156
  %162 = phi i32 [ 0, %156 ], [ %160, %157 ]
  %163 = call i64 @CreateUrlCacheEntryW(i8* %151, i32 %162, i32* null, i8* %16, i32 0)
  store i64 %163, i64* %6, align 8
  %164 = load i64, i64* %6, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %161
  %167 = call i32 (...) @GetLastError()
  %168 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  store i32 1, i32* %10, align 4
  br label %241

169:                                              ; preds = %161
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 6
  %172 = call i32 @create_req_file(i8* %16, %struct.TYPE_18__** %171)
  %173 = load i8*, i8** %5, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 6
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  store i8* %173, i8** %177, align 8
  %178 = load i32, i32* @GENERIC_WRITE, align 4
  %179 = load i32, i32* @FILE_SHARE_READ, align 4
  %180 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @CREATE_ALWAYS, align 4
  %183 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %184 = call i32* @CreateFileW(i8* %16, i32 %178, i32 %181, i32* null, i32 %182, i32 %183, i32* null)
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 5
  store i32* %184, i32** %186, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 5
  %189 = load i32*, i32** %188, align 8
  %190 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %191 = icmp eq i32* %189, %190
  br i1 %191, label %192, label %197

192:                                              ; preds = %169
  %193 = call i32 (...) @GetLastError()
  %194 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %193)
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 5
  store i32* null, i32** %196, align 8
  store i32 1, i32* %10, align 4
  br label %241

197:                                              ; preds = %169
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %240

202:                                              ; preds = %197
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 5
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %208, %211
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @WriteFile(i32* %205, i64 %212, i64 %215, i32* %11, i32* null)
  store i64 %216, i64* %6, align 8
  %217 = load i64, i64* %6, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %202
  %220 = call i32 (...) @GetLastError()
  %221 = call i32 (i8*, ...) @FIXME(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %219, %202
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i64 (%struct.TYPE_17__*, %struct.TYPE_16__*)*, i64 (%struct.TYPE_17__*, %struct.TYPE_16__*)** %228, align 8
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %231, align 8
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %234 = call i64 %229(%struct.TYPE_17__* %232, %struct.TYPE_16__* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %222
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %238 = call i32 @commit_cache_entry(%struct.TYPE_16__* %237)
  br label %239

239:                                              ; preds = %236, %222
  br label %240

240:                                              ; preds = %239, %197
  store i32 0, i32* %10, align 4
  br label %241

241:                                              ; preds = %240, %192, %166, %148, %140
  %242 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i32, i32* %10, align 4
  switch i32 %243, label %245 [
    i32 0, label %244
    i32 1, label %244
  ]

244:                                              ; preds = %241, %241
  ret void

245:                                              ; preds = %241
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @req_file_release(%struct.TYPE_18__*) #2

declare dso_local i32 @CloseHandle(i32*) #2

declare dso_local i32 @EnterCriticalSection(i32*) #2

declare dso_local i32 @HTTP_GetCustomHeaderIndex(%struct.TYPE_16__*, i32, i32, i64) #2

declare dso_local i8* @strchrW(i8*, i8 signext) #2

declare dso_local i32 @strlenW(i8*) #2

declare dso_local i32 @strncmpiW(i8*, i8*, i32) #2

declare dso_local i32 @LeaveCriticalSection(i32*) #2

declare dso_local i32 @FIXME(i8*, ...) #2

declare dso_local i8* @compose_request_url(%struct.TYPE_16__*) #2

declare dso_local i32 @WARN(i8*, ...) #2

declare dso_local i64 @CreateUrlCacheEntryW(i8*, i32, i32*, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @create_req_file(i8*, %struct.TYPE_18__**) #2

declare dso_local i32* @CreateFileW(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @WriteFile(i32*, i64, i64, i32*, i32*) #2

declare dso_local i32 @commit_cache_entry(%struct.TYPE_16__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
