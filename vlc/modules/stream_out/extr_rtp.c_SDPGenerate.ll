; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_SDPGenerate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_SDPGenerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i64, %struct.TYPE_13__**, i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_14__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.vlc_memstream = type { i8* }
%struct.sockaddr_storage = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOUT_CFG_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rtcp-mux\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"RTP/AVP\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"TCP/RTP/AVP\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"DCCP/RTP/AVP\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"rtcp\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"dccp-service-code\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"SC:RTP%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @SDPGenerate(%struct.TYPE_11__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.vlc_memstream, align 8
  %8 = alloca %struct.sockaddr_storage, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %6, align 8
  store i8* null, i8** %9, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = call i32 @vlc_mutex_lock(i32* %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %35, i64 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br label %42

42:                                               ; preds = %32, %29
  %43 = phi i1 [ false, %29 ], [ %41, %32 ]
  br label %44

44:                                               ; preds = %42, %2
  %45 = phi i1 [ true, %2 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %277

50:                                               ; preds = %44
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %92

55:                                               ; preds = %50
  store i32 1, i32* %12, align 4
  store i32 8, i32* %10, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %58, i64 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %55
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %68, i64 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %77 = call i32 @getsockname(i32 %75, %struct.sockaddr* %76, i32* %10)
  br label %91

78:                                               ; preds = %55
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %81, i64 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %90 = call i32 @getpeername(i32 %88, %struct.sockaddr* %89, i32* %10)
  br label %91

91:                                               ; preds = %78, %65
  br label %124

92:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %92
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = icmp sgt i32 %97, 7
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 7
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 91
  br label %105

105:                                              ; preds = %99, %95, %92
  %106 = phi i1 [ false, %95 ], [ false, %92 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i64 4, i64 4
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @memset(%struct.sockaddr_storage* %8, i32 0, i32 %113)
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %105
  %118 = load i32, i32* @AF_INET6, align 4
  br label %121

119:                                              ; preds = %105
  %120 = load i32, i32* @AF_INET, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %8, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %91
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %126 = call i32 @VLC_OBJECT(%struct.TYPE_11__* %125)
  %127 = load i32, i32* @SOUT_CFG_PREFIX, align 4
  %128 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %129 = load i32, i32* %10, align 4
  %130 = call i64 @vlc_sdp_Start(%struct.vlc_memstream* %7, i32 %126, i32 %127, i32* null, i32 0, %struct.sockaddr* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %277

133:                                              ; preds = %124
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @sdp_AddAttribute(%struct.vlc_memstream* %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* null)
  br label %140

140:                                              ; preds = %138, %133
  %141 = load i8*, i8** %5, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @sdp_AddAttribute(%struct.vlc_memstream* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %143, %140
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %158 [
    i32 131, label %153
    i32 132, label %154
    i32 133, label %155
    i32 130, label %156
  ]

153:                                              ; preds = %149
  br label %158

154:                                              ; preds = %149
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %14, align 8
  br label %158

155:                                              ; preds = %149
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %158

156:                                              ; preds = %149
  %157 = load i8*, i8** %9, align 8
  store i8* %157, i8** %3, align 8
  br label %282

158:                                              ; preds = %149, %155, %154, %153
  br label %159

159:                                              ; preds = %158, %146
  store i32 0, i32* %11, align 4
  br label %160

160:                                              ; preds = %267, %159
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %270

166:                                              ; preds = %160
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %169, i64 %171
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  store %struct.TYPE_13__* %173, %struct.TYPE_13__** %15, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 3
  store %struct.TYPE_14__* %175, %struct.TYPE_14__** %16, align 8
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  switch i32 %178, label %182 [
    i32 128, label %179
    i32 134, label %180
    i32 129, label %181
  ]

179:                                              ; preds = %166
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %183

180:                                              ; preds = %166
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %17, align 8
  br label %183

181:                                              ; preds = %166
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %17, align 8
  br label %183

182:                                              ; preds = %166
  br label %267

183:                                              ; preds = %181, %180, %179
  %184 = load i8*, i8** %17, align 8
  %185 = load i8*, i8** %14, align 8
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = mul nsw i32 %186, %189
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @sdp_AddMedia(%struct.vlc_memstream* %7, i8* %184, i8* %185, i32 %190, i32 %193, i32 0, i32 %196, i32 %199, i32 %202, i32 %205, i32 %208)
  %210 = load i32, i32* %12, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %229

212:                                              ; preds = %183
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %229, label %217

217:                                              ; preds = %212
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = and i32 %220, 1
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %217
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  %228 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @sdp_AddAttribute(%struct.vlc_memstream* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %223, %217, %212, %183
  %230 = load i8*, i8** %5, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %246

232:                                              ; preds = %229
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i8*, i8** %5, align 8
  %237 = call i8* @RtspAppendTrackPath(i32 %235, i8* %236)
  store i8* %237, i8** %18, align 8
  %238 = load i8*, i8** %18, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %245

240:                                              ; preds = %232
  %241 = load i8*, i8** %18, align 8
  %242 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @sdp_AddAttribute(%struct.vlc_memstream* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %241)
  %243 = load i8*, i8** %18, align 8
  %244 = call i32 @free(i8* %243)
  br label %245

245:                                              ; preds = %240, %232
  br label %266

246:                                              ; preds = %229
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @sdp_AddAttribute(%struct.vlc_memstream* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %254

254:                                              ; preds = %252, %246
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 133
  br i1 %258, label %259, label %265

259:                                              ; preds = %254
  %260 = load i8*, i8** %17, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 0
  %262 = load i8, i8* %261, align 1
  %263 = call i8* @toupper(i8 zeroext %262)
  %264 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @sdp_AddAttribute(%struct.vlc_memstream* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* %263)
  br label %265

265:                                              ; preds = %259, %254
  br label %266

266:                                              ; preds = %265, %245
  br label %267

267:                                              ; preds = %266, %182
  %268 = load i32, i32* %11, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %11, align 4
  br label %160

270:                                              ; preds = %160
  %271 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %7)
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %7, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  store i8* %275, i8** %9, align 8
  br label %276

276:                                              ; preds = %273, %270
  br label %277

277:                                              ; preds = %276, %132, %49
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 2
  %280 = call i32 @vlc_mutex_unlock(i32* %279)
  %281 = load i8*, i8** %9, align 8
  store i8* %281, i8** %3, align 8
  br label %282

282:                                              ; preds = %277, %156
  %283 = load i8*, i8** %3, align 8
  ret i8* %283
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @getpeername(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @vlc_sdp_Start(%struct.vlc_memstream*, i32, i32, i32*, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_11__*) #1

declare dso_local i32 @sdp_AddAttribute(%struct.vlc_memstream*, i8*, i8*, ...) #1

declare dso_local i32 @sdp_AddMedia(%struct.vlc_memstream*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @RtspAppendTrackPath(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @toupper(i8 zeroext) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
