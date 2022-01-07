; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayEnforceDelayRules.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_subsdelay.c_SubsdelayEnforceDelayRules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @SubsdelayEnforceDelayRules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SubsdelayEnforceDelayRules(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %10, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %23, align 8
  store %struct.TYPE_10__** %24, %struct.TYPE_10__*** %3, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %4, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %72, %1
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %41
  %47 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %47, i64 %50
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %55, i64 %57
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i64 @__MAX(i64 %54, i64 %63)
  %65 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %65, i64 %68
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i64 %64, i64* %71, align 8
  br label %72

72:                                               ; preds = %46
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %41

75:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %138, %75
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %141

80:                                               ; preds = %76
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %134, %80
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %87, %88
  %90 = call i32 @__MIN(i32 %85, i32 %89)
  %91 = icmp slt i32 %84, %90
  br i1 %91, label %92, label %137

92:                                               ; preds = %83
  %93 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %93, i64 %95
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %102, i64 %104
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = sub nsw i64 %101, %108
  store i64 %109, i64* %6, align 8
  %110 = load i64, i64* %6, align 8
  %111 = icmp sle i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %92
  br label %134

113:                                              ; preds = %92
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %8, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %113
  %118 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %118, i64 %120
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %127, i64 %129
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  store i64 %126, i64* %132, align 8
  br label %133

133:                                              ; preds = %117, %113
  br label %137

134:                                              ; preds = %112
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %83

137:                                              ; preds = %133, %83
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %76

141:                                              ; preds = %76
  store i32 0, i32* %14, align 4
  br label %142

142:                                              ; preds = %204, %141
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %207

146:                                              ; preds = %142
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %149

149:                                              ; preds = %200, %146
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %153, %154
  %156 = call i32 @__MIN(i32 %151, i32 %155)
  %157 = icmp slt i32 %150, %156
  br i1 %157, label %158, label %203

158:                                              ; preds = %149
  %159 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %159, i64 %161
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %167 = load i32, i32* %15, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %166, i64 %168
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %165, %174
  store i64 %175, i64* %6, align 8
  %176 = load i64, i64* %6, align 8
  %177 = icmp sle i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %158
  br label %203

179:                                              ; preds = %158
  %180 = load i64, i64* %6, align 8
  %181 = load i64, i64* %9, align 8
  %182 = icmp slt i64 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %179
  %184 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %184, i64 %186
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %193, i64 %195
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 0
  store i64 %192, i64* %198, align 8
  br label %203

199:                                              ; preds = %179
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %149

203:                                              ; preds = %183, %178, %149
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %142

207:                                              ; preds = %142
  store i32 0, i32* %16, align 4
  br label %208

208:                                              ; preds = %243, %207
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* %5, align 4
  %212 = sub nsw i32 %210, %211
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %246

214:                                              ; preds = %208
  %215 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %216 = load i32, i32* %16, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %215, i64 %217
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %223, i64 %227
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = trunc i64 %233 to i32
  %235 = call i32 @__MIN(i32 %222, i32 %234)
  %236 = sext i32 %235 to i64
  %237 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %237, i64 %239
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  store i64 %236, i64* %242, align 8
  br label %243

243:                                              ; preds = %214
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %16, align 4
  br label %208

246:                                              ; preds = %208
  store i32 0, i32* %17, align 4
  br label %247

247:                                              ; preds = %258, %246
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* %4, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %261

251:                                              ; preds = %247
  %252 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %253 = load i32, i32* %17, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %252, i64 %254
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  %257 = call i32 @SubsdelayEntryNewStopValueUpdated(%struct.TYPE_10__* %256)
  br label %258

258:                                              ; preds = %251
  %259 = load i32, i32* %17, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %17, align 4
  br label %247

261:                                              ; preds = %247
  ret void
}

declare dso_local i64 @__MAX(i64, i64) #1

declare dso_local i32 @__MIN(i32, i32) #1

declare dso_local i32 @SubsdelayEntryNewStopValueUpdated(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
