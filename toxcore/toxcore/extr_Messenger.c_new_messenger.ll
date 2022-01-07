; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_new_messenger.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_new_messenger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__, i32*, %struct.TYPE_14__*, i32*, i64, i64, i64, i32* }
%struct.TYPE_12__ = type { i64, i32, i32, i32*, i64 }
%struct.TYPE_14__ = type { i32 }

@MESSENGER_ERROR_OTHER = common dso_local global i32 0, align 4
@MESSENGER_ERROR_PORT = common dso_local global i32 0, align 4
@MESSENGER_ERROR_TCP_SERVER = common dso_local global i32 0, align 4
@friend_already_added = common dso_local global i32 0, align 4
@MESSENGER_ERROR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @new_messenger(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = call i8* @calloc(i32 1, i32 96)
  %10 = bitcast i8* %9 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %6, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @MESSENGER_ERROR_OTHER, align 4
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %269

20:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = call i8* @calloc(i32 1, i32 4)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 3
  store i32* %27, i32** %29, align 8
  br label %49

30:                                               ; preds = %20
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ip_init(i32* %8, i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @new_networking_ex(i32 %35, i32 %40, i32 %45, i32* %7)
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  store i32* %46, i32** %48, align 8
  br label %49

49:                                               ; preds = %30, %25
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = call i32 @free(%struct.TYPE_13__* %55)
  %57 = load i32*, i32** %5, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* @MESSENGER_ERROR_PORT, align 4
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59, %54
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %269

66:                                               ; preds = %49
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = call %struct.TYPE_14__* @new_DHT(i32* %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 4
  store %struct.TYPE_14__* %70, %struct.TYPE_14__** %72, align 8
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = icmp eq %struct.TYPE_14__* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %66
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @kill_networking(i32* %80)
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %83 = call i32 @free(%struct.TYPE_13__* %82)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %269

84:                                               ; preds = %66
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 2
  %90 = call i32* @new_net_crypto(%struct.TYPE_14__* %87, i32* %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 5
  store i32* %90, i32** %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 5
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %84
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @kill_networking(i32* %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = call i32 @kill_DHT(%struct.TYPE_14__* %104)
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = call i32 @free(%struct.TYPE_13__* %106)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %269

108:                                              ; preds = %84
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = call i64 @new_onion(%struct.TYPE_14__* %111)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 8
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = call i64 @new_onion_announce(%struct.TYPE_14__* %117)
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 7
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @new_onion_client(i32* %123)
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 6
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 6
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @new_friend_connections(i64 %129)
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %108
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %178, label %147

147:                                              ; preds = %142, %137, %108
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @kill_friend_connections(i32 %150)
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @kill_onion(i64 %154)
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 7
  %158 = load i64, i64* %157, align 8
  %159 = call i32 @kill_onion_announce(i64 %158)
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @kill_onion_client(i64 %162)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 5
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @kill_net_crypto(i32* %166)
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = call i32 @kill_DHT(%struct.TYPE_14__* %170)
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @kill_networking(i32* %174)
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %177 = call i32 @free(%struct.TYPE_13__* %176)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %269

178:                                              ; preds = %142
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %242

183:                                              ; preds = %178
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 8
  %196 = load i64, i64* %195, align 8
  %197 = call i32* @new_TCP_server(i32 %186, i32 1, i64* %188, i32 %193, i64 %196)
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 9
  store i32* %197, i32** %199, align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 9
  %202 = load i32*, i32** %201, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %241

204:                                              ; preds = %183
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @kill_friend_connections(i32 %207)
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 8
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @kill_onion(i64 %211)
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @kill_onion_announce(i64 %215)
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 6
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @kill_onion_client(i64 %219)
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 5
  %223 = load i32*, i32** %222, align 8
  %224 = call i32 @kill_net_crypto(i32* %223)
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 4
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = call i32 @kill_DHT(%struct.TYPE_14__* %227)
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @kill_networking(i32* %231)
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %234 = call i32 @free(%struct.TYPE_13__* %233)
  %235 = load i32*, i32** %5, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %204
  %238 = load i32, i32* @MESSENGER_ERROR_TCP_SERVER, align 4
  %239 = load i32*, i32** %5, align 8
  store i32 %238, i32* %239, align 4
  br label %240

240:                                              ; preds = %237, %204
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  br label %269

241:                                              ; preds = %183
  br label %242

242:                                              ; preds = %241, %178
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %246 = bitcast %struct.TYPE_12__* %244 to i8*
  %247 = bitcast %struct.TYPE_12__* %245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %246, i8* align 8 %247, i64 32, i1 false)
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @friendreq_init(i32* %249, i32 %252)
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = call i32 (...) @random_int()
  %257 = call i32 @set_nospam(i32* %255, i32 %256)
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %261 = call i32 @set_filter_function(i32* %259, i32* @friend_already_added, %struct.TYPE_13__* %260)
  %262 = load i32*, i32** %5, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %267

264:                                              ; preds = %242
  %265 = load i32, i32* @MESSENGER_ERROR_NONE, align 4
  %266 = load i32*, i32** %5, align 8
  store i32 %265, i32* %266, align 4
  br label %267

267:                                              ; preds = %264, %242
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %268, %struct.TYPE_13__** %3, align 8
  br label %269

269:                                              ; preds = %267, %240, %147, %97, %77, %65, %19
  %270 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  ret %struct.TYPE_13__* %270
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @ip_init(i32*, i32) #1

declare dso_local i32* @new_networking_ex(i32, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @new_DHT(i32*) #1

declare dso_local i32 @kill_networking(i32*) #1

declare dso_local i32* @new_net_crypto(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @kill_DHT(%struct.TYPE_14__*) #1

declare dso_local i64 @new_onion(%struct.TYPE_14__*) #1

declare dso_local i64 @new_onion_announce(%struct.TYPE_14__*) #1

declare dso_local i64 @new_onion_client(i32*) #1

declare dso_local i32 @new_friend_connections(i64) #1

declare dso_local i32 @kill_friend_connections(i32) #1

declare dso_local i32 @kill_onion(i64) #1

declare dso_local i32 @kill_onion_announce(i64) #1

declare dso_local i32 @kill_onion_client(i64) #1

declare dso_local i32 @kill_net_crypto(i32*) #1

declare dso_local i32* @new_TCP_server(i32, i32, i64*, i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @friendreq_init(i32*, i32) #1

declare dso_local i32 @set_nospam(i32*, i32) #1

declare dso_local i32 @random_int(...) #1

declare dso_local i32 @set_filter_function(i32*, i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
