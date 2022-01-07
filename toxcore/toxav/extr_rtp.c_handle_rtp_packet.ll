; ModuleID = '/home/carl/AnghaBench/toxcore/toxav/extr_rtp.c_handle_rtp_packet.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxav/extr_rtp.c_handle_rtp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 (i32, %struct.TYPE_12__*)*, %struct.TYPE_12__*, i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.RTPHeader = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"No session or invalid length of received buffer!\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid payload type with the session\00", align 1
@MAX_CRYPTO_DATA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @handle_rtp_packet(i32* %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.RTPHeader*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %12, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 20
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %5
  %29 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %420

30:                                               ; preds = %24
  %31 = load i32*, i32** %9, align 8
  %32 = bitcast i32* %31 to %struct.RTPHeader*
  store %struct.RTPHeader* %32, %struct.RTPHeader** %13, align 8
  %33 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %34 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = srem i32 %38, 128
  %40 = icmp ne i32 %35, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = call i32 @LOGGER_WARNING(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %420

43:                                               ; preds = %30
  %44 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %45 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ntohs(i32 %46)
  %48 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %49 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohs(i32 %50)
  %52 = icmp sge i32 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i32 -1, i32* %6, align 4
  br label %420

54:                                               ; preds = %43
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @bwc_feed_avg(i32 %57, i32 %58)
  %60 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %61 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohs(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 20
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %140

69:                                               ; preds = %54
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %71 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %72 = call i64 @chloss(%struct.TYPE_11__* %70, %struct.RTPHeader* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %420

75:                                               ; preds = %69
  %76 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %77 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ntohs(i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %83 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ntohl(i32 %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 5
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %75
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @bwc_add_recv(i32 %91, i32 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = icmp ne %struct.TYPE_12__* %96, null
  br i1 %97, label %98, label %122

98:                                               ; preds = %88
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %100, align 8
  %102 = icmp ne i32 (i32, %struct.TYPE_12__*)* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %105, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = call i32 %106(i32 %109, %struct.TYPE_12__* %112)
  br label %119

114:                                              ; preds = %98
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = call i32 @free(%struct.TYPE_12__* %117)
  br label %119

119:                                              ; preds = %114, %103
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %121, align 8
  br label %122

122:                                              ; preds = %119, %88
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 2
  %125 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %124, align 8
  %126 = icmp ne i32 (i32, %struct.TYPE_12__*)* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %122
  store i32 0, i32* %6, align 4
  br label %420

128:                                              ; preds = %122
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 2
  %131 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %130, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call %struct.TYPE_12__* @new_message(i32 %135, i32* %136, i32 %137)
  %139 = call i32 %131(i32 %134, %struct.TYPE_12__* %138)
  store i32 %139, i32* %6, align 4
  br label %420

140:                                              ; preds = %54
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = icmp ne %struct.TYPE_12__* %143, null
  br i1 %144, label %145, label %345

145:                                              ; preds = %140
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %153 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @ntohs(i32 %154)
  %156 = icmp eq i32 %151, %155
  br i1 %156, label %157, label %272

157:                                              ; preds = %145
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %165 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @ntohl(i32 %166)
  %168 = icmp eq i64 %163, %167
  br i1 %168, label %169, label %272

169:                                              ; preds = %157
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 3
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sub nsw i32 %175, %180
  %182 = sext i32 %181 to i64
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = sub i64 %184, 20
  %186 = icmp ult i64 %182, %185
  br i1 %186, label %199, label %187

187:                                              ; preds = %169
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %195 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @ntohs(i32 %196)
  %198 = icmp sle i32 %193, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %187, %169
  store i32 0, i32* %6, align 4
  br label %420

200:                                              ; preds = %187
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 3
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %207 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @ntohs(i32 %208)
  %210 = sext i32 %209 to i64
  %211 = add nsw i64 %205, %210
  %212 = load i32*, i32** %9, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 20
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = sub i64 %215, 20
  %217 = trunc i64 %216 to i32
  %218 = call i32 @memcpy(i64 %211, i32* %213, i32 %217)
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = sub i64 %220, 20
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = add i64 %227, %221
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %225, align 8
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = call i32 @bwc_add_recv(i32 %232, i32 %233)
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 3
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp eq i32 %239, %245
  br i1 %246, label %247, label %271

247:                                              ; preds = %200
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 2
  %250 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %249, align 8
  %251 = icmp ne i32 (i32, %struct.TYPE_12__*)* %250, null
  br i1 %251, label %252, label %263

252:                                              ; preds = %247
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 2
  %255 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %254, align 8
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %260, align 8
  %262 = call i32 %255(i32 %258, %struct.TYPE_12__* %261)
  br label %268

263:                                              ; preds = %247
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %265, align 8
  %267 = call i32 @free(%struct.TYPE_12__* %266)
  br label %268

268:                                              ; preds = %263, %252
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %270, align 8
  br label %271

271:                                              ; preds = %268, %200
  br label %344

272:                                              ; preds = %157, %145
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %280 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i64 @ntohl(i32 %281)
  %283 = icmp sgt i64 %278, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %272
  store i32 0, i32* %6, align 4
  br label %420

285:                                              ; preds = %272
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 3
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 3
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = sub nsw i32 %294, %299
  %301 = sext i32 %300 to i64
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 3
  %310 = load %struct.TYPE_12__*, %struct.TYPE_12__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = sub nsw i32 %307, %312
  %314 = load i32, i32* @MAX_CRYPTO_DATA_SIZE, align 4
  %315 = sdiv i32 %313, %314
  %316 = sext i32 %315 to i64
  %317 = mul i64 %316, 20
  %318 = add i64 %301, %317
  %319 = trunc i64 %318 to i32
  %320 = call i32 @bwc_add_lost(i32 %288, i32 %319)
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 2
  %323 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %322, align 8
  %324 = icmp ne i32 (i32, %struct.TYPE_12__*)* %323, null
  br i1 %324, label %325, label %336

325:                                              ; preds = %285
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 2
  %328 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %327, align 8
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 6
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 3
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %333, align 8
  %335 = call i32 %328(i32 %331, %struct.TYPE_12__* %334)
  br label %341

336:                                              ; preds = %285
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i32 0, i32 3
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %338, align 8
  %340 = call i32 @free(%struct.TYPE_12__* %339)
  br label %341

341:                                              ; preds = %336, %325
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 3
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %343, align 8
  br label %346

344:                                              ; preds = %271
  br label %418

345:                                              ; preds = %140
  br label %346

346:                                              ; preds = %345, %341
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %348 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %349 = call i64 @chloss(%struct.TYPE_11__* %347, %struct.RTPHeader* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %346
  store i32 0, i32* %6, align 4
  br label %420

352:                                              ; preds = %346
  %353 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %354 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %353, i32 0, i32 4
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @ntohs(i32 %355)
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 1
  store i32 %356, i32* %358, align 4
  %359 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %360 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = call i64 @ntohl(i32 %361)
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 5
  store i64 %362, i64* %364, align 8
  br label %365

365:                                              ; preds = %352
  %366 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %366, i32 0, i32 4
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %10, align 4
  %370 = call i32 @bwc_add_recv(i32 %368, i32 %369)
  %371 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 2
  %373 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %372, align 8
  %374 = icmp ne i32 (i32, %struct.TYPE_12__*)* %373, null
  br i1 %374, label %375, label %417

375:                                              ; preds = %365
  %376 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %377 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @ntohs(i32 %378)
  %380 = sext i32 %379 to i64
  %381 = add i64 %380, 20
  %382 = trunc i64 %381 to i32
  %383 = load i32*, i32** %9, align 8
  %384 = load i32, i32* %10, align 4
  %385 = call %struct.TYPE_12__* @new_message(i32 %382, i32* %383, i32 %384)
  %386 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %387 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %386, i32 0, i32 3
  store %struct.TYPE_12__* %385, %struct.TYPE_12__** %387, align 8
  %388 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %389 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @ntohs(i32 %390)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %375
  br label %394

394:                                              ; preds = %393, %375
  %395 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %395, i32 0, i32 3
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = load %struct.RTPHeader*, %struct.RTPHeader** %13, align 8
  %401 = getelementptr inbounds %struct.RTPHeader, %struct.RTPHeader* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @ntohs(i32 %402)
  %404 = sext i32 %403 to i64
  %405 = add nsw i64 %399, %404
  %406 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %406, i32 0, i32 3
  %408 = load %struct.TYPE_12__*, %struct.TYPE_12__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %412 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %411, i32 0, i32 3
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = call i32 @memmove(i64 %405, i64 %410, i32 %415)
  br label %417

417:                                              ; preds = %394, %365
  br label %418

418:                                              ; preds = %417, %344
  br label %419

419:                                              ; preds = %418
  store i32 0, i32* %6, align 4
  br label %420

420:                                              ; preds = %419, %351, %284, %199, %128, %127, %74, %53, %41, %28
  %421 = load i32, i32* %6, align 4
  ret i32 %421
}

declare dso_local i32 @LOGGER_WARNING(i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @bwc_feed_avg(i32, i32) #1

declare dso_local i64 @chloss(%struct.TYPE_11__*, %struct.RTPHeader*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @bwc_add_recv(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @new_message(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @bwc_add_lost(i32, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
