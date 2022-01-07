; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteSegmentedCurve.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_WriteSegmentedCurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i64*, i32*, i32 }

@cmsSigSegmentedCurve = common dso_local global i32 0, align 4
@cmsSigSampledCurveSeg = common dso_local global i64 0, align 8
@__const.WriteSegmentedCurve.ParamsByType = private unnamed_addr constant [3 x i32] [i32 4, i32 5, i32 5], align 4
@cmsSigFormulaCurveSeg = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_4__*)* @WriteSegmentedCurve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteSegmentedCurve(i32 %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @cmsSigSegmentedCurve, align 4
  %24 = call i32 @_cmsWriteUInt32Number(i32 %21, i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %209

27:                                               ; preds = %3
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @_cmsWriteUInt32Number(i32 %28, i32* %29, i32 0)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %209

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @_cmsWriteUInt16Number(i32 %34, i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %209

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @_cmsWriteUInt16Number(i32 %41, i32* %42, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %209

46:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %65, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @_cmsWriteFloat32Number(i32 %53, i32* %54, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  br label %209

64:                                               ; preds = %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %47

68:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %204, %68
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %207

75:                                               ; preds = %69
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %78
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %12, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %137

84:                                               ; preds = %75
  %85 = load i32, i32* %5, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i64, i64* @cmsSigSampledCurveSeg, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @_cmsWriteUInt32Number(i32 %85, i32* %86, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %209

92:                                               ; preds = %84
  %93 = load i32, i32* %5, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @_cmsWriteUInt32Number(i32 %93, i32* %94, i32 0)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  br label %209

98:                                               ; preds = %92
  %99 = load i32, i32* %5, align 4
  %100 = load i32*, i32** %6, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @_cmsWriteUInt32Number(i32 %99, i32* %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  br label %209

107:                                              ; preds = %98
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %133, %107
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %109, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %108
  %120 = load i32, i32* %5, align 4
  %121 = load i32*, i32** %6, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @_cmsWriteFloat32Number(i32 %120, i32* %121, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %119
  br label %209

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %9, align 4
  br label %108

136:                                              ; preds = %108
  br label %203

137:                                              ; preds = %75
  %138 = bitcast [3 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 4 bitcast ([3 x i32]* @__const.WriteSegmentedCurve.ParamsByType to i8*), i64 12, i1 false)
  %139 = load i32, i32* %5, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = load i64, i64* @cmsSigFormulaCurveSeg, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 @_cmsWriteUInt32Number(i32 %139, i32* %140, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %137
  br label %209

146:                                              ; preds = %137
  %147 = load i32, i32* %5, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @_cmsWriteUInt32Number(i32 %147, i32* %148, i32 0)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  br label %209

152:                                              ; preds = %146
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 6
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp sgt i32 %157, 2
  br i1 %158, label %162, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %13, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159, %152
  br label %209

163:                                              ; preds = %159
  %164 = load i32, i32* %5, align 4
  %165 = load i32*, i32** %6, align 8
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @_cmsWriteUInt16Number(i32 %164, i32* %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %163
  br label %209

170:                                              ; preds = %163
  %171 = load i32, i32* %5, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = call i32 @_cmsWriteUInt16Number(i32 %171, i32* %172, i32 0)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  br label %209

176:                                              ; preds = %170
  store i32 0, i32* %9, align 4
  br label %177

177:                                              ; preds = %199, %176
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %178, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %177
  %185 = load i32, i32* %5, align 4
  %186 = load i32*, i32** %6, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  %189 = load i64*, i64** %188, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = call i32 @_cmsWriteFloat32Number(i32 %185, i32* %186, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %184
  br label %209

198:                                              ; preds = %184
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %177

202:                                              ; preds = %177
  br label %203

203:                                              ; preds = %202, %136
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %69

207:                                              ; preds = %69
  %208 = load i32, i32* @TRUE, align 4
  store i32 %208, i32* %4, align 4
  br label %211

209:                                              ; preds = %197, %175, %169, %162, %151, %145, %131, %106, %97, %91, %63, %45, %39, %32, %26
  %210 = load i32, i32* @FALSE, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %209, %207
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @_cmsWriteUInt32Number(i32, i32*, i32) #1

declare dso_local i32 @_cmsWriteUInt16Number(i32, i32*, i32) #1

declare dso_local i32 @_cmsWriteFloat32Number(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
