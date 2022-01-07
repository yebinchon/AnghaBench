; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_FtpOpenFileW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_FtpOpenFileW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_20__, %struct.TYPE_25__*, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__, i32*, %struct.TYPE_23__*, i8*, i32 }
%struct.TYPE_22__ = type { i8*, i32, i8*, i64, i32 }
%struct.TYPE_26__ = type { i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32, i8* }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GENERIC_READ = common dso_local global i64 0, align 8
@GENERIC_WRITE = common dso_local global i64 0, align 8
@FTPFILEVtbl = common dso_local global i32 0, align 4
@WH_HFILE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@INTERNET_SCHEME_FTP = common dso_local global i32 0, align 4
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Could not create cache file: %u\0A\00", align 1
@INTERNET_FLAG_ASYNC = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@INTERNET_STATUS_HANDLE_CREATED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@INTERNET_STATUS_REQUEST_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_23__*, i32*, i64, i64, i8*)* @FTP_FtpOpenFileW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FTP_FtpOpenFileW(%struct.TYPE_23__* %0, i32* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_26__, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %22 = load i8*, i8** @FALSE, align 8
  store i8* %22, i8** %13, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %15, align 8
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @INTERNET_SetLastError(i32 0)
  %25 = load i64, i64* @GENERIC_READ, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %5
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i8* @FTP_SendRetrieve(%struct.TYPE_23__* %29, i32* %30, i64 %31)
  store i8* %32, i8** %13, align 8
  br label %43

33:                                               ; preds = %5
  %34 = load i64, i64* @GENERIC_WRITE, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i8* @FTP_SendStore(%struct.TYPE_23__* %38, i32* %39, i64 %40)
  store i8* %41, i8** %13, align 8
  br label %42

42:                                               ; preds = %37, %33
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i8*, i8** %13, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %93

46:                                               ; preds = %43
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %48 = call i64 @FTP_GetDataSocket(%struct.TYPE_23__* %47, i32* %12)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %46
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 1
  %53 = call %struct.TYPE_24__* @alloc_object(%struct.TYPE_20__* %52, i32* @FTPFILEVtbl, i32 80)
  store %struct.TYPE_24__* %53, %struct.TYPE_24__** %14, align 8
  %54 = load i32, i32* @WH_HFILE, align 4
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 4
  store i32 %54, i32* %57, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 3
  store i64 %58, i64* %61, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 2
  store i8* %62, i8** %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  %71 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i8*, i8** @FALSE, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %77, i32 0, i32 1
  %79 = call i32 @WININET_AddRef(%struct.TYPE_20__* %78)
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 3
  store %struct.TYPE_23__* %80, %struct.TYPE_23__** %82, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = call i32 @list_add_head(i32* %85, i32* %88)
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 6
  store %struct.TYPE_24__* %90, %struct.TYPE_24__** %92, align 8
  br label %93

93:                                               ; preds = %50, %46, %43
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, -1
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @closesocket(i32 %101)
  %103 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %103, i32 0, i32 0
  store i32 -1, i32* %104, align 8
  br label %105

105:                                              ; preds = %98, %93
  %106 = load i8*, i8** %13, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %193

108:                                              ; preds = %105
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* @GENERIC_READ, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %193

112:                                              ; preds = %108
  %113 = load i32, i32* @MAX_PATH, align 4
  %114 = add nsw i32 %113, 1
  %115 = zext i32 %114 to i64
  %116 = call i8* @llvm.stacksave()
  store i8* %116, i8** %16, align 8
  %117 = alloca i32, i64 %115, align 16
  store i64 %115, i64* %17, align 8
  %118 = call i32 @memset(%struct.TYPE_26__* %18, i32 0, i32 32)
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  store i32 32, i32* %119, align 8
  %120 = load i32, i32* @INTERNET_SCHEME_FTP, align 4
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 5
  store i32 %120, i32* %121, align 4
  %122 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 4
  store i32 %124, i32* %125, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 3
  store i32 %128, i32* %129, align 4
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 2
  store i32 %132, i32* %133, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = call i8* @heap_strdupW(i32* %134)
  %136 = bitcast i8* %135 to i32*
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  store i32* %136, i32** %137, align 8
  %138 = call i64 @InternetCreateUrlW(%struct.TYPE_26__* %18, i32 0, i32* null, i64* %19)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %188, label %140

140:                                              ; preds = %112
  %141 = call i64 (...) @GetLastError()
  %142 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %188

144:                                              ; preds = %140
  %145 = load i64, i64* %19, align 8
  %146 = mul i64 %145, 4
  %147 = call i32* @heap_alloc(i64 %146)
  store i32* %147, i32** %20, align 8
  %148 = load i32*, i32** %20, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %185

150:                                              ; preds = %144
  %151 = load i32*, i32** %20, align 8
  %152 = call i64 @InternetCreateUrlW(%struct.TYPE_26__* %18, i32 0, i32* %151, i64* %19)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %185

154:                                              ; preds = %150
  %155 = load i32*, i32** %20, align 8
  %156 = call i64 @CreateUrlCacheEntryW(i32* %155, i32 0, i32* null, i32* %117, i32 0)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %185

158:                                              ; preds = %154
  %159 = call i8* @heap_strdupW(i32* %117)
  %160 = bitcast i8* %159 to i32*
  %161 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %161, i32 0, i32 2
  store i32* %160, i32** %162, align 8
  %163 = load i64, i64* @GENERIC_WRITE, align 8
  %164 = load i32, i32* @FILE_SHARE_READ, align 4
  %165 = load i32, i32* @OPEN_EXISTING, align 4
  %166 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %167 = call i64 @CreateFileW(i32* %117, i64 %163, i32 %164, i32* null, i32 %165, i32 %166, i32* null)
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  store i64 %167, i64* %169, align 8
  %170 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %158
  %176 = call i64 (...) @GetLastError()
  %177 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %176)
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @heap_free(i32* %180)
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 2
  store i32* null, i32** %183, align 8
  br label %184

