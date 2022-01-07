; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_RegionDraw.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_RegionDraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_12__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_12__*)* @RegionDraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RegionDraw(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i64 0
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %5, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = call i32 @memset(i32* %42, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %270, %2
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %54, label %274

54:                                               ; preds = %51
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %90, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %68, %69
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %90, label %72

72:                                               ; preds = %60
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %86, %87
  %89 = icmp sgt i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %78, %72, %60, %54
  br label %270

91:                                               ; preds = %78
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = ashr i32 %94, 24
  %96 = and i32 %95, 255
  store i32 %96, i32* %10, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = ashr i32 %99, 16
  %101 = and i32 %100, 255
  store i32 %101, i32* %11, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = ashr i32 %104, 8
  %106 = and i32 %105, 255
  store i32 %106, i32* %12, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 255
  store i32 %110, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %111

111:                                              ; preds = %266, %91
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %269

117:                                              ; preds = %111
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %262, %117
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %265

124:                                              ; preds = %118
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 5
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %15, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %128, %131
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %127, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %13, align 4
  %139 = sub i32 255, %138
  %140 = load i32, i32* %16, align 4
  %141 = mul i32 %139, %140
  %142 = udiv i32 %141, 255
  store i32 %142, i32* %17, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %146, %149
  %151 = load i32, i32* %7, align 4
  %152 = sub nsw i32 %150, %151
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = mul nsw i32 %152, %155
  %157 = load i32, i32* %14, align 4
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %157, %160
  %162 = load i32, i32* %6, align 4
  %163 = sub nsw i32 %161, %162
  %164 = mul nsw i32 4, %163
  %165 = add nsw i32 %156, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %145, i64 %166
  store i32* %167, i32** %18, align 8
  %168 = load i32*, i32** %18, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %19, align 4
  %171 = load i32, i32* %19, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %124
  %174 = load i32, i32* %10, align 4
  %175 = load i32*, i32** %18, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32*, i32** %18, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 %177, i32* %179, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32*, i32** %18, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %17, align 4
  %184 = load i32*, i32** %18, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  store i32 %183, i32* %185, align 4
  br label %261

186:                                              ; preds = %124
  %187 = load i32*, i32** %18, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 3
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 255, %189
  %191 = load i32, i32* %17, align 4
  %192 = sub i32 255, %191
  %193 = mul i32 %190, %192
  %194 = udiv i32 %193, 255
  %195 = sub i32 255, %194
  %196 = load i32*, i32** %18, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  store i32 %195, i32* %197, align 4
  %198 = load i32*, i32** %18, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %260

202:                                              ; preds = %186
  %203 = load i32*, i32** %18, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %19, align 4
  %207 = mul i32 %205, %206
  %208 = load i32, i32* %17, align 4
  %209 = sub i32 255, %208
  %210 = mul i32 %207, %209
  %211 = udiv i32 %210, 255
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %17, align 4
  %214 = mul i32 %212, %213
  %215 = add i32 %211, %214
  %216 = load i32*, i32** %18, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 3
  %218 = load i32, i32* %217, align 4
  %219 = udiv i32 %215, %218
  %220 = load i32*, i32** %18, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %219, i32* %221, align 4
  %222 = load i32*, i32** %18, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %19, align 4
  %226 = mul i32 %224, %225
  %227 = load i32, i32* %17, align 4
  %228 = sub i32 255, %227
  %229 = mul i32 %226, %228
  %230 = udiv i32 %229, 255
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* %17, align 4
  %233 = mul i32 %231, %232
  %234 = add i32 %230, %233
  %235 = load i32*, i32** %18, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 3
  %237 = load i32, i32* %236, align 4
  %238 = udiv i32 %234, %237
  %239 = load i32*, i32** %18, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 1
  store i32 %238, i32* %240, align 4
  %241 = load i32*, i32** %18, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %19, align 4
  %245 = mul i32 %243, %244
  %246 = load i32, i32* %17, align 4
  %247 = sub i32 255, %246
  %248 = mul i32 %245, %247
  %249 = udiv i32 %248, 255
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* %17, align 4
  %252 = mul i32 %250, %251
  %253 = add i32 %249, %252
  %254 = load i32*, i32** %18, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 3
  %256 = load i32, i32* %255, align 4
  %257 = udiv i32 %253, %256
  %258 = load i32*, i32** %18, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 2
  store i32 %257, i32* %259, align 4
  br label %260

260:                                              ; preds = %202, %186
  br label %261

261:                                              ; preds = %260, %173
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %14, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %14, align 4
  br label %118

265:                                              ; preds = %118
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %15, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %15, align 4
  br label %111

269:                                              ; preds = %111
  br label %270

270:                                              ; preds = %269, %90
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 7
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %272, align 8
  store %struct.TYPE_12__* %273, %struct.TYPE_12__** %4, align 8
  br label %51

274:                                              ; preds = %51
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
