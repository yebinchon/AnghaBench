; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_socket.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_send_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32, %struct.socket* }
%struct.socket = type { i64, i32, i64, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.request_send = type { i32, i64, i32 }
%struct.socket_message = type { i32, i32, i32*, i32 }
%struct.send_object = type { i32, i32 (i8*)*, i32 }
%union.sockaddr_all = type { i32 }

@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8
@SOCKET_TYPE_HALFCLOSE = common dso_local global i64 0, align 8
@SOCKET_TYPE_PACCEPT = common dso_local global i64 0, align 8
@SOCKET_TYPE_PLISTEN = common dso_local global i64 0, align 8
@SOCKET_TYPE_LISTEN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"socket-server: write to listen fd %d.\0A\00", align 1
@SOCKET_TYPE_CONNECTED = common dso_local global i64 0, align 8
@PROTOCOL_TCP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"socket-server: udp socket (%d) type mistach.\0A\00", align 1
@PRIORITY_LOW = common dso_local global i32 0, align 4
@WARNING_SIZE = common dso_local global i32 0, align 4
@SOCKET_WARNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*, %struct.request_send*, %struct.socket_message*, i32, i32*)* @send_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_socket(%struct.socket_server* %0, %struct.request_send* %1, %struct.socket_message* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket_server*, align 8
  %8 = alloca %struct.request_send*, align 8
  %9 = alloca %struct.socket_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.socket*, align 8
  %14 = alloca %struct.send_object, align 8
  %15 = alloca %union.sockaddr_all, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.socket_server* %0, %struct.socket_server** %7, align 8
  store %struct.request_send* %1, %struct.request_send** %8, align 8
  store %struct.socket_message* %2, %struct.socket_message** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.request_send*, %struct.request_send** %8, align 8
  %19 = getelementptr inbounds %struct.request_send, %struct.request_send* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  %21 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %22 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %21, i32 0, i32 1
  %23 = load %struct.socket*, %struct.socket** %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @HASH_ID(i32 %24)
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %23, i64 %25
  store %struct.socket* %26, %struct.socket** %13, align 8
  %27 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %28 = load %struct.request_send*, %struct.request_send** %8, align 8
  %29 = getelementptr inbounds %struct.request_send, %struct.request_send* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.request_send*, %struct.request_send** %8, align 8
  %32 = getelementptr inbounds %struct.request_send, %struct.request_send* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @send_object_init(%struct.socket_server* %27, %struct.send_object* %14, i64 %30, i32 %33)
  %35 = load %struct.socket*, %struct.socket** %13, align 8
  %36 = getelementptr inbounds %struct.socket, %struct.socket* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %58, label %40

40:                                               ; preds = %5
  %41 = load %struct.socket*, %struct.socket** %13, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %58, label %46

46:                                               ; preds = %40
  %47 = load %struct.socket*, %struct.socket** %13, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SOCKET_TYPE_HALFCLOSE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.socket*, %struct.socket** %13, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SOCKET_TYPE_PACCEPT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52, %46, %40, %5
  %59 = getelementptr inbounds %struct.send_object, %struct.send_object* %14, i32 0, i32 1
  %60 = load i32 (i8*)*, i32 (i8*)** %59, align 8
  %61 = load %struct.request_send*, %struct.request_send** %8, align 8
  %62 = getelementptr inbounds %struct.request_send, %struct.request_send* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 %60(i8* %64)
  store i32 -1, i32* %6, align 4
  br label %281

66:                                               ; preds = %52
  %67 = load %struct.socket*, %struct.socket** %13, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SOCKET_TYPE_PLISTEN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.socket*, %struct.socket** %13, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SOCKET_TYPE_LISTEN, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72, %66
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = getelementptr inbounds %struct.send_object, %struct.send_object* %14, i32 0, i32 1
  %83 = load i32 (i8*)*, i32 (i8*)** %82, align 8
  %84 = load %struct.request_send*, %struct.request_send** %8, align 8
  %85 = getelementptr inbounds %struct.request_send, %struct.request_send* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 %83(i8* %87)
  store i32 -1, i32* %6, align 4
  br label %281

89:                                               ; preds = %72
  %90 = load %struct.socket*, %struct.socket** %13, align 8
  %91 = call i64 @send_buffer_empty(%struct.socket* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %179

93:                                               ; preds = %89
  %94 = load %struct.socket*, %struct.socket** %13, align 8
  %95 = getelementptr inbounds %struct.socket, %struct.socket* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SOCKET_TYPE_CONNECTED, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %179

99:                                               ; preds = %93
  %100 = load %struct.socket*, %struct.socket** %13, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PROTOCOL_TCP, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %107 = load %struct.socket*, %struct.socket** %13, align 8
  %108 = load %struct.request_send*, %struct.request_send** %8, align 8
  %109 = call i32 @append_sendbuffer(%struct.socket_server* %106, %struct.socket* %107, %struct.request_send* %108)
  br label %170

110:                                              ; preds = %99
  %111 = load i32*, i32** %11, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load %struct.socket*, %struct.socket** %13, align 8
  %115 = getelementptr inbounds %struct.socket, %struct.socket* %114, i32 0, i32 6
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %11, align 8
  br label %118

118:                                              ; preds = %113, %110
  %119 = load %struct.socket*, %struct.socket** %13, align 8
  %120 = load i32*, i32** %11, align 8
  %121 = call i64 @udp_socket_address(%struct.socket* %119, i32* %120, %union.sockaddr_all* %15)
  store i64 %121, i64* %16, align 8
  %122 = load i64, i64* %16, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %118
  %125 = load i32, i32* @stderr, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 @fprintf(i32 %125, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = getelementptr inbounds %struct.send_object, %struct.send_object* %14, i32 0, i32 1
  %129 = load i32 (i8*)*, i32 (i8*)** %128, align 8
  %130 = load %struct.request_send*, %struct.request_send** %8, align 8
  %131 = getelementptr inbounds %struct.request_send, %struct.request_send* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = call i32 %129(i8* %133)
  store i32 -1, i32* %6, align 4
  br label %281

135:                                              ; preds = %118
  %136 = load %struct.socket*, %struct.socket** %13, align 8
  %137 = getelementptr inbounds %struct.socket, %struct.socket* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.send_object, %struct.send_object* %14, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds %struct.send_object, %struct.send_object* %14, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = bitcast %union.sockaddr_all* %15 to i32*
  %144 = load i64, i64* %16, align 8
  %145 = call i32 @sendto(i32 %138, i32 %140, i32 %142, i32 0, i32* %143, i64 %144)
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = getelementptr inbounds %struct.send_object, %struct.send_object* %14, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %135
  %151 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %152 = load %struct.socket*, %struct.socket** %13, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.request_send*, %struct.request_send** %8, align 8
  %155 = load i32*, i32** %11, align 8
  %156 = call i32 @append_sendbuffer_udp(%struct.socket_server* %151, %struct.socket* %152, i32 %153, %struct.request_send* %154, i32* %155)
  br label %169

157:                                              ; preds = %135
  %158 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %159 = load %struct.socket*, %struct.socket** %13, align 8
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @stat_write(%struct.socket_server* %158, %struct.socket* %159, i32 %160)
  %162 = getelementptr inbounds %struct.send_object, %struct.send_object* %14, i32 0, i32 1
  %163 = load i32 (i8*)*, i32 (i8*)** %162, align 8
  %164 = load %struct.request_send*, %struct.request_send** %8, align 8
  %165 = getelementptr inbounds %struct.request_send, %struct.request_send* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i8*
  %168 = call i32 %163(i8* %167)
  store i32 -1, i32* %6, align 4
  br label %281

169:                                              ; preds = %150
  br label %170

170:                                              ; preds = %169, %105
  %171 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %172 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.socket*, %struct.socket** %13, align 8
  %175 = getelementptr inbounds %struct.socket, %struct.socket* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.socket*, %struct.socket** %13, align 8
  %178 = call i32 @sp_write(i32 %173, i32 %176, %struct.socket* %177, i32 1)
  br label %216

179:                                              ; preds = %93, %89
  %180 = load %struct.socket*, %struct.socket** %13, align 8
  %181 = getelementptr inbounds %struct.socket, %struct.socket* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @PROTOCOL_TCP, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %200

185:                                              ; preds = %179
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @PRIORITY_LOW, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %191 = load %struct.socket*, %struct.socket** %13, align 8
  %192 = load %struct.request_send*, %struct.request_send** %8, align 8
  %193 = call i32 @append_sendbuffer_low(%struct.socket_server* %190, %struct.socket* %191, %struct.request_send* %192)
  br label %199

194:                                              ; preds = %185
  %195 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %196 = load %struct.socket*, %struct.socket** %13, align 8
  %197 = load %struct.request_send*, %struct.request_send** %8, align 8
  %198 = call i32 @append_sendbuffer(%struct.socket_server* %195, %struct.socket* %196, %struct.request_send* %197)
  br label %199

199:                                              ; preds = %194, %189
  br label %215

200:                                              ; preds = %179
  %201 = load i32*, i32** %11, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load %struct.socket*, %struct.socket** %13, align 8
  %205 = getelementptr inbounds %struct.socket, %struct.socket* %204, i32 0, i32 6
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  store i32* %207, i32** %11, align 8
  br label %208

208:                                              ; preds = %203, %200
  %209 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %210 = load %struct.socket*, %struct.socket** %13, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.request_send*, %struct.request_send** %8, align 8
  %213 = load i32*, i32** %11, align 8
  %214 = call i32 @append_sendbuffer_udp(%struct.socket_server* %209, %struct.socket* %210, i32 %211, %struct.request_send* %212, i32* %213)
  br label %215

215:                                              ; preds = %208, %199
  br label %216

216:                                              ; preds = %215, %170
  %217 = load %struct.socket*, %struct.socket** %13, align 8
  %218 = getelementptr inbounds %struct.socket, %struct.socket* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @WARNING_SIZE, align 4
  %221 = icmp sge i32 %219, %220
  br i1 %221, label %222, label %280

222:                                              ; preds = %216
  %223 = load %struct.socket*, %struct.socket** %13, align 8
  %224 = getelementptr inbounds %struct.socket, %struct.socket* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.socket*, %struct.socket** %13, align 8
  %227 = getelementptr inbounds %struct.socket, %struct.socket* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = icmp sge i32 %225, %228
  br i1 %229, label %230, label %280

230:                                              ; preds = %222
  %231 = load %struct.socket*, %struct.socket** %13, align 8
  %232 = getelementptr inbounds %struct.socket, %struct.socket* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32, i32* @WARNING_SIZE, align 4
  %237 = mul nsw i32 %236, 2
  br label %243

238:                                              ; preds = %230
  %239 = load %struct.socket*, %struct.socket** %13, align 8
  %240 = getelementptr inbounds %struct.socket, %struct.socket* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 4
  %242 = mul nsw i32 %241, 2
  br label %243

243:                                              ; preds = %238, %235
  %244 = phi i32 [ %237, %235 ], [ %242, %238 ]
  %245 = load %struct.socket*, %struct.socket** %13, align 8
  %246 = getelementptr inbounds %struct.socket, %struct.socket* %245, i32 0, i32 4
  store i32 %244, i32* %246, align 4
  %247 = load %struct.socket*, %struct.socket** %13, align 8
  %248 = getelementptr inbounds %struct.socket, %struct.socket* %247, i32 0, i32 5
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %251 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 8
  %252 = load %struct.socket*, %struct.socket** %13, align 8
  %253 = getelementptr inbounds %struct.socket, %struct.socket* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %256 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = load %struct.socket*, %struct.socket** %13, align 8
  %258 = getelementptr inbounds %struct.socket, %struct.socket* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = srem i32 %259, 1024
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %243
  %263 = load %struct.socket*, %struct.socket** %13, align 8
  %264 = getelementptr inbounds %struct.socket, %struct.socket* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = sdiv i32 %265, 1024
  br label %273

267:                                              ; preds = %243
  %268 = load %struct.socket*, %struct.socket** %13, align 8
  %269 = getelementptr inbounds %struct.socket, %struct.socket* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = sdiv i32 %270, 1024
  %272 = add nsw i32 %271, 1
  br label %273

273:                                              ; preds = %267, %262
  %274 = phi i32 [ %266, %262 ], [ %272, %267 ]
  %275 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %276 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 4
  %277 = load %struct.socket_message*, %struct.socket_message** %9, align 8
  %278 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %277, i32 0, i32 2
  store i32* null, i32** %278, align 8
  %279 = load i32, i32* @SOCKET_WARNING, align 4
  store i32 %279, i32* %6, align 4
  br label %281

280:                                              ; preds = %222, %216
  store i32 -1, i32* %6, align 4
  br label %281

281:                                              ; preds = %280, %273, %157, %124, %78, %58
  %282 = load i32, i32* %6, align 4
  ret i32 %282
}

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @send_object_init(%struct.socket_server*, %struct.send_object*, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i64 @send_buffer_empty(%struct.socket*) #1

declare dso_local i32 @append_sendbuffer(%struct.socket_server*, %struct.socket*, %struct.request_send*) #1

declare dso_local i64 @udp_socket_address(%struct.socket*, i32*, %union.sockaddr_all*) #1

declare dso_local i32 @sendto(i32, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @append_sendbuffer_udp(%struct.socket_server*, %struct.socket*, i32, %struct.request_send*, i32*) #1

declare dso_local i32 @stat_write(%struct.socket_server*, %struct.socket*, i32) #1

declare dso_local i32 @sp_write(i32, i32, %struct.socket*, i32) #1

declare dso_local i32 @append_sendbuffer_low(%struct.socket_server*, %struct.socket*, %struct.request_send*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
