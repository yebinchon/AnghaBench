; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_poll.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32, i64, i64, %struct.event*, i32 }
%struct.event = type { i32, i32, i32, i32, %struct.socket* }
%struct.socket = type { i32, i32, i32 }
%struct.socket_message = type { i8* }
%struct.socket_lock = type { i32 }

@MAX_EVENT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@SOCKET_ACCEPT = common dso_local global i32 0, align 4
@SOCKET_ERR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"socket-server: invalid socket\0A\00", align 1
@PROTOCOL_TCP = common dso_local global i32 0, align 4
@SOCKET_UDP = common dso_local global i32 0, align 4
@SOCKET_CLOSE = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @socket_server_poll(%struct.socket_server* %0, %struct.socket_message* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_server*, align 8
  %6 = alloca %struct.socket_message*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.event*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.socket_lock, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %5, align 8
  store %struct.socket_message* %1, %struct.socket_message** %6, align 8
  store i32* %2, i32** %7, align 8
  br label %19

19:                                               ; preds = %249, %100, %83, %40, %3
  %20 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %21 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %26 = call i64 @has_cmd(%struct.socket_server* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %30 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %31 = call i32 @ctrl_cmd(%struct.socket_server* %29, %struct.socket_message* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %36 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @clear_closed_event(%struct.socket_server* %35, %struct.socket_message* %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %250

40:                                               ; preds = %28
  br label %19

41:                                               ; preds = %24
  %42 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %43 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %42, i32 0, i32 0
  store i32 0, i32* %43, align 8
  br label %44

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %19
  %46 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %47 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %50 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %86

53:                                               ; preds = %45
  %54 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %55 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %58 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %57, i32 0, i32 3
  %59 = load %struct.event*, %struct.event** %58, align 8
  %60 = load i32, i32* @MAX_EVENT, align 4
  %61 = call i64 @sp_wait(i32 %56, %struct.event* %59, i32 %60)
  %62 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %63 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  %64 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %65 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load i32*, i32** %7, align 8
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %68, %53
  %71 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %72 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %74 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %79 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @EINTR, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %19

84:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %250

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %45
  %87 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %88 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %87, i32 0, i32 3
  %89 = load %struct.event*, %struct.event** %88, align 8
  %90 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %91 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = getelementptr inbounds %struct.event, %struct.event* %89, i64 %92
  store %struct.event* %94, %struct.event** %9, align 8
  %95 = load %struct.event*, %struct.event** %9, align 8
  %96 = getelementptr inbounds %struct.event, %struct.event* %95, i32 0, i32 4
  %97 = load %struct.socket*, %struct.socket** %96, align 8
  store %struct.socket* %97, %struct.socket** %10, align 8
  %98 = load %struct.socket*, %struct.socket** %10, align 8
  %99 = icmp eq %struct.socket* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %86
  br label %19

101:                                              ; preds = %86
  %102 = load %struct.socket*, %struct.socket** %10, align 8
  %103 = call i32 @socket_lock_init(%struct.socket* %102, %struct.socket_lock* %11)
  %104 = load %struct.socket*, %struct.socket** %10, align 8
  %105 = getelementptr inbounds %struct.socket, %struct.socket* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %130 [
    i32 130, label %107
    i32 128, label %112
    i32 129, label %127
  ]

107:                                              ; preds = %101
  %108 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %109 = load %struct.socket*, %struct.socket** %10, align 8
  %110 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %111 = call i32 @report_connect(%struct.socket_server* %108, %struct.socket* %109, %struct.socket_lock* %11, %struct.socket_message* %110)
  store i32 %111, i32* %4, align 4
  br label %250

112:                                              ; preds = %101
  %113 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %114 = load %struct.socket*, %struct.socket** %10, align 8
  %115 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %116 = call i32 @report_accept(%struct.socket_server* %113, %struct.socket* %114, %struct.socket_message* %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* @SOCKET_ACCEPT, align 4
  store i32 %120, i32* %4, align 4
  br label %250

121:                                              ; preds = %112
  %122 = load i32, i32* %12, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32, i32* @SOCKET_ERR, align 4
  store i32 %125, i32* %4, align 4
  br label %250

126:                                              ; preds = %121
  br label %249

127:                                              ; preds = %101
  %128 = load i32, i32* @stderr, align 4
  %129 = call i32 @fprintf(i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %249

130:                                              ; preds = %101
  %131 = load %struct.event*, %struct.event** %9, align 8
  %132 = getelementptr inbounds %struct.event, %struct.event* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %187

135:                                              ; preds = %130
  %136 = load %struct.socket*, %struct.socket** %10, align 8
  %137 = getelementptr inbounds %struct.socket, %struct.socket* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @PROTOCOL_TCP, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %135
  %142 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %143 = load %struct.socket*, %struct.socket** %10, align 8
  %144 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %145 = call i32 @forward_message_tcp(%struct.socket_server* %142, %struct.socket* %143, %struct.socket_lock* %11, %struct.socket_message* %144)
  store i32 %145, i32* %13, align 4
  br label %161

146:                                              ; preds = %135
  %147 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %148 = load %struct.socket*, %struct.socket** %10, align 8
  %149 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %150 = call i32 @forward_message_udp(%struct.socket_server* %147, %struct.socket* %148, %struct.socket_lock* %11, %struct.socket_message* %149)
  store i32 %150, i32* %13, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @SOCKET_UDP, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %146
  %155 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %156 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, -1
  store i64 %158, i64* %156, align 8
  %159 = load i32, i32* @SOCKET_UDP, align 4
  store i32 %159, i32* %4, align 4
  br label %250

160:                                              ; preds = %146
  br label %161

161:                                              ; preds = %160, %141
  %162 = load %struct.event*, %struct.event** %9, align 8
  %163 = getelementptr inbounds %struct.event, %struct.event* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %181

166:                                              ; preds = %161
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* @SOCKET_CLOSE, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %181

170:                                              ; preds = %166
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* @SOCKET_ERR, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = load %struct.event*, %struct.event** %9, align 8
  %176 = getelementptr inbounds %struct.event, %struct.event* %175, i32 0, i32 0
  store i32 0, i32* %176, align 8
  %177 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %178 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, -1
  store i64 %180, i64* %178, align 8
  br label %181

181:                                              ; preds = %174, %170, %166, %161
  %182 = load i32, i32* %13, align 4
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %249

185:                                              ; preds = %181
  %186 = load i32, i32* %13, align 4
  store i32 %186, i32* %4, align 4
  br label %250

187:                                              ; preds = %130
  %188 = load %struct.event*, %struct.event** %9, align 8
  %189 = getelementptr inbounds %struct.event, %struct.event* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %187
  %193 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %194 = load %struct.socket*, %struct.socket** %10, align 8
  %195 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %196 = call i32 @send_buffer(%struct.socket_server* %193, %struct.socket* %194, %struct.socket_lock* %11, %struct.socket_message* %195)
  store i32 %196, i32* %14, align 4
  %197 = load i32, i32* %14, align 4
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %249

200:                                              ; preds = %192
  %201 = load i32, i32* %14, align 4
  store i32 %201, i32* %4, align 4
  br label %250

202:                                              ; preds = %187
  %203 = load %struct.event*, %struct.event** %9, align 8
  %204 = getelementptr inbounds %struct.event, %struct.event* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %237

207:                                              ; preds = %202
  store i32 4, i32* %16, align 4
  %208 = load %struct.socket*, %struct.socket** %10, align 8
  %209 = getelementptr inbounds %struct.socket, %struct.socket* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @SOL_SOCKET, align 4
  %212 = load i32, i32* @SO_ERROR, align 4
  %213 = call i32 @getsockopt(i32 %210, i32 %211, i32 %212, i32* %15, i32* %16)
  store i32 %213, i32* %17, align 4
  store i8* null, i8** %18, align 8
  %214 = load i32, i32* %17, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %207
  %217 = load i64, i64* @errno, align 8
  %218 = trunc i64 %217 to i32
  %219 = call i8* @strerror(i32 %218)
  store i8* %219, i8** %18, align 8
  br label %228

220:                                              ; preds = %207
  %221 = load i32, i32* %15, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* %15, align 4
  %225 = call i8* @strerror(i32 %224)
  store i8* %225, i8** %18, align 8
  br label %227

226:                                              ; preds = %220
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %18, align 8
  br label %227

227:                                              ; preds = %226, %223
  br label %228

228:                                              ; preds = %227, %216
  %229 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %230 = load %struct.socket*, %struct.socket** %10, align 8
  %231 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %232 = call i32 @force_close(%struct.socket_server* %229, %struct.socket* %230, %struct.socket_lock* %11, %struct.socket_message* %231)
  %233 = load i8*, i8** %18, align 8
  %234 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %235 = getelementptr inbounds %struct.socket_message, %struct.socket_message* %234, i32 0, i32 0
  store i8* %233, i8** %235, align 8
  %236 = load i32, i32* @SOCKET_ERR, align 4
  store i32 %236, i32* %4, align 4
  br label %250

237:                                              ; preds = %202
  %238 = load %struct.event*, %struct.event** %9, align 8
  %239 = getelementptr inbounds %struct.event, %struct.event* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %237
  %243 = load %struct.socket_server*, %struct.socket_server** %5, align 8
  %244 = load %struct.socket*, %struct.socket** %10, align 8
  %245 = load %struct.socket_message*, %struct.socket_message** %6, align 8
  %246 = call i32 @force_close(%struct.socket_server* %243, %struct.socket* %244, %struct.socket_lock* %11, %struct.socket_message* %245)
  %247 = load i32, i32* @SOCKET_CLOSE, align 4
  store i32 %247, i32* %4, align 4
  br label %250

248:                                              ; preds = %237
  br label %249

249:                                              ; preds = %248, %199, %184, %127, %126
  br label %19

250:                                              ; preds = %242, %228, %200, %185, %154, %124, %119, %107, %84, %34
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i64 @has_cmd(%struct.socket_server*) #1

declare dso_local i32 @ctrl_cmd(%struct.socket_server*, %struct.socket_message*) #1

declare dso_local i32 @clear_closed_event(%struct.socket_server*, %struct.socket_message*, i32) #1

declare dso_local i64 @sp_wait(i32, %struct.event*, i32) #1

declare dso_local i32 @socket_lock_init(%struct.socket*, %struct.socket_lock*) #1

declare dso_local i32 @report_connect(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i32 @report_accept(%struct.socket_server*, %struct.socket*, %struct.socket_message*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @forward_message_tcp(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i32 @forward_message_udp(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i32 @send_buffer(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @force_close(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
