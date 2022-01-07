; ModuleID = '/home/carl/AnghaBench/vlc/modules/services_discovery/extr_sap.c_ParseConnection.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/services_discovery/extr_sap.c_ParseConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64, i8*, i32 }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Ignoring SDP with no media\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Multiple media ports not supported -> live555\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Layered encoding not supported -> live555\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"missing SDP media subtype: %s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@ParseConnection.proto_match = internal constant [88 x i8] c"udp\00udp\00\00RTP/AVP\00rtp\00\00UDPLite/RTP/AVP\00udplite\00\00DCCP/RTP/AVP\00dccp\00\01TCP/RTP/AVP\00rtptcp\00\01\00\00", align 16
@.str.6 = private unnamed_addr constant [31 x i8] c"unknown SDP media protocol: %s\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"rtcp-mux\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"rtcp\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"setup\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"actpass\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"unsupported COMEDIA mode: %s\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"%s://%s:%d\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"source-filter\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c" incl IN IP%u %*s %255s \00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"%s://%s@%s:%i\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @ParseConnection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseConnection(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [1026 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [258 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca [256 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca %struct.in_addr, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %29, i32* %3, align 4
  br label %340

30:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %92, %30
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %46, %51
  br i1 %52, label %87, label %53

53:                                               ; preds = %38
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %61, %66
  br i1 %67, label %87, label %68

