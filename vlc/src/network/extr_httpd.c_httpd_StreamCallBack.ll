; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_StreamCallBack.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_httpd.c_httpd_StreamCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i64, %struct.TYPE_11__*, i8*, i64, i8* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i32, i32, i64, i32*, %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@HTTPD_CL_BUFSIZE = common dso_local global i64 0, align 8
@HTTPD_PROTO_HTTP = common dso_local global i8* null, align 8
@HTTPD_MSG_ANSWER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Cache-Control\00", align 1
@HTTPD_MSG_HEAD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"video/x-ms-asf-stream\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Content-type\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Cougar 4.1.0.3921\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Pragma\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"no-cache\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"client-id=%lu\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"features=\22broadcast\22\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"xPlayStrm=1\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_13__*)* @httpd_StreamCallBack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @httpd_StreamCallBack(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_13__* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = bitcast i32* %18 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %10, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = icmp ne %struct.TYPE_13__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %24 = icmp ne %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %22, %4
  %29 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %29, i32* %5, align 4
  br label %379

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %156

35:                                               ; preds = %30
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %5, align 4
  br label %379

45:                                               ; preds = %35
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sle i64 %53, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %59, i32* %5, align 4
  br label %379

60:                                               ; preds = %50
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  store i64 -1, i64* %67, align 8
  br label %68

68:                                               ; preds = %60, %45
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %71, %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp slt i64 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %68
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %80, %68
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = srem i64 %89, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %97, %100
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* @HTTPD_CL_BUFSIZE, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %86
  %106 = load i64, i64* @HTTPD_CL_BUFSIZE, align 8
  store i64 %106, i64* %12, align 8
  br label %113

107:                                              ; preds = %86
  %108 = load i64, i64* %12, align 8
  %109 = icmp sle i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %111, i32* %5, align 4
  br label %379

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %105
  %114 = load i64, i64* %12, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %117, %119
  %121 = trunc i64 %120 to i32
  %122 = call i64 @__MIN(i64 %114, i32 %121)
  store i64 %122, i64* %12, align 8
  %123 = load i8*, i8** @HTTPD_PROTO_HTTP, align 8
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 8
  store i8* %123, i8** %125, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 7
  store i64 0, i64* %127, align 8
  %128 = load i8*, i8** @HTTPD_MSG_ANSWER, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %12, align 8
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  store i64 %132, i64* %134, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i8* @xmalloc(i64 %135)
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 6
  store i8* %136, i8** %138, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 6
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 11
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @memcpy(i8* %141, i32* %147, i64 %148)
  %150 = load i64, i64* %12, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, %150
  store i64 %154, i64* %152, align 8
  %155 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %155, i32* %5, align 4
  br label %379

156:                                              ; preds = %30
  %157 = load i8*, i8** @HTTPD_PROTO_HTTP, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 8
  store i8* %157, i8** %159, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 7
  store i64 0, i64* %161, align 8
  %162 = load i8*, i8** @HTTPD_MSG_ANSWER, align 8
  %163 = ptrtoint i8* %162 to i64
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  store i64 %163, i64* %165, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 3
  store i32 200, i32* %167, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 7
  %170 = call i32 @vlc_mutex_lock(i32* %169)
  store i64 0, i64* %15, align 8
  br label %171

171:                                              ; preds = %230, %156
  %172 = load i64, i64* %15, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ult i64 %172, %175
  br i1 %176, label %177, label %233

177:                                              ; preds = %171
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 10
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %179, align 8
  %181 = load i64, i64* %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @strncasecmp(i32 %184, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 14)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %229

187:                                              ; preds = %177
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 10
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = load i64, i64* %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = inttoptr i64 %196 to i8*
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 10
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %199, align 8
  %201 = load i64, i64* %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (%struct.TYPE_13__*, i8*, i8*, ...) @httpd_MsgAdd(%struct.TYPE_13__* %188, i8* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %204)
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 10
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = load i64, i64* %15, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @strncasecmp(i32 %212, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 12)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %187
  store i32 1, i32* %13, align 4
  br label %228

216:                                              ; preds = %187
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 10
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = load i64, i64* %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i64 @strncasecmp(i32 %223, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 13)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %216
  store i32 1, i32* %14, align 4
  br label %227

227:                                              ; preds = %226, %216
  br label %228

228:                                              ; preds = %227, %215
  br label %229

229:                                              ; preds = %228, %177
  br label %230

230:                                              ; preds = %229
  %231 = load i64, i64* %15, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %15, align 8
  br label %171

233:                                              ; preds = %171
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 7
  %236 = call i32 @vlc_mutex_unlock(i32* %235)
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @HTTPD_MSG_HEAD, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %297

242:                                              ; preds = %233
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 1
  store i32 1, i32* %244, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 7
  %247 = call i32 @vlc_mutex_lock(i32* %246)
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 5
  %250 = load i64, i64* %249, align 8
  %251 = icmp sgt i64 %250, 0
  br i1 %251, label %252, label %274

