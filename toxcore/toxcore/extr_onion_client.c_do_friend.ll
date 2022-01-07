; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_do_friend.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_do_friend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64, i64, i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@ANNOUNCE_FRIEND = common dso_local global i32 0, align 4
@RUN_COUNT_FRIEND_ANNOUNCE_BEGINNING = common dso_local global i64 0, align 8
@ANNOUNCE_FRIEND_BEGINNING = common dso_local global i32 0, align 4
@MAX_ONION_CLIENTS = common dso_local global i32 0, align 4
@FRIEND_ONION_NODE_TIMEOUT = common dso_local global i32 0, align 4
@MAX_PATH_NODES = common dso_local global i32 0, align 4
@ONION_DHTPK_SEND_INTERVAL = common dso_local global i32 0, align 4
@DHT_DHTPK_SEND_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i64)* @do_friend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_friend(%struct.TYPE_11__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %266

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %266

29:                                               ; preds = %19
  %30 = load i32, i32* @ANNOUNCE_FRIEND, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RUN_COUNT_FRIEND_ANNOUNCE_BEGINNING, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @ANNOUNCE_FRIEND_BEGINNING, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %29
  store i32 0, i32* %7, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %8, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %266, label %58

58:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %130, %58
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MAX_ONION_CLIENTS, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %133

63:                                               ; preds = %59
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @FRIEND_ONION_NODE_TIMEOUT, align 4
  %71 = call i64 @is_timeout(i64 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  br label %130

74:                                               ; preds = %63
  %75 = load i32, i32* %7, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = load i32, i32* %6, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %74
  %85 = call i8* (...) @unix_time()
  %86 = ptrtoint i8* %85 to i64
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = load i32, i32* %6, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  store i64 %86, i64* %91, align 8
  br label %130

92:                                               ; preds = %74
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @is_timeout(i64 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %92
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %104 = load i64, i64* %4, align 8
  %105 = add i64 %104, 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %107 = load i32, i32* %6, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %113 = load i32, i32* %6, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @client_send_announce_request(%struct.TYPE_11__* %103, i64 %105, i32 %111, i32 %117, i32 0, i32 -1)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %102
  %121 = call i8* (...) @unix_time()
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = load i32, i32* %6, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  store i64 %122, i64* %127, align 8
  br label %128

128:                                              ; preds = %120, %102
  br label %129

129:                                              ; preds = %128, %92
  br label %130

130:                                              ; preds = %129, %84, %73
  %131 = load i32, i32* %6, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %59

133:                                              ; preds = %59
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @MAX_ONION_CLIENTS, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %204

137:                                              ; preds = %133
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @MAX_PATH_NODES, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  br label %149

147:                                              ; preds = %137
  %148 = load i32, i32* @MAX_PATH_NODES, align 4
  br label %149

149:                                              ; preds = %147, %143
  %150 = phi i32 [ %146, %143 ], [ %148, %147 ]
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @MAX_ONION_CLIENTS, align 4
  %154 = udiv i32 %153, 2
  %155 = icmp ugt i32 %152, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load i32, i32* @MAX_ONION_CLIENTS, align 4
  %158 = udiv i32 %157, 2
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %156, %149
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %203

162:                                              ; preds = %159
  store i32 0, i32* %11, align 4
  br label %163

163:                                              ; preds = %191, %162
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %167, label %194

167:                                              ; preds = %163
  %168 = call i32 (...) @rand()
  %169 = load i32, i32* %9, align 4
  %170 = urem i32 %168, %169
  store i32 %170, i32* %12, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %172 = load i64, i64* %4, align 8
  %173 = add i64 %172, 1
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 3
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @client_send_announce_request(%struct.TYPE_11__* %171, i64 %173, i32 %181, i32 %189, i32 0, i32 -1)
  br label %191

191:                                              ; preds = %167
  %192 = load i32, i32* %11, align 4
  %193 = add i32 %192, 1
  store i32 %193, i32* %11, align 4
  br label %163

194:                                              ; preds = %163
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %196, align 8
  %198 = load i64, i64* %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = add nsw i64 %201, 1
  store i64 %202, i64* %200, align 8
  br label %203

203:                                              ; preds = %194, %159
  br label %213

204:                                              ; preds = %133
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** %206, align 8
  %208 = load i64, i64* %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %210, align 8
  br label %213

213:                                              ; preds = %204, %203
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = load i64, i64* %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load i32, i32* @ONION_DHTPK_SEND_INTERVAL, align 4
  %222 = call i64 @is_timeout(i64 %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %239

224:                                              ; preds = %213
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %226 = load i64, i64* %4, align 8
  %227 = call i32 @send_dhtpk_announce(%struct.TYPE_11__* %225, i64 %226, i32 0)
  %228 = icmp sge i32 %227, 1
  br i1 %228, label %229, label %238

229:                                              ; preds = %224
  %230 = call i8* (...) @unix_time()
  %231 = ptrtoint i8* %230 to i64
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = load i64, i64* %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 2
  store i64 %231, i64* %237, align 8
  br label %238

238:                                              ; preds = %229, %224
  br label %239

239:                                              ; preds = %238, %213
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = load i64, i64* %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* @DHT_DHTPK_SEND_INTERVAL, align 4
  %248 = call i64 @is_timeout(i64 %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %265

250:                                              ; preds = %239
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %252 = load i64, i64* %4, align 8
  %253 = call i32 @send_dhtpk_announce(%struct.TYPE_11__* %251, i64 %252, i32 1)
  %254 = icmp sge i32 %253, 1
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = call i8* (...) @unix_time()
  %257 = ptrtoint i8* %256 to i64
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %259, align 8
  %261 = load i64, i64* %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 3
  store i64 %257, i64* %263, align 8
  br label %264

264:                                              ; preds = %255, %250
  br label %265

265:                                              ; preds = %264, %239
  br label %266

266:                                              ; preds = %18, %28, %265, %42
  ret void
}

declare dso_local i64 @is_timeout(i64, i32) #1

declare dso_local i8* @unix_time(...) #1

declare dso_local i64 @client_send_announce_request(%struct.TYPE_11__*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @send_dhtpk_announce(%struct.TYPE_11__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
