; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_handle_dhtpk_announce.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_handle_dhtpk_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64, i32 (i8*, i32, i64, i32)*, i32, i8*, i32, i32, i32, i32, i32 (i32, i32, i64*)* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@DHTPK_DATA_MIN_LENGTH = common dso_local global i64 0, align 8
@DHTPK_DATA_MAX_LENGTH = common dso_local global i64 0, align 8
@MAX_SENT_NODES = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@TCP_INET = common dso_local global i64 0, align 8
@TCP_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, i64*, i64)* @handle_dhtpk_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_dhtpk_announce(i8* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @DHTPK_DATA_MIN_LENGTH, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %252

28:                                               ; preds = %4
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @DHTPK_DATA_MAX_LENGTH, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %252

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = call i32 @onion_friend_num(%struct.TYPE_12__* %34, i64* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %252

40:                                               ; preds = %33
  %41 = load i64*, i64** %8, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  %43 = call i32 @memcpy(i64* %12, i64* %42, i32 8)
  %44 = call i32 @net_to_host(i64* %12, i32 8)
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %45, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %40
  store i32 1, i32* %5, align 4
  br label %252

56:                                               ; preds = %40
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i64 %57, i64* %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 8
  %72 = load i32 (i32, i32, i64*)*, i32 (i32, i32, i64*)** %71, align 8
  %73 = icmp ne i32 (i32, i32, i64*)* %72, null
  br i1 %73, label %74, label %103

74:                                               ; preds = %56
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 8
  %82 = load i32 (i32, i32, i64*)*, i32 (i32, i32, i64*)** %81, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = load i64*, i64** %8, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  %101 = getelementptr inbounds i64, i64* %100, i64 8
  %102 = call i32 %82(i32 %90, i32 %98, i64* %101)
  br label %103

103:                                              ; preds = %74, %56
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i64*, i64** %8, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = getelementptr inbounds i64, i64* %107, i64 8
  %109 = call i32 @onion_set_friend_DHT_pubkey(%struct.TYPE_12__* %104, i32 %105, i64* %108)
  %110 = call i32 (...) @unix_time()
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 5
  store i32 %110, i32* %117, align 4
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @DHTPK_DATA_MIN_LENGTH, align 8
  %120 = sub nsw i64 %118, %119
  store i64 %120, i64* %13, align 8
  %121 = load i64, i64* %13, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %251

123:                                              ; preds = %103
  %124 = load i32, i32* @MAX_SENT_NODES, align 4
  %125 = zext i32 %124 to i64
  %126 = call i8* @llvm.stacksave()
  store i8* %126, i8** %14, align 8
  %127 = alloca %struct.TYPE_13__, i64 %125, align 16
  store i64 %125, i64* %15, align 8
  %128 = load i32, i32* @MAX_SENT_NODES, align 4
  %129 = load i64*, i64** %8, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = getelementptr inbounds i64, i64* %130, i64 8
  %132 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %13, align 8
  %136 = call i32 @unpack_nodes(%struct.TYPE_13__* %127, i32 %128, i32 0, i64* %134, i64 %135, i32 1)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp sle i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %123
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %247

140:                                              ; preds = %123
  store i32 0, i32* %18, align 4
  br label %141

141:                                              ; preds = %243, %140
  %142 = load i32, i32* %18, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %246

145:                                              ; preds = %141
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %19, align 8
  %153 = load i64, i64* %19, align 8
  %154 = load i64, i64* @AF_INET, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %160, label %156

156:                                              ; preds = %145
  %157 = load i64, i64* %19, align 8
  %158 = load i64, i64* @AF_INET6, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %182

160:                                              ; preds = %156, %145
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 16
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %174, align 8
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @DHT_getnodes(i32 %163, %struct.TYPE_14__* %167, i32 %172, i32 %180)
  br label %242

182:                                              ; preds = %156
  %183 = load i64, i64* %19, align 8
  %184 = load i64, i64* @TCP_INET, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load i64, i64* %19, align 8
  %188 = load i64, i64* @TCP_INET6, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %241

190:                                              ; preds = %186, %182
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = load i32, i32* %11, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 1
  %198 = load i32 (i8*, i32, i64, i32)*, i32 (i8*, i32, i64, i32)** %197, align 8
  %199 = icmp ne i32 (i8*, i32, i64, i32)* %198, null
  br i1 %199, label %200, label %240

200:                                              ; preds = %190
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 3
  %208 = load i8*, i8** %207, align 8
  store i8* %208, i8** %20, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %210, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  store i32 %216, i32* %21, align 4
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %218, align 8
  %220 = load i32, i32* %11, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i32 (i8*, i32, i64, i32)*, i32 (i8*, i32, i64, i32)** %223, align 8
  %225 = load i8*, i8** %20, align 8
  %226 = load i32, i32* %21, align 4
  %227 = load i32, i32* %18, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 1
  %231 = load i32, i32* %18, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 16
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call i32 %224(i8* %225, i32 %226, i64 %238, i32 %235)
  br label %240

240:                                              ; preds = %200, %190
  br label %241

241:                                              ; preds = %240, %186
  br label %242

242:                                              ; preds = %241, %160
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %18, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %18, align 4
  br label %141

246:                                              ; preds = %141
  store i32 0, i32* %17, align 4
  br label %247

247:                                              ; preds = %246, %139
  %248 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %248)
  %249 = load i32, i32* %17, align 4
  switch i32 %249, label %254 [
    i32 0, label %250
    i32 1, label %252
  ]

250:                                              ; preds = %247
  br label %251

251:                                              ; preds = %250, %103
  store i32 0, i32* %5, align 4
  br label %252

252:                                              ; preds = %251, %247, %55, %39, %32, %27
  %253 = load i32, i32* %5, align 4
  ret i32 %253

254:                                              ; preds = %247
  unreachable
}

declare dso_local i32 @onion_friend_num(%struct.TYPE_12__*, i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @net_to_host(i64*, i32) #1

declare dso_local i32 @onion_set_friend_DHT_pubkey(%struct.TYPE_12__*, i32, i64*) #1

declare dso_local i32 @unix_time(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @unpack_nodes(%struct.TYPE_13__*, i32, i32, i64*, i64, i32) #1

declare dso_local i32 @DHT_getnodes(i32, %struct.TYPE_14__*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
