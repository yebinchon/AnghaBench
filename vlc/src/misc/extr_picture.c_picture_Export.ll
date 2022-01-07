; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_picture.c_picture_Export.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_picture.c_picture_Export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }

@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picture_Export(i32* %0, %struct.TYPE_14__** %1, %struct.TYPE_12__* %2, %struct.TYPE_13__* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_14__**, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__, align 4
  %19 = alloca %struct.TYPE_12__, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %10, align 8
  store %struct.TYPE_14__** %1, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = bitcast %struct.TYPE_12__* %18 to i8*
  %33 = bitcast %struct.TYPE_12__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 36, i1 false)
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %37
  %45 = call i32 @memset(%struct.TYPE_12__* %19, i32 0, i32 36)
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* %14, align 4
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 8
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp ugt i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ugt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %20, align 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %21, align 4
  br label %67

62:                                               ; preds = %53, %44
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %20, align 4
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %62, %57
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %69, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %67
  %74 = load i32, i32* %20, align 4
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = mul i32 %74, %76
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = udiv i32 %77, %79
  store i32 %80, i32* %22, align 4
  %81 = load i32, i32* %21, align 4
  store i32 %81, i32* %23, align 4
  br label %91

82:                                               ; preds = %67
  %83 = load i32, i32* %20, align 4
  store i32 %83, i32* %22, align 4
  %84 = load i32, i32* %21, align 4
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul i32 %84, %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = udiv i32 %87, %89
  store i32 %90, i32* %23, align 4
  br label %91

91:                                               ; preds = %82, %73
  %92 = load i32, i32* %17, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %151

94:                                               ; preds = %91
  %95 = load i32, i32* %15, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %151

97:                                               ; preds = %94
  %98 = load i32, i32* %16, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %151

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  %102 = sitofp i32 %101 to float
  %103 = load i32, i32* %16, align 4
  %104 = sitofp i32 %103 to float
  %105 = fdiv float %102, %104
  store float %105, float* %24, align 4
  %106 = load i32, i32* %20, align 4
  %107 = uitofp i32 %106 to float
  %108 = load i32, i32* %21, align 4
  %109 = uitofp i32 %108 to float
  %110 = fdiv float %107, %109
  store float %110, float* %25, align 4
  %111 = load float, float* %24, align 4
  %112 = load float, float* %25, align 4
  %113 = fcmp ogt float %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %100
  %115 = load i32, i32* %20, align 4
  store i32 %115, i32* %26, align 4
  %116 = load i32, i32* %26, align 4
  %117 = uitofp i32 %116 to float
  %118 = load float, float* %24, align 4
  %119 = fdiv float %117, %118
  %120 = fptoui float %119 to i32
  store i32 %120, i32* %27, align 4
  br label %128

121:                                              ; preds = %100
  %122 = load i32, i32* %21, align 4
  store i32 %122, i32* %27, align 4
  %123 = load i32, i32* %27, align 4
  %124 = uitofp i32 %123 to float
  %125 = load float, float* %24, align 4
  %126 = fmul float %124, %125
  %127 = fptoui float %126 to i32
  store i32 %127, i32* %26, align 4
  br label %128

128:                                              ; preds = %121, %114
  %129 = load i32, i32* %15, align 4
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %16, align 4
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %26, align 4
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* %27, align 4
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %26, align 4
  %139 = sub i32 %137, %138
  %140 = udiv i32 %139, 2
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = add i32 %142, %140
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* %27, align 4
  %146 = sub i32 %144, %145
  %147 = udiv i32 %146, 2
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = add i32 %149, %147
  store i32 %150, i32* %148, align 4
  br label %170

151:                                              ; preds = %97, %94, %91
  %152 = load i32, i32* %15, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* %22, align 4
  br label %158

156:                                              ; preds = %151
  %157 = load i32, i32* %15, align 4
  br label %158

158:                                              ; preds = %156, %154
  %159 = phi i32 [ %155, %154 ], [ %157, %156 ]
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* %16, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %23, align 4
  br label %167

165:                                              ; preds = %158
  %166 = load i32, i32* %16, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  store i32 %168, i32* %169, align 4
  br label %170

170:                                              ; preds = %167, %128
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = icmp ugt i32 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %174
  %179 = load i32, i32* %21, align 4
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = mul i32 %179, %181
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = mul i32 %182, %184
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = udiv i32 %185, %187
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = udiv i32 %188, %190
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  store i32 %191, i32* %192, align 4
  br label %217

193:                                              ; preds = %174, %170
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %216

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = icmp ugt i32 %199, 0
  br i1 %200, label %201, label %216

201:                                              ; preds = %197
  %202 = load i32, i32* %20, align 4
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = mul i32 %202, %204
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = mul i32 %205, %207
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = udiv i32 %208, %210
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = udiv i32 %211, %213
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  store i32 %214, i32* %215, align 4
  br label %216

216:                                              ; preds = %201, %197, %193
  br label %217

217:                                              ; preds = %216, %178
  %218 = load i32*, i32** %10, align 8
  %219 = call i32* @image_HandlerCreate(i32* %218)
  store i32* %219, i32** %28, align 8
  %220 = load i32*, i32** %28, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %217
  %223 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %223, i32* %9, align 4
  br label %252

224:                                              ; preds = %217
  %225 = load i32*, i32** %28, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %227 = call %struct.TYPE_14__* @image_Write(i32* %225, %struct.TYPE_13__* %226, %struct.TYPE_12__* %18, %struct.TYPE_12__* %19)
  store %struct.TYPE_14__* %227, %struct.TYPE_14__** %29, align 8
  %228 = load i32*, i32** %28, align 8
  %229 = call i32 @image_HandlerDelete(i32* %228)
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %231 = icmp ne %struct.TYPE_14__* %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %224
  %233 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %233, i32* %9, align 4
  br label %252

234:                                              ; preds = %224
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  store i32 %237, i32* %241, align 4
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %243 = icmp ne %struct.TYPE_12__* %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %234
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %246 = bitcast %struct.TYPE_12__* %245 to i8*
  %247 = bitcast %struct.TYPE_12__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %246, i8* align 4 %247, i64 36, i1 false)
  br label %248

248:                                              ; preds = %244, %234
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %250 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %249, %struct.TYPE_14__** %250, align 8
  %251 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %251, i32* %9, align 4
  br label %252

252:                                              ; preds = %248, %232, %222
  %253 = load i32, i32* %9, align 4
  ret i32 %253
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32* @image_HandlerCreate(i32*) #2

declare dso_local %struct.TYPE_14__* @image_Write(i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*) #2

declare dso_local i32 @image_HandlerDelete(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
