; ModuleID = '/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_process_gif_raster.c'
source_filename = "/home/carl/AnghaBench/stb/deprecated/extr_stb_image.c_stbi_process_gif_raster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"no clear code\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corrupt GIF\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"too many codes\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"illegal code in raster\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_6__*)* @stbi_process_gif_raster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stbi_process_gif_raster(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
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
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @get8u(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %16, align 4
  store i32 1, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %56, %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %40, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 %48, i32* %55, align 4
  br label %56

56:                                               ; preds = %32
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %28

59:                                               ; preds = %28
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 2
  store i32 %61, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %221, %59
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @get8(i32* %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %3, align 8
  br label %222

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %66
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %7, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @get8(i32* %82)
  %84 = load i32, i32* %15, align 4
  %85 = shl i32 %83, %84
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 8
  store i32 %89, i32* %15, align 4
  br label %221

90:                                               ; preds = %62
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %14, align 4
  %96 = ashr i32 %95, %94
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %90
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = shl i32 1, %106
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %220

111:                                              ; preds = %90
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, 1
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %132

116:                                              ; preds = %111
  %117 = load i32*, i32** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @skip(i32* %117, i32 %118)
  br label %120

120:                                              ; preds = %124, %116
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @get8(i32* %121)
  store i32 %122, i32* %7, align 4
  %123 = icmp sgt i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32*, i32** %4, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @skip(i32* %125, i32 %126)
  br label %120

128:                                              ; preds = %120
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  store i32* %131, i32** %3, align 8
  br label %222

132:                                              ; preds = %111
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp sle i32 %133, %134
  br i1 %135, label %136, label %216

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32* @epuc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %140, i32** %3, align 8
  br label %222

141:                                              ; preds = %136
  %142 = load i32, i32* %13, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %190

144:                                              ; preds = %141
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i64 %150
  store %struct.TYPE_5__* %151, %struct.TYPE_5__** %17, align 8
  %152 = load i32, i32* %12, align 4
  %153 = icmp sgt i32 %152, 4096
  br i1 %153, label %154, label %156

154:                                              ; preds = %144
  %155 = call i32* @epuc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %155, i32** %3, align 8
  br label %222

156:                                              ; preds = %144
  %157 = load i32, i32* %13, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %18, align 4
  %171 = load i32, i32* %12, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %156
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  br label %186

177:                                              ; preds = %156
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i32, i32* %18, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  br label %186

186:                                              ; preds = %177, %173
  %187 = phi i32 [ %176, %173 ], [ %185, %177 ]
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  br label %197

190:                                              ; preds = %141
  %191 = load i32, i32* %18, align 4
  %192 = load i32, i32* %12, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = call i32* @epuc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %195, i32** %3, align 8
  br label %222

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196, %186
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %199 = load i32, i32* %18, align 4
  %200 = call i32 @stbi_out_gif_code(%struct.TYPE_6__* %198, i32 %199)
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %11, align 4
  %203 = and i32 %201, %202
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %197
  %206 = load i32, i32* %12, align 4
  %207 = icmp sle i32 %206, 4095
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %10, align 4
  %211 = load i32, i32* %10, align 4
  %212 = shl i32 1, %211
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* %11, align 4
  br label %214

214:                                              ; preds = %208, %205, %197
  %215 = load i32, i32* %18, align 4
  store i32 %215, i32* %13, align 4
  br label %218

216:                                              ; preds = %132
  %217 = call i32* @epuc(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %217, i32** %3, align 8
  br label %222

218:                                              ; preds = %214
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219, %103
  br label %221

221:                                              ; preds = %220, %79
  br label %62

222:                                              ; preds = %216, %194, %154, %139, %128, %74
  %223 = load i32*, i32** %3, align 8
  ret i32* %223
}

declare dso_local i32 @get8u(i32*) #1

declare dso_local i32 @get8(i32*) #1

declare dso_local i32 @skip(i32*, i32) #1

declare dso_local i32* @epuc(i8*, i8*) #1

declare dso_local i32 @stbi_out_gif_code(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