184:                                              ; preds = %175, %158
  br label %185

185:                                              ; preds = %184, %154, %150, %144
  %186 = load i32*, i32** %20, align 8
  %187 = call i32 @heap_free(i32* %186)
  br label %188

188:                                              ; preds = %185, %140, %112
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = call i32 @heap_free(i32* %190)
  %192 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %192)
  br label %193

193:                                              ; preds = %188, %108, %105
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %195, align 8
  store %struct.TYPE_25__* %196, %struct.TYPE_25__** %15, align 8
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @INTERNET_FLAG_ASYNC, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %243

204:                                              ; preds = %193
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %206 = icmp ne %struct.TYPE_24__* %205, null
  br i1 %206, label %207, label %223

207:                                              ; preds = %204
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 1
  store i8* %211, i8** %212, align 8
  %213 = load i32, i32* @ERROR_SUCCESS, align 4
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  store i32 %213, i32* %214, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @INTERNET_STATUS_HANDLE_CREATED, align 4
  %222 = call i32 @INTERNET_SendCallback(%struct.TYPE_20__* %216, i32 %220, i32 %221, %struct.TYPE_27__* %21, i32 16)
  br label %223

223:                                              ; preds = %207, %204
  %224 = load i8*, i8** %13, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %228 = load i32, i32* @TRUE, align 4
  %229 = call i32 @FTP_ReceiveRequestData(%struct.TYPE_24__* %227, i32 %228)
  br label %242

230:                                              ; preds = %223
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 1
  store i8* null, i8** %231, align 8
  %232 = call i32 (...) @INTERNET_GetLastError()
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  store i32 %232, i32* %233, align 8
  %234 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @INTERNET_STATUS_REQUEST_COMPLETE, align 4
  %241 = call i32 @INTERNET_SendCallback(%struct.TYPE_20__* %235, i32 %239, i32 %240, %struct.TYPE_27__* %21, i32 16)
  br label %242

242:                                              ; preds = %230, %226
  br label %243

243:                                              ; preds = %242, %193
  %244 = load i8*, i8** %13, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %243
  %247 = load i8*, i8** @FALSE, align 8
  store i8* %247, i8** %6, align 8
  br label %253

248:                                              ; preds = %243
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  store i8* %252, i8** %6, align 8
  br label %253

253:                                              ; preds = %248, %246
  %254 = load i8*, i8** %6, align 8
  ret i8* %254
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @INTERNET_SetLastError(i32) #1

declare dso_local i8* @FTP_SendRetrieve(%struct.TYPE_23__*, i32*, i64) #1

declare dso_local i8* @FTP_SendStore(%struct.TYPE_23__*, i32*, i64) #1

declare dso_local i64 @FTP_GetDataSocket(%struct.TYPE_23__*, i32*) #1

declare dso_local %struct.TYPE_24__* @alloc_object(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @WININET_AddRef(%struct.TYPE_20__*) #1

declare dso_local i32 @list_add_head(i32*, i32*) #1

declare dso_local i32 @closesocket(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i8* @heap_strdupW(i32*) #1

declare dso_local i64 @InternetCreateUrlW(%struct.TYPE_26__*, i32, i32*, i64*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @heap_alloc(i64) #1

declare dso_local i64 @CreateUrlCacheEntryW(i32*, i32, i32*, i32*, i32) #1

declare dso_local i64 @CreateFileW(i32*, i64, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local i32 @heap_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @INTERNET_SendCallback(%struct.TYPE_20__*, i32, i32, %struct.TYPE_27__*, i32) #1

declare dso_local i32 @FTP_ReceiveRequestData(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @INTERNET_GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
