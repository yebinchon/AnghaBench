; ModuleID = '/home/carl/AnghaBench/systemd/src/network/extr_networkd-network.c_network_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/network/extr_networkd-network.c_network_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@qdisc_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*)* @network_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @network_free(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %344

17:                                               ; preds = %1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 64
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @free(i32 %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 63
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @set_free_free(i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 62
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strv_free(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 61
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strv_free(i32 %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 60
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @strv_free(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 59
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strv_free(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 58
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strv_free(i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 57
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strv_free(i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 56
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strv_free(i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 55
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @set_free_free(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 54
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @condition_free_list(i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 53
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @free(i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 52
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @free(i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 51
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @strv_free(i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 50
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @free(i32 %76)
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 49
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @set_free(i32 %80)
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 48
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @set_free(i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 47
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @free(i32 %88)
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 46
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @strv_free(i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 45
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @free(i32 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 44
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @strv_free(i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 43
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ordered_set_free_free(i32 %104)
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 42
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ordered_set_free_free(i32 %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 41
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @strv_free(i32 %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 40
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ordered_set_free_free(i32 %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 39
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @free(i32 %120)
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 38
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @set_free_free(i32 %124)
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 37
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @free(i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 36
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @free(i32 %132)
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 35
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @free(i32 %136)
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 34
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @hashmap_free_free_key(i32 %140)
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 33
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @netdev_unref(i32 %144)
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 32
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @netdev_unref(i32 %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 31
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @netdev_unref(i32 %152)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 30
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @hashmap_free_with_destructor(i32 %156, i32 (i32)* @netdev_unref)
  br label %158

158:                                              ; preds = %163, %17
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 29
  %161 = load i32*, i32** %160, align 8
  store i32* %161, i32** %13, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32*, i32** %13, align 8
  %165 = call i32 @route_free(i32* %164)
  br label %158

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %172, %166
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 28
  %170 = load i32*, i32** %169, align 8
  store i32* %170, i32** %11, align 8
  %171 = icmp ne i32* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32*, i32** %11, align 8
  %174 = call i32 @nexthop_free(i32* %173)
  br label %167

175:                                              ; preds = %167
  br label %176

176:                                              ; preds = %181, %175
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 27
  %179 = load i32*, i32** %178, align 8
  store i32* %179, i32** %10, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32*, i32** %10, align 8
  %183 = call i32 @address_free(i32* %182)
  br label %176

184:                                              ; preds = %176
  br label %185

185:                                              ; preds = %190, %184
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 26
  %188 = load i32*, i32** %187, align 8
  store i32* %188, i32** %8, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load i32*, i32** %8, align 8
  %192 = call i32 @fdb_entry_free(i32* %191)
  br label %185

193:                                              ; preds = %185
  br label %194

194:                                              ; preds = %199, %193
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 25
  %197 = load i32*, i32** %196, align 8
  store i32* %197, i32** %4, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = load i32*, i32** %4, align 8
  %201 = call i32 @ipv6_proxy_ndp_address_free(i32* %200)
  br label %194

202:                                              ; preds = %194
  br label %203

203:                                              ; preds = %208, %202
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 24
  %206 = load i32*, i32** %205, align 8
  store i32* %206, i32** %9, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32*, i32** %9, align 8
  %210 = call i32 @neighbor_free(i32* %209)
  br label %203

211:                                              ; preds = %203
  br label %212

212:                                              ; preds = %217, %211
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 23
  %215 = load i32*, i32** %214, align 8
  store i32* %215, i32** %7, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i32*, i32** %7, align 8
  %219 = call i32 @address_label_free(i32* %218)
  br label %212

220:                                              ; preds = %212
  br label %221

221:                                              ; preds = %226, %220
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 22
  %224 = load i32*, i32** %223, align 8
  store i32* %224, i32** %12, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load i32*, i32** %12, align 8
  %228 = call i32 @prefix_free(i32* %227)
  br label %221

229:                                              ; preds = %221
  br label %230

230:                                              ; preds = %235, %229
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 21
  %233 = load i32*, i32** %232, align 8
  store i32* %233, i32** %5, align 8
  %234 = icmp ne i32* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %230
  %236 = load i32*, i32** %5, align 8
  %237 = call i32 @route_prefix_free(i32* %236)
  br label %230

238:                                              ; preds = %230
  br label %239

239:                                              ; preds = %244, %238
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 20
  %242 = load i32*, i32** %241, align 8
  store i32* %242, i32** %6, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load i32*, i32** %6, align 8
  %246 = call i32 @routing_policy_rule_free(i32* %245)
  br label %239

247:                                              ; preds = %239
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 19
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @hashmap_free(i32 %250)
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 18
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @hashmap_free(i32 %254)
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 17
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @hashmap_free(i32 %258)
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 16
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @hashmap_free(i32 %262)
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 15
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @hashmap_free(i32 %266)
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 14
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @hashmap_free(i32 %270)
  %272 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 13
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @hashmap_free(i32 %274)
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 12
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @hashmap_free(i32 %278)
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 11
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @hashmap_free(i32 %282)
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 10
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @qdisc_free, align 4
  %288 = call i32 @ordered_hashmap_free_with_destructor(i32 %286, i32 %287)
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 9
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %290, align 8
  %292 = icmp ne %struct.TYPE_7__* %291, null
  br i1 %292, label %293, label %309

293:                                              ; preds = %247
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 9
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %309

300:                                              ; preds = %293
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 9
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 8
  %308 = call i32 @set_remove(i64 %305, i32* %307)
  br label %309

309:                                              ; preds = %300, %293, %247
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @free(i32 %312)
  %314 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %314, i32 0, i32 6
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @free(i32 %316)
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @free(i32 %320)
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 8
  %325 = call i32 @free(i32 %324)
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @free(i32 %328)
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @set_free_free(i32 %332)
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @ordered_hashmap_free(i32 %336)
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @ordered_hashmap_free(i32 %340)
  %342 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %343 = call %struct.TYPE_8__* @mfree(%struct.TYPE_8__* %342)
  store %struct.TYPE_8__* %343, %struct.TYPE_8__** %2, align 8
  br label %344

344:                                              ; preds = %309, %16
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %345
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @set_free_free(i32) #1

declare dso_local i32 @strv_free(i32) #1

declare dso_local i32 @condition_free_list(i32) #1

declare dso_local i32 @set_free(i32) #1

declare dso_local i32 @ordered_set_free_free(i32) #1

declare dso_local i32 @hashmap_free_free_key(i32) #1

declare dso_local i32 @netdev_unref(i32) #1

declare dso_local i32 @hashmap_free_with_destructor(i32, i32 (i32)*) #1

declare dso_local i32 @route_free(i32*) #1

declare dso_local i32 @nexthop_free(i32*) #1

declare dso_local i32 @address_free(i32*) #1

declare dso_local i32 @fdb_entry_free(i32*) #1

declare dso_local i32 @ipv6_proxy_ndp_address_free(i32*) #1

declare dso_local i32 @neighbor_free(i32*) #1

declare dso_local i32 @address_label_free(i32*) #1

declare dso_local i32 @prefix_free(i32*) #1

declare dso_local i32 @route_prefix_free(i32*) #1

declare dso_local i32 @routing_policy_rule_free(i32*) #1

declare dso_local i32 @hashmap_free(i32) #1

declare dso_local i32 @ordered_hashmap_free_with_destructor(i32, i32) #1

declare dso_local i32 @set_remove(i64, i32*) #1

declare dso_local i32 @ordered_hashmap_free(i32) #1

declare dso_local %struct.TYPE_8__* @mfree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
