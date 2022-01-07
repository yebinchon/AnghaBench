; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_create_png_image.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_create_png_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@stbi_png_partial = common dso_local global i32 0, align 4
@__const.create_png_image.xorig = private unnamed_addr constant [7 x i32] [i32 0, i32 4, i32 0, i32 2, i32 0, i32 1, i32 0], align 16
@__const.create_png_image.yorig = private unnamed_addr constant [7 x i32] [i32 0, i32 0, i32 4, i32 0, i32 2, i32 0, i32 1], align 16
@__const.create_png_image.xspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 4, i32 4, i32 2, i32 2, i32 1], align 16
@__const.create_png_image.yspc = private unnamed_addr constant [7 x i32] [i32 8, i32 8, i32 8, i32 4, i32 4, i32 2, i32 2], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32, i32, i32)* @create_png_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_png_image(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [7 x i32], align 16
  %16 = alloca [7 x i32], align 16
  %17 = alloca [7 x i32], align 16
  %18 = alloca [7 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %5
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @create_png_image_raw(%struct.TYPE_6__* %26, i32* %27, i32 %28, i32 %29, i32 %34, i32 %39)
  store i32 %40, i32* %6, align 4
  br label %225

41:                                               ; preds = %5
  %42 = load i32, i32* @stbi_png_partial, align 4
  store i32 %42, i32* %14, align 4
  store i32 0, i32* @stbi_png_partial, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %47, %52
  %54 = load i32, i32* %10, align 4
  %55 = mul nsw i32 %53, %54
  %56 = call i64 @malloc(i32 %55)
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %217, %41
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 7
  br i1 %60, label %61, label %220

61:                                               ; preds = %58
  %62 = bitcast [7 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %62, i8* align 16 bitcast ([7 x i32]* @__const.create_png_image.xorig to i8*), i64 28, i1 false)
  %63 = bitcast [7 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %63, i8* align 16 bitcast ([7 x i32]* @__const.create_png_image.yorig to i8*), i64 28, i1 false)
  %64 = bitcast [7 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %64, i8* align 16 bitcast ([7 x i32]* @__const.create_png_image.xspc to i8*), i64 28, i1 false)
  %65 = bitcast [7 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %65, i8* align 16 bitcast ([7 x i32]* @__const.create_png_image.yspc to i8*), i64 28, i1 false)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %70, %74
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %75, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = sdiv i32 %81, %85
  store i32 %86, i32* %21, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %91, %95
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %96, %100
  %102 = sub nsw i32 %101, 1
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sdiv i32 %102, %106
  store i32 %107, i32* %22, align 4
  %108 = load i32, i32* %21, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %216

110:                                              ; preds = %61
  %111 = load i32, i32* %22, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %216

113:                                              ; preds = %110
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %22, align 4
  %120 = call i32 @create_png_image_raw(%struct.TYPE_6__* %114, i32* %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @free(i32* %123)
  store i32 0, i32* %6, align 4
  br label %225

125:                                              ; preds = %113
  store i32 0, i32* %20, align 4
  br label %126

126:                                              ; preds = %191, %125
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %22, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %194

130:                                              ; preds = %126
  store i32 0, i32* %19, align 4
  br label %131

131:                                              ; preds = %187, %130
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %21, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %190

135:                                              ; preds = %131
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [7 x i32], [7 x i32]* %18, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %137, %141
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [7 x i32], [7 x i32]* %16, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %142, %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %147, %152
  %154 = load i32, i32* %10, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %136, i64 %156
  %158 = load i32, i32* %19, align 4
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = mul nsw i32 %158, %162
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %163, %167
  %169 = load i32, i32* %10, align 4
  %170 = mul nsw i32 %168, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %157, i64 %171
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %21, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load i32, i32* %19, align 4
  %180 = add nsw i32 %178, %179
  %181 = load i32, i32* %10, align 4
  %182 = mul nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %175, i64 %183
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @memcpy(i32* %172, i32* %184, i32 %185)
  br label %187

187:                                              ; preds = %135
  %188 = load i32, i32* %19, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %19, align 4
  br label %131

190:                                              ; preds = %131
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %20, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %20, align 4
  br label %126

194:                                              ; preds = %126
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @free(i32* %197)
  %199 = load i32, i32* %21, align 4
  %200 = load i32, i32* %10, align 4
  %201 = mul nsw i32 %199, %200
  %202 = add nsw i32 %201, 1
  %203 = load i32, i32* %22, align 4
  %204 = mul nsw i32 %202, %203
  %205 = load i32*, i32** %8, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32* %207, i32** %8, align 8
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* %10, align 4
  %210 = mul nsw i32 %208, %209
  %211 = add nsw i32 %210, 1
  %212 = load i32, i32* %22, align 4
  %213 = mul nsw i32 %211, %212
  %214 = load i32, i32* %9, align 4
  %215 = sub nsw i32 %214, %213
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %194, %110, %61
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %13, align 4
  br label %58

220:                                              ; preds = %58
  %221 = load i32*, i32** %12, align 8
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  store i32* %221, i32** %223, align 8
  %224 = load i32, i32* %14, align 4
  store i32 %224, i32* @stbi_png_partial, align 4
  store i32 1, i32* %6, align 4
  br label %225

225:                                              ; preds = %220, %122, %25
  %226 = load i32, i32* %6, align 4
  ret i32 %226
}

declare dso_local i32 @create_png_image_raw(%struct.TYPE_6__*, i32*, i32, i32, i32, i32) #1

declare dso_local i64 @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
