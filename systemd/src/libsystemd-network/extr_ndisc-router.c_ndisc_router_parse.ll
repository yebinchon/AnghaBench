; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_ndisc-router.c_ndisc_router_parse.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd-network/extr_ndisc-router.c_ndisc_router_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nd_router_advert = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Too small to be a router advertisement, ignoring.\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@ND_ROUTER_ADVERT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [65 x i8] c"Received ND packet that is not a router advertisement, ignoring.\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Received ND packet with wrong RA code, ignoring.\00", align 1
@SD_NDISC_PREFERENCE_LOW = common dso_local global i32 0, align 4
@SD_NDISC_PREFERENCE_HIGH = common dso_local global i32 0, align 4
@SD_NDISC_PREFERENCE_MEDIUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Option lacks header, ignoring datagram.\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Zero-length option, ignoring datagram.\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Option truncated, ignoring datagram.\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Prefix option of invalid size, ignoring datagram.\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Bad prefix length, ignoring datagram.\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"MTU option specified twice, ignoring.\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"MTU option of invalid size, ignoring datagram.\00", align 1
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [61 x i8] c"Route information option of invalid size, ignoring datagram.\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Bad route prefix length, ignoring datagram.\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"RDNSS option has invalid size.\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Flags extension option specified twice, ignoring.\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"Flags extension option has invalid size.\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"DNSSL option has invalid size.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ndisc_router_parse(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.nd_router_advert*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = call i32 @assert(%struct.TYPE_5__* %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 32
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = call i32 @log_ndisc(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EBADMSG, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %263

23:                                               ; preds = %1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = call %struct.nd_router_advert* @NDISC_ROUTER_RAW(%struct.TYPE_5__* %24)
  store %struct.nd_router_advert* %25, %struct.nd_router_advert** %4, align 8
  %26 = load %struct.nd_router_advert*, %struct.nd_router_advert** %4, align 8
  %27 = getelementptr inbounds %struct.nd_router_advert, %struct.nd_router_advert* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ND_ROUTER_ADVERT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = call i32 @log_ndisc(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EBADMSG, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %263

35:                                               ; preds = %23
  %36 = load %struct.nd_router_advert*, %struct.nd_router_advert** %4, align 8
  %37 = getelementptr inbounds %struct.nd_router_advert, %struct.nd_router_advert* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = call i32 @log_ndisc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* @EBADMSG, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %263

44:                                               ; preds = %35
  %45 = load %struct.nd_router_advert*, %struct.nd_router_advert** %4, align 8
  %46 = getelementptr inbounds %struct.nd_router_advert, %struct.nd_router_advert* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nd_router_advert*, %struct.nd_router_advert** %4, align 8
  %51 = getelementptr inbounds %struct.nd_router_advert, %struct.nd_router_advert* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.nd_router_advert*, %struct.nd_router_advert** %4, align 8
  %56 = getelementptr inbounds %struct.nd_router_advert, %struct.nd_router_advert* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @be16toh(i32 %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 3
  %65 = and i32 %64, 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SD_NDISC_PREFERENCE_LOW, align 4
  %72 = load i32, i32* @SD_NDISC_PREFERENCE_HIGH, align 4
  %73 = call i32 @IN_SET(i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %44
  %76 = load i32, i32* @SD_NDISC_PREFERENCE_MEDIUM, align 4
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %44
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = call %struct.nd_router_advert* @NDISC_ROUTER_RAW(%struct.TYPE_5__* %80)
  %82 = bitcast %struct.nd_router_advert* %81 to i32*
  %83 = getelementptr inbounds i32, i32* %82, i64 32
  store i32* %83, i32** %5, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = sub i64 %87, 32
  store i64 %88, i64* %8, align 8
  br label %89

89:                                               ; preds = %253, %79
  %90 = load i64, i64* %8, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %260

93:                                               ; preds = %89
  %94 = load i64, i64* %8, align 8
  %95 = icmp ult i64 %94, 2
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = call i32 @log_ndisc(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @EBADMSG, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %263

100:                                              ; preds = %93
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %9, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, 8
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %10, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %100
  %112 = call i32 @log_ndisc(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i32, i32* @EBADMSG, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %263

115:                                              ; preds = %100
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %10, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = call i32 @log_ndisc(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* @EBADMSG, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %263

123:                                              ; preds = %115
  %124 = load i32, i32* %9, align 4
  switch i32 %124, label %253 [
    i32 130, label %125
    i32 131, label %142
    i32 128, label %167
    i32 129, label %187
    i32 132, label %199
    i32 133, label %245
  ]

125:                                              ; preds = %123
  %126 = load i64, i64* %10, align 8
  %127 = icmp ne i64 %126, 32
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = call i32 @log_ndisc(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i32, i32* @EBADMSG, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %263

132:                                              ; preds = %125
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp sgt i32 %135, 128
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = call i32 @log_ndisc(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %139 = load i32, i32* @EBADMSG, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %263

141:                                              ; preds = %132
  br label %253

142:                                              ; preds = %123
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = call i32 @log_ndisc(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %253

147:                                              ; preds = %142
  %148 = load i64, i64* %10, align 8
  %149 = icmp ne i64 %148, 8
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = call i32 @log_ndisc(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  %152 = load i32, i32* @EBADMSG, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %263

154:                                              ; preds = %147
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 4
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @be32toh(i32 %157)
  store i32 %158, i32* %11, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @IPV6_MIN_MTU, align 4
  %161 = icmp sge i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %154
  %163 = load i32, i32* %11, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %162, %154
  store i32 1, i32* %6, align 4
  br label %253

167:                                              ; preds = %123
  %168 = load i64, i64* %10, align 8
  %169 = icmp ult i64 %168, 8
  br i1 %169, label %173, label %170

170:                                              ; preds = %167
  %171 = load i64, i64* %10, align 8
  %172 = icmp ugt i64 %171, 24
  br i1 %172, label %173, label %177

173:                                              ; preds = %170, %167
  %174 = call i32 @log_ndisc(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0))
  %175 = load i32, i32* @EBADMSG, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %2, align 4
  br label %263

177:                                              ; preds = %170
  %178 = load i32*, i32** %5, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp sgt i32 %180, 128
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = call i32 @log_ndisc(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  %184 = load i32, i32* @EBADMSG, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %2, align 4
  br label %263

186:                                              ; preds = %177
  br label %253

187:                                              ; preds = %123
  %188 = load i64, i64* %10, align 8
  %189 = icmp ult i64 %188, 24
  br i1 %189, label %194, label %190

190:                                              ; preds = %187
  %191 = load i64, i64* %10, align 8
  %192 = urem i64 %191, 16
  %193 = icmp ne i64 %192, 8
  br i1 %193, label %194, label %198

194:                                              ; preds = %190, %187
  %195 = call i32 @log_ndisc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %196 = load i32, i32* @EBADMSG, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %2, align 4
  br label %263

198:                                              ; preds = %190
  br label %253

199:                                              ; preds = %123
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = call i32 @log_ndisc(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  br label %253

204:                                              ; preds = %199
  %205 = load i64, i64* %10, align 8
  %206 = icmp ult i64 %205, 8
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = call i32 @log_ndisc(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0))
  %209 = load i32, i32* @EBADMSG, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %2, align 4
  br label %263

211:                                              ; preds = %204
  %212 = load i32*, i32** %5, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  %214 = load i32, i32* %213, align 4
  %215 = shl i32 %214, 8
  %216 = load i32*, i32** %5, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 3
  %218 = load i32, i32* %217, align 4
  %219 = shl i32 %218, 16
  %220 = or i32 %215, %219
  %221 = load i32*, i32** %5, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 4
  %223 = load i32, i32* %222, align 4
  %224 = shl i32 %223, 24
  %225 = or i32 %220, %224
  %226 = load i32*, i32** %5, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 5
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %228, 32
  %230 = or i32 %225, %229
  %231 = load i32*, i32** %5, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 6
  %233 = load i32, i32* %232, align 4
  %234 = shl i32 %233, 40
  %235 = or i32 %230, %234
  %236 = load i32*, i32** %5, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 7
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 48
  %240 = or i32 %235, %239
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  store i32 1, i32* %7, align 4
  br label %253

245:                                              ; preds = %123
  %246 = load i64, i64* %10, align 8
  %247 = icmp ult i64 %246, 16
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = call i32 @log_ndisc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %250 = load i32, i32* @EBADMSG, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %2, align 4
  br label %263

252:                                              ; preds = %245
  br label %253

253:                                              ; preds = %123, %252, %211, %202, %198, %186, %166, %145, %141
  %254 = load i64, i64* %10, align 8
  %255 = load i32*, i32** %5, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 %254
  store i32* %256, i32** %5, align 8
  %257 = load i64, i64* %10, align 8
  %258 = load i64, i64* %8, align 8
  %259 = sub i64 %258, %257
  store i64 %259, i64* %8, align 8
  br label %89

260:                                              ; preds = %92
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 3
  store i32 32, i32* %262, align 4
  store i32 0, i32* %2, align 4
  br label %263

263:                                              ; preds = %260, %248, %207, %194, %182, %173, %150, %137, %128, %119, %111, %96, %40, %31, %19
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @log_ndisc(i8*) #1

declare dso_local %struct.nd_router_advert* @NDISC_ROUTER_RAW(%struct.TYPE_5__*) #1

declare dso_local i32 @be16toh(i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
