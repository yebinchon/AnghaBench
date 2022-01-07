; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_address_free.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_address_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@addresses = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @link_address_free(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %4 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %5 = icmp ne %struct.TYPE_17__* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %2, align 8
  br label %274

7:                                                ; preds = %1
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %11 = icmp ne %struct.TYPE_16__* %10, null
  br i1 %11, label %12, label %255

12:                                               ; preds = %7
  %13 = load i32, i32* @addresses, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = call i32 @LIST_REMOVE(i32 %13, i32 %18, %struct.TYPE_17__* %19)
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %12
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = icmp ne %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 5
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @dns_zone_remove_rr(i32* %58, i64 %61)
  br label %88

63:                                               ; preds = %45, %39
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AF_INET6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %63
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = icmp ne %struct.TYPE_13__* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %69
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 5
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @dns_zone_remove_rr(i32* %82, i64 %85)
  br label %87

87:                                               ; preds = %76, %69, %63
  br label %88

88:                                               ; preds = %87, %52
  br label %89

89:                                               ; preds = %88, %12
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %144

94:                                               ; preds = %89
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AF_INET, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %94
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = icmp ne %struct.TYPE_12__* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %100
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 5
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @dns_zone_remove_rr(i32* %113, i64 %116)
  br label %143

118:                                              ; preds = %100, %94
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @AF_INET6, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %118
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = icmp ne %struct.TYPE_13__* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %124
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @dns_zone_remove_rr(i32* %137, i64 %140)
  br label %142

142:                                              ; preds = %131, %124, %118
  br label %143

143:                                              ; preds = %142, %107
  br label %144

144:                                              ; preds = %143, %89
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %199

149:                                              ; preds = %144
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @AF_INET, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %149
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 5
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %159, align 8
  %161 = icmp ne %struct.TYPE_14__* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %155
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 5
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = call i32 @dns_zone_remove_rr(i32* %168, i64 %171)
  br label %198

173:                                              ; preds = %155, %149
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @AF_INET6, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %197

179:                                              ; preds = %173
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = icmp ne %struct.TYPE_15__* %184, null
  br i1 %185, label %186, label %197

186:                                              ; preds = %179
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 5
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @dns_zone_remove_rr(i32* %192, i64 %195)
  br label %197

197:                                              ; preds = %186, %179, %173
  br label %198

198:                                              ; preds = %197, %162
  br label %199

199:                                              ; preds = %198, %144
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %254

204:                                              ; preds = %199
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @AF_INET, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %228

210:                                              ; preds = %204
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 5
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %214, align 8
  %216 = icmp ne %struct.TYPE_14__* %215, null
  br i1 %216, label %217, label %228

217:                                              ; preds = %210
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 5
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @dns_zone_remove_rr(i32* %223, i64 %226)
  br label %253

228:                                              ; preds = %210, %204
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @AF_INET6, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %252

234:                                              ; preds = %228
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 5
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %238, align 8
  %240 = icmp ne %struct.TYPE_15__* %239, null
  br i1 %240, label %241, label %252

241:                                              ; preds = %234
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 5
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @dns_zone_remove_rr(i32* %247, i64 %250)
  br label %252

252:                                              ; preds = %241, %234, %228
  br label %253

253:                                              ; preds = %252, %217
  br label %254

254:                                              ; preds = %253, %199
  br label %255

255:                                              ; preds = %254, %7
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 4
  %258 = load i64, i64* %257, align 8
  %259 = call i32 @dns_resource_record_unref(i64 %258)
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @dns_resource_record_unref(i64 %262)
  %264 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = call i32 @dns_resource_record_unref(i64 %266)
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = call i32 @dns_resource_record_unref(i64 %270)
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %273 = call %struct.TYPE_17__* @mfree(%struct.TYPE_17__* %272)
  store %struct.TYPE_17__* %273, %struct.TYPE_17__** %2, align 8
  br label %274

274:                                              ; preds = %255, %6
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  ret %struct.TYPE_17__* %275
}

declare dso_local i32 @LIST_REMOVE(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dns_zone_remove_rr(i32*, i64) #1

declare dso_local i32 @dns_resource_record_unref(i64) #1

declare dso_local %struct.TYPE_17__* @mfree(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