68:                                               ; preds = %53
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @memcmp(i32* %75, i32* %79, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %68, %53, %38
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %88, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %90, i32* %3, align 4
  br label %340

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %31

95:                                               ; preds = %31
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 1
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %103, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %105, i32* %3, align 4
  br label %340

106:                                              ; preds = %95
  %107 = getelementptr inbounds [1026 x i8], [1026 x i8]* %7, i64 0, i64 0
  store i8 91, i8* %107, align 16
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = bitcast i32* %111 to %struct.sockaddr*
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds [1026 x i8], [1026 x i8]* %7, i64 0, i64 0
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i32, i32* @NI_NUMERICHOST, align 4
  %121 = call i64 @vlc_getnameinfo(%struct.sockaddr* %112, i64 %117, i8* %119, i32 1024, i32* %9, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %106
  %124 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %124, i32* %3, align 4
  br label %340

125:                                              ; preds = %106
  %126 = getelementptr inbounds [1026 x i8], [1026 x i8]* %7, i64 0, i64 0
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = call i8* @strchr(i8* %127, i8 signext 58)
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = getelementptr inbounds [1026 x i8], [1026 x i8]* %7, i64 0, i64 0
  store i8* %131, i8** %8, align 8
  %132 = getelementptr inbounds [1026 x i8], [1026 x i8]* %7, i64 0, i64 0
  %133 = call i32 @strcat(i8* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %137

134:                                              ; preds = %125
  %135 = getelementptr inbounds [1026 x i8], [1026 x i8]* %7, i64 0, i64 0
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8* %136, i8** %8, align 8
  br label %137

137:                                              ; preds = %134, %130
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i8* @strdup(i8* %143)
  store i8* %144, i8** %10, align 8
  %145 = load i8*, i8** %10, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %148, i32* %3, align 4
  br label %340

149:                                              ; preds = %137
  %150 = load i8*, i8** %10, align 8
  %151 = call i8* @strchr(i8* %150, i8 signext 32)
  store i8* %151, i8** %11, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load i32*, i32** %4, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %156)
  %158 = load i8*, i8** %10, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %160, i32* %3, align 4
  br label %340

161:                                              ; preds = %149
  %162 = load i8*, i8** %11, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %11, align 8
  store i8 0, i8* %162, align 1
  %164 = load i8*, i8** %10, align 8
  %165 = call i64 @strcasecmp(i8* %164, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  store i32 33, i32* %169, align 8
  br label %176

170:                                              ; preds = %161
  %171 = load i8*, i8** %11, align 8
  %172 = call i8* @atoi(i8* %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  br label %176

176:                                              ; preds = %170, %167
  br label %177

177:                                              ; preds = %176
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @ParseConnection.proto_match, i64 0, i64 0), i8** %14, align 8
  br label %178

178:                                              ; preds = %200, %177
  %179 = load i8*, i8** %14, align 8
  %180 = load i8, i8* %179, align 1
  %181 = icmp ne i8 %180, 0
  br i1 %181, label %182, label %211

182:                                              ; preds = %178
  %183 = load i8*, i8** %14, align 8
  %184 = load i8*, i8** %10, align 8
  %185 = call i64 @strcasecmp(i8* %183, i8* %184)
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %182
  %188 = load i8*, i8** %14, align 8
  %189 = load i8*, i8** %14, align 8
  %190 = call i64 @strlen(i8* %189)
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  store i8* %192, i8** %12, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = call i64 @strlen(i8* %194)
  %196 = add i64 %195, 1
  %197 = getelementptr inbounds i8, i8* %193, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  store i32 %199, i32* %13, align 4
  br label %211

200:                                              ; preds = %182
  %201 = load i8*, i8** %14, align 8
  %202 = call i64 @strlen(i8* %201)
  %203 = add i64 %202, 1
  %204 = load i8*, i8** %14, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 %203
  store i8* %205, i8** %14, align 8
  %206 = load i8*, i8** %14, align 8
  %207 = call i64 @strlen(i8* %206)
  %208 = add i64 %207, 2
  %209 = load i8*, i8** %14, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 %208
  store i8* %210, i8** %14, align 8
  br label %178

211:                                              ; preds = %187, %178
  %212 = load i8*, i8** %10, align 8
  %213 = call i32 @free(i8* %212)
  %214 = load i8*, i8** %12, align 8
  %215 = icmp eq i8* %214, null
  br i1 %215, label %216, label %226

216:                                              ; preds = %211
  %217 = load i32*, i32** %4, align 8
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i64 0
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 2
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %217, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %223)
  %225 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %225, i32* %3, align 4
  br label %340

226:                                              ; preds = %211
  %227 = load i8*, i8** %12, align 8
  %228 = call i64 @strcmp(i8* %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %226
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %232 = call i8* @FindAttribute(%struct.TYPE_6__* %231, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %233 = icmp ne i8* %232, null
  br i1 %233, label %234, label %237

234:                                              ; preds = %230, %226
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 2
  store i32 0, i32* %236, align 4
  br label %264

237:                                              ; preds = %230
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %239 = call i8* @FindAttribute(%struct.TYPE_6__* %238, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store i8* %239, i8** %15, align 8
  %240 = load i8*, i8** %15, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %248

242:                                              ; preds = %237
  %243 = load i8*, i8** %15, align 8
  %244 = call i8* @atoi(i8* %243)
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 4
  br label %263

248:                                              ; preds = %237
  %249 = load i32, i32* %9, align 4
  %250 = and i32 %249, 1
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %248
  %253 = load i32, i32* %9, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %9, align 4
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 2
  store i32 %253, i32* %256, align 4
  br label %262

257:                                              ; preds = %248
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %258, 1
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %257, %252
  br label %263

263:                                              ; preds = %262, %242
  br label %264

264:                                              ; preds = %263, %234
  %265 = load i32, i32* %13, align 4
  %266 = and i32 %265, 1
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %298

268:                                              ; preds = %264
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %270 = call i8* @FindAttribute(%struct.TYPE_6__* %269, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  store i8* %270, i8** %16, align 8
  %271 = load i8*, i8** %16, align 8
  %272 = icmp eq i8* %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %268
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %16, align 8
  br label %274

274:                                              ; preds = %273, %268
  %275 = load i8*, i8** %16, align 8
  %276 = call i64 @strcmp(i8* %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %274
  %279 = load i8*, i8** %16, align 8
  %280 = call i64 @strcmp(i8* %279, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %278
  %283 = load i32*, i32** %4, align 8
  %284 = load i8*, i8** %16, align 8
  %285 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %283, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8* %284)
  %286 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %286, i32* %3, align 4
  br label %340

287:                                              ; preds = %278, %274
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 3
  %290 = load i8*, i8** %12, align 8
  %291 = load i8*, i8** %8, align 8
  %292 = load i32, i32* %9, align 4
  %293 = call i32 (i32*, i8*, i8*, i8*, ...) @asprintf(i32* %289, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %290, i8* %291, i32 %292)
  %294 = icmp eq i32 %293, -1
  br i1 %294, label %295, label %297

295:                                              ; preds = %287
  %296 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %296, i32* %3, align 4
  br label %340

297:                                              ; preds = %287
  br label %338

298:                                              ; preds = %264
  %299 = bitcast [258 x i8]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %299, i8 0, i64 258, i1 false)
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %301 = call i8* @FindAttribute(%struct.TYPE_6__* %300, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  store i8* %301, i8** %18, align 8
  %302 = load i8*, i8** %18, align 8
  %303 = icmp ne i8* %302, null
  br i1 %303, label %304, label %326

304:                                              ; preds = %298
  %305 = load i8*, i8** %18, align 8
  %306 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %307 = call i32 @sscanf(i8* %305, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32* %20, i8* %306)
  %308 = icmp eq i32 %307, 2
  br i1 %308, label %309, label %325

309:                                              ; preds = %304
  %310 = load i32, i32* %20, align 4
  switch i32 %310, label %324 [
    i32 4, label %311
  ]

311:                                              ; preds = %309
  %312 = load i32, i32* @AF_INET, align 4
  %313 = getelementptr inbounds [256 x i8], [256 x i8]* %19, i64 0, i64 0
  %314 = call i32 @inet_pton(i32 %312, i8* %313, %struct.in_addr* %21)
  %315 = icmp sgt i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %311
  %317 = load i32, i32* @AF_INET, align 4
  %318 = getelementptr inbounds [258 x i8], [258 x i8]* %17, i64 0, i64 0
  %319 = call i32* @inet_ntop(i32 %317, %struct.in_addr* %21, i8* %318, i32 258)
  %320 = icmp eq i32* %319, null
  br i1 %320, label %321, label %323

321:                                              ; preds = %316
  %322 = getelementptr inbounds [258 x i8], [258 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %322, align 16
  br label %323

323:                                              ; preds = %321, %316, %311
  br label %324

324:                                              ; preds = %309, %323
  br label %325

325:                                              ; preds = %324, %304
  br label %326

326:                                              ; preds = %325, %298
  %327 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 3
  %329 = load i8*, i8** %12, align 8
  %330 = getelementptr inbounds [258 x i8], [258 x i8]* %17, i64 0, i64 0
  %331 = load i8*, i8** %8, align 8
  %332 = load i32, i32* %9, align 4
  %333 = call i32 (i32*, i8*, i8*, i8*, ...) @asprintf(i32* %328, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* %329, i8* %330, i8* %331, i32 %332)
  %334 = icmp eq i32 %333, -1
  br i1 %334, label %335, label %337

335:                                              ; preds = %326
  %336 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %336, i32* %3, align 4
  br label %340

337:                                              ; preds = %326
  br label %338

338:                                              ; preds = %337, %297
  %339 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %339, i32* %3, align 4
  br label %340

340:                                              ; preds = %338, %335, %295, %282, %216, %154, %147, %123, %102, %87, %26
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i64 @vlc_getnameinfo(%struct.sockaddr*, i64, i8*, i32, i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @FindAttribute(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @asprintf(i32*, i8*, i8*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @inet_pton(i32, i8*, %struct.in_addr*) #1

declare dso_local i32* @inet_ntop(i32, %struct.in_addr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
