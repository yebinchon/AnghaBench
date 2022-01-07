; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_lossy_all_close.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_group.c_send_lossy_all_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i64, i32, i32, i64 }

@DESIRED_CLOSE_CONNECTIONS = common dso_local global i32 0, align 4
@MAX_GROUP_CONNECTIONS = common dso_local global i32 0, align 4
@GROUPCHAT_CLOSE_ONLINE = common dso_local global i64 0, align 8
@PACKET_ID_LOSSY_GROUPCHAT = common dso_local global i32 0, align 4
@crypto_box_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32*, i32, i32)* @send_lossy_all_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_lossy_all_close(%struct.TYPE_9__* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.TYPE_8__* @get_group_c(%struct.TYPE_9__* %30, i32 %31)
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %12, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = icmp ne %struct.TYPE_8__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %274

36:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %37 = load i32, i32* @DESIRED_CLOSE_CONNECTIONS, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %16, align 8
  %40 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %17, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %108, %36
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @MAX_GROUP_CONNECTIONS, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %111

45:                                               ; preds = %41
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @GROUPCHAT_CLOSE_ONLINE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %108

57:                                               ; preds = %45
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %108

62:                                               ; preds = %57
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %15, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %40, i64 %75
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %15, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %108

79:                                               ; preds = %62
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @PACKET_ID_LOSSY_GROUPCHAT, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i64 @send_lossy_group_peer(i32 %82, i32 %90, i32 %91, i32 %99, i32* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %79
  %105 = load i32, i32* %14, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %104, %79
  br label %108

108:                                              ; preds = %107, %72, %61, %56
  %109 = load i32, i32* %13, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %41

111:                                              ; preds = %41
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  store i32 %115, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %272

116:                                              ; preds = %111
  store i32 0, i32* %19, align 4
  store i64 -1, i64* %20, align 8
  store i32 0, i32* %13, align 4
  br label %117

117:                                              ; preds = %159, %116
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %162

121:                                              ; preds = %117
  %122 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %123 = zext i32 %122 to i64
  %124 = call i8* @llvm.stacksave()
  store i8* %124, i8** %21, align 8
  %125 = alloca i32, i64 %123, align 16
  store i64 %123, i64* %22, align 8
  %126 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %127 = zext i32 %126 to i64
  %128 = alloca i32, i64 %127, align 16
  store i64 %127, i64* %23, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load i32, i32* %13, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %40, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @get_friendcon_public_keys(i32* %125, i32* %128, i32 %131, i32 %142)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i64 @calculate_comp_value(i32* %146, i32* %125)
  store i64 %147, i64* %24, align 8
  %148 = load i64, i64* %24, align 8
  %149 = load i64, i64* %20, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %121
  %152 = load i32, i32* %13, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %40, i64 %153
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %19, align 4
  %156 = load i64, i64* %24, align 8
  store i64 %156, i64* %20, align 8
  br label %157

157:                                              ; preds = %151, %121
  %158 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %158)
  br label %159

159:                                              ; preds = %157
  %160 = load i32, i32* %13, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %117

162:                                              ; preds = %117
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = load i32, i32* %19, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @PACKET_ID_LOSSY_GROUPCHAT, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = load i32, i32* %19, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32*, i32** %9, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i64 @send_lossy_group_peer(i32 %165, i32 %173, i32 %174, i32 %182, i32* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %162
  %188 = load i32, i32* %14, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %14, align 4
  br label %190

190:                                              ; preds = %187, %162
  store i32 0, i32* %25, align 4
  store i64 -1, i64* %20, align 8
  store i32 0, i32* %13, align 4
  br label %191

191:                                              ; preds = %233, %190
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp ult i32 %192, %193
  br i1 %194, label %195, label %236

195:                                              ; preds = %191
  %196 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %197 = zext i32 %196 to i64
  %198 = call i8* @llvm.stacksave()
  store i8* %198, i8** %26, align 8
  %199 = alloca i32, i64 %197, align 16
  store i64 %197, i64* %27, align 8
  %200 = load i32, i32* @crypto_box_PUBLICKEYBYTES, align 4
  %201 = zext i32 %200 to i64
  %202 = alloca i32, i64 %201, align 16
  store i64 %201, i64* %28, align 8
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = load i32, i32* %13, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %40, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @get_friendcon_public_keys(i32* %199, i32* %202, i32 %205, i32 %216)
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = call i64 @calculate_comp_value(i32* %199, i32* %220)
  store i64 %221, i64* %29, align 8
  %222 = load i64, i64* %29, align 8
  %223 = load i64, i64* %20, align 8
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %225, label %231

225:                                              ; preds = %195
  %226 = load i32, i32* %13, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %40, i64 %227
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %25, align 4
  %230 = load i64, i64* %29, align 8
  store i64 %230, i64* %20, align 8
  br label %231

231:                                              ; preds = %225, %195
  %232 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %232)
  br label %233

233:                                              ; preds = %231
  %234 = load i32, i32* %13, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %13, align 4
  br label %191

236:                                              ; preds = %191
  %237 = load i32, i32* %25, align 4
  %238 = load i32, i32* %19, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i32, i32* %14, align 4
  store i32 %241, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %272

242:                                              ; preds = %236
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = load i32, i32* %25, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @PACKET_ID_LOSSY_GROUPCHAT, align 4
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %256, align 8
  %258 = load i32, i32* %25, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load i32*, i32** %9, align 8
  %264 = load i32, i32* %10, align 4
  %265 = call i64 @send_lossy_group_peer(i32 %245, i32 %253, i32 %254, i32 %262, i32* %263, i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %242
  %268 = load i32, i32* %14, align 4
  %269 = add i32 %268, 1
  store i32 %269, i32* %14, align 4
  br label %270

270:                                              ; preds = %267, %242
  %271 = load i32, i32* %14, align 4
  store i32 %271, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %272

272:                                              ; preds = %270, %240, %114
  %273 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %273)
  br label %274

274:                                              ; preds = %272, %35
  %275 = load i32, i32* %6, align 4
  ret i32 %275
}

declare dso_local %struct.TYPE_8__* @get_group_c(%struct.TYPE_9__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @send_lossy_group_peer(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @get_friendcon_public_keys(i32*, i32*, i32, i32) #1

declare dso_local i64 @calculate_comp_value(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