252:                                              ; preds = %242
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 5
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 2
  store i64 %255, i64* %257, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 5
  %260 = load i64, i64* %259, align 8
  %261 = call i8* @xmalloc(i64 %260)
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 6
  store i8* %261, i8** %263, align 8
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 6
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 9
  %269 = load i32*, i32** %268, align 8
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 5
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @memcpy(i8* %266, i32* %269, i64 %272)
  br label %274

274:                                              ; preds = %252, %242
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 0
  store i64 %277, i64* %279, align 8
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 8
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %274
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  store i64 %287, i64* %289, align 8
  br label %293

290:                                              ; preds = %274
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  store i64 -1, i64* %292, align 8
  br label %293

293:                                              ; preds = %290, %284
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 7
  %296 = call i32 @vlc_mutex_unlock(i32* %295)
  br label %302

297:                                              ; preds = %233
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %299 = call i32 (%struct.TYPE_13__*, i8*, i8*, ...) @httpd_MsgAdd(%struct.TYPE_13__* %298, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %300, i32 0, i32 0
  store i64 0, i64* %301, align 8
  br label %302

302:                                              ; preds = %297, %293
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @strcmp(i32 %305, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %359, label %308

308:                                              ; preds = %302
  store i32 0, i32* %16, align 4
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %310 = call i32 (%struct.TYPE_13__*, i8*, i8*, ...) @httpd_MsgAdd(%struct.TYPE_13__* %309, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %312 = call i32 (%struct.TYPE_13__*, i8*, i8*, ...) @httpd_MsgAdd(%struct.TYPE_13__* %311, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %314 = call i32 (%struct.TYPE_13__*, i8*, i8*, ...) @httpd_MsgAdd(%struct.TYPE_13__* %313, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %316 = call i32 (...) @vlc_mrand48()
  %317 = and i32 %316, 32767
  %318 = call i32 (%struct.TYPE_13__*, i8*, i8*, ...) @httpd_MsgAdd(%struct.TYPE_13__* %315, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %317)
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %320 = call i32 (%struct.TYPE_13__*, i8*, i8*, ...) @httpd_MsgAdd(%struct.TYPE_13__* %319, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  store i64 0, i64* %17, align 8
  br label %321

321:                                              ; preds = %349, %308
  %322 = load i64, i64* %17, align 8
  %323 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 4
  %325 = load i64, i64* %324, align 8
  %326 = icmp ult i64 %322, %325
  br i1 %326, label %327, label %352

327:                                              ; preds = %321
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 5
  %330 = load %struct.TYPE_11__*, %struct.TYPE_11__** %329, align 8
  %331 = load i64, i64* %17, align 8
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @strcasecmp(i32 %334, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %348, label %337

337:                                              ; preds = %327
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 5
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %339, align 8
  %341 = load i64, i64* %17, align 8
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i64 @strstr(i32 %344, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %337
  store i32 1, i32* %16, align 4
  br label %348

348:                                              ; preds = %347, %337, %327
  br label %349

349:                                              ; preds = %348
  %350 = load i64, i64* %17, align 8
  %351 = add i64 %350, 1
  store i64 %351, i64* %17, align 8
  br label %321

352:                                              ; preds = %321
  %353 = load i32, i32* %16, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %352
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i32 0, i32 0
  store i64 0, i64* %357, align 8
  br label %358

358:                                              ; preds = %355, %352
  br label %369

359:                                              ; preds = %302
  %360 = load i32, i32* %13, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %368, label %362

362:                                              ; preds = %359
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 6
  %366 = load i32, i32* %365, align 8
  %367 = call i32 (%struct.TYPE_13__*, i8*, i8*, ...) @httpd_MsgAdd(%struct.TYPE_13__* %363, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %366)
  br label %368

368:                                              ; preds = %362, %359
  br label %369

369:                                              ; preds = %368, %358
  %370 = load i32, i32* %14, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %369
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %374 = call i32 (%struct.TYPE_13__*, i8*, i8*, ...) @httpd_MsgAdd(%struct.TYPE_13__* %373, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %375

375:                                              ; preds = %372, %369
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %377 = call i32 (%struct.TYPE_13__*, i8*, i8*, ...) @httpd_MsgAdd(%struct.TYPE_13__* %376, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %378 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %378, i32* %5, align 4
  br label %379

379:                                              ; preds = %375, %113, %110, %58, %43, %28
  %380 = load i32, i32* %5, align 4
  ret i32 %380
}

declare dso_local i64 @__MIN(i64, i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @strncasecmp(i32, i8*, i32) #1

declare dso_local i32 @httpd_MsgAdd(%struct.TYPE_13__*, i8*, i8*, ...) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @vlc_mrand48(...) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i64 @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
