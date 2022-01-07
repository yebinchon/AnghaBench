; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_fat.c_reclaim_file.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_fat.c_reclaim_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i8*, i8* }

@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Reclaiming unconnected clusters.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Internal error: num_refs going below zero\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Broke cycle at cluster %lu in free chain.\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"FSCK%04dREC\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Reclaimed %d unused cluster%s (%llu bytes) in %d chain%s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@rw = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reclaim_file(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca %struct.TYPE_15__, align 4
  %15 = alloca %struct.TYPE_17__, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %10, align 8
  %17 = load i64, i64* @verbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 2
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32* @alloc(i32 %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32* %31, i32 0, i32 %35)
  store i32 2, i32* %7, align 4
  br label %37

37:                                               ; preds = %98, %21
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %101

41:                                               ; preds = %37
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = call i32 @get_fat(%struct.TYPE_15__* %12, i32 %44, i32 %45, %struct.TYPE_16__* %46)
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32* @get_owner(%struct.TYPE_16__* %50, i32 %51)
  %53 = icmp ne i32* %52, null
  br i1 %53, label %97, label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %97

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 2
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %57
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %70 = call i32 @get_fat(%struct.TYPE_15__* %13, i32 %67, i32 %68, %struct.TYPE_16__* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32* @get_owner(%struct.TYPE_16__* %71, i32 %72)
  %74 = icmp ne i32* %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @FAT_IS_BAD(%struct.TYPE_16__* %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79, %75, %64
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @set_fat(%struct.TYPE_16__* %86, i32 %87, i32 -1)
  br label %96

89:                                               ; preds = %79
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %89, %85
  br label %97

97:                                               ; preds = %96, %57, %54, %41
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %37

101:                                              ; preds = %37
  br label %102

102:                                              ; preds = %166, %101
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @tag_free(%struct.TYPE_16__* %103, i32* %3, i32* %104, i32 %105)
  store i32 0, i32* %6, align 4
  store i32 2, i32* %7, align 4
  br label %107

107:                                              ; preds = %162, %102
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %165

111:                                              ; preds = %107
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %117 = call i32 @get_fat(%struct.TYPE_15__* %14, i32 %114, i32 %115, %struct.TYPE_16__* %116)
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %161

121:                                              ; preds = %111
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @FAT_IS_BAD(%struct.TYPE_16__* %122, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %161, label %127

127:                                              ; preds = %121
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32* @get_owner(%struct.TYPE_16__* %128, i32 %129)
  %131 = icmp ne i32* %130, null
  br i1 %131, label %161, label %132

132:                                              ; preds = %127
  %133 = load i32*, i32** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %137, align 4
  %140 = icmp ne i32 %138, 0
  br i1 %140, label %143, label %141

141:                                              ; preds = %132
  %142 = call i32 @die(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %141, %132
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @set_fat(%struct.TYPE_16__* %144, i32 %145, i32 -1)
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %150)
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %143
  br label %165

160:                                              ; preds = %143
  br label %161

161:                                              ; preds = %160, %127, %121, %111
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %7, align 4
  br label %107

165:                                              ; preds = %159, %107
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %102, label %169

169:                                              ; preds = %166
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 2, i32* %7, align 4
  br label %170

170:                                              ; preds = %234, %169
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %237

174:                                              ; preds = %170
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32* @get_owner(%struct.TYPE_16__* %175, i32 %176)
  %178 = icmp eq i32* %177, %3
  br i1 %178, label %179, label %233

179:                                              ; preds = %174
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %7, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %233, label %186

186:                                              ; preds = %179
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %5, align 4
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %190 = call i32 @alloc_rootdir_entry(%struct.TYPE_16__* %189, %struct.TYPE_17__* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store i32 %190, i32* %16, align 4
  %191 = load i32, i32* %7, align 4
  %192 = and i32 %191, 65535
  %193 = call i8* @htole16(i32 %192)
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  store i8* %193, i8** %194, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 32
  br i1 %198, label %199, label %204

199:                                              ; preds = %186
  %200 = load i32, i32* %7, align 4
  %201 = ashr i32 %200, 16
  %202 = call i8* @htole16(i32 %201)
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 1
  store i8* %202, i8** %203, align 8
  br label %204

204:                                              ; preds = %199, %186
  %205 = load i32, i32* %7, align 4
  store i32 %205, i32* %9, align 4
  br label %206

206:                                              ; preds = %226, %204
  %207 = load i32, i32* %9, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, -1
  br label %212

212:                                              ; preds = %209, %206
  %213 = phi i1 [ false, %206 ], [ %211, %209 ]
  br i1 %213, label %214, label %230

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @le32toh(i32 %216)
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = add i64 %217, %220
  %222 = call i32 @htole32(i64 %221)
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  store i32 %222, i32* %223, align 8
  %224 = load i32, i32* %4, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %4, align 4
  br label %226

226:                                              ; preds = %214
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %228 = load i32, i32* %9, align 4
  %229 = call i32 @next_cluster(%struct.TYPE_16__* %227, i32 %228)
  store i32 %229, i32* %9, align 4
  br label %206

230:                                              ; preds = %212
  %231 = load i32, i32* %16, align 4
  %232 = call i32 @fs_write(i32 %231, i32 24, %struct.TYPE_17__* %15)
  br label %233

233:                                              ; preds = %230, %179, %174
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %7, align 4
  br label %170

237:                                              ; preds = %170
  %238 = load i32, i32* %4, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %258

240:                                              ; preds = %237
  %241 = load i32, i32* %4, align 4
  %242 = load i32, i32* %4, align 4
  %243 = icmp eq i32 %242, 1
  %244 = zext i1 %243 to i64
  %245 = select i1 %243, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %246 = load i32, i32* %4, align 4
  %247 = sext i32 %246 to i64
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = mul i64 %247, %250
  %252 = load i32, i32* %5, align 4
  %253 = load i32, i32* %5, align 4
  %254 = icmp eq i32 %253, 1
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %241, i8* %245, i64 %251, i32 %252, i8* %256)
  br label %258

258:                                              ; preds = %240, %237
  %259 = load i32*, i32** %10, align 8
  %260 = call i32 @free(i32* %259)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @alloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @get_fat(%struct.TYPE_15__*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32* @get_owner(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @FAT_IS_BAD(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @set_fat(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @tag_free(%struct.TYPE_16__*, i32*, i32*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @alloc_rootdir_entry(%struct.TYPE_16__*, %struct.TYPE_17__*, i8*, i32) #1

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @htole32(i64) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i32 @next_cluster(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @fs_write(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
