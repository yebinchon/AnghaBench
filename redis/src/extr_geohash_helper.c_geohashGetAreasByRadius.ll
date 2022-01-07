; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geohash_helper.c_geohashGetAreasByRadius.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geohash_helper.c_geohashGetAreasByRadius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__, %struct.TYPE_12__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { double, double }
%struct.TYPE_9__ = type { double, double }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @geohashGetAreasByRadius(%struct.TYPE_11__* noalias sret %0, double %1, double %2, double %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__, align 4
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca [4 x double], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__, align 8
  %21 = alloca %struct.TYPE_13__, align 8
  %22 = alloca %struct.TYPE_13__, align 8
  %23 = alloca %struct.TYPE_13__, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  store double %3, double* %7, align 8
  %24 = load double, double* %5, align 8
  %25 = load double, double* %6, align 8
  %26 = load double, double* %7, align 8
  %27 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 0
  %28 = call i32 @geohashBoundingBox(double %24, double %25, double %26, double* %27)
  %29 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 0
  %30 = load double, double* %29, align 16
  store double %30, double* %13, align 8
  %31 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 1
  %32 = load double, double* %31, align 8
  store double %32, double* %15, align 8
  %33 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 2
  %34 = load double, double* %33, align 16
  store double %34, double* %14, align 8
  %35 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 3
  %36 = load double, double* %35, align 8
  store double %36, double* %16, align 8
  %37 = load double, double* %7, align 8
  %38 = load double, double* %6, align 8
  %39 = call i32 @geohashEstimateStepsByRadius(double %37, double %38)
  store i32 %39, i32* %18, align 4
  %40 = call i32 @geohashGetCoordRange(i32* %8, i32* %9)
  %41 = load double, double* %5, align 8
  %42 = load double, double* %6, align 8
  %43 = load i32, i32* %18, align 4
  %44 = call i32 @geohashEncode(i32* %8, i32* %9, double %41, double %42, i32 %43, i32* %10)
  %45 = call i32 @geohashNeighbors(i32* %10, %struct.TYPE_12__* %11)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @geohashDecode(i32 %46, i32 %47, i32 %48, %struct.TYPE_13__* %12)
  store i32 0, i32* %19, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @geohashDecode(i32 %50, i32 %51, i32 %53, %struct.TYPE_13__* %20)
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @geohashDecode(i32 %55, i32 %56, i32 %58, %struct.TYPE_13__* %21)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @geohashDecode(i32 %60, i32 %61, i32 %63, %struct.TYPE_13__* %22)
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @geohashDecode(i32 %65, i32 %66, i32 %68, %struct.TYPE_13__* %23)
  %70 = load double, double* %5, align 8
  %71 = load double, double* %6, align 8
  %72 = load double, double* %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load double, double* %74, align 8
  %76 = call double @geohashGetDistance(double %70, double %71, double %72, double %75)
  %77 = load double, double* %7, align 8
  %78 = fcmp olt double %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %4
  store i32 1, i32* %19, align 4
  br label %80

80:                                               ; preds = %79, %4
  %81 = load double, double* %5, align 8
  %82 = load double, double* %6, align 8
  %83 = load double, double* %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load double, double* %85, align 8
  %87 = call double @geohashGetDistance(double %81, double %82, double %83, double %86)
  %88 = load double, double* %7, align 8
  %89 = fcmp olt double %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  store i32 1, i32* %19, align 4
  br label %91

91:                                               ; preds = %90, %80
  %92 = load double, double* %5, align 8
  %93 = load double, double* %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = load double, double* %6, align 8
  %98 = call double @geohashGetDistance(double %92, double %93, double %96, double %97)
  %99 = load double, double* %7, align 8
  %100 = fcmp olt double %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  store i32 1, i32* %19, align 4
  br label %102

102:                                              ; preds = %101, %91
  %103 = load double, double* %5, align 8
  %104 = load double, double* %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load double, double* %106, align 8
  %108 = load double, double* %6, align 8
  %109 = call double @geohashGetDistance(double %103, double %104, double %107, double %108)
  %110 = load double, double* %7, align 8
  %111 = fcmp olt double %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  store i32 1, i32* %19, align 4
  br label %113

113:                                              ; preds = %112, %102
  %114 = load i32, i32* %18, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = load i32, i32* %19, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load i32, i32* %18, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %18, align 4
  %122 = load double, double* %5, align 8
  %123 = load double, double* %6, align 8
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @geohashEncode(i32* %8, i32* %9, double %122, double %123, i32 %124, i32* %10)
  %126 = call i32 @geohashNeighbors(i32* %10, %struct.TYPE_12__* %11)
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @geohashDecode(i32 %127, i32 %128, i32 %129, %struct.TYPE_13__* %12)
  br label %131

131:                                              ; preds = %119, %116, %113
  %132 = load i32, i32* %18, align 4
  %133 = icmp sge i32 %132, 2
  br i1 %133, label %134, label %199

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load double, double* %136, align 8
  %138 = load double, double* %15, align 8
  %139 = fcmp olt double %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @GZERO(i32 %142)
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @GZERO(i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @GZERO(i32 %148)
  br label %150

150:                                              ; preds = %140, %134
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load double, double* %152, align 8
  %154 = load double, double* %16, align 8
  %155 = fcmp ogt double %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 6
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @GZERO(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @GZERO(i32 %161)
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @GZERO(i32 %164)
  br label %166

166:                                              ; preds = %156, %150
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  %169 = load double, double* %168, align 8
  %170 = load double, double* %13, align 8
  %171 = fcmp olt double %169, %170
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @GZERO(i32 %174)
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @GZERO(i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @GZERO(i32 %180)
  br label %182

182:                                              ; preds = %172, %166
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load double, double* %184, align 8
  %186 = load double, double* %14, align 8
  %187 = fcmp ogt double %185, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @GZERO(i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @GZERO(i32 %193)
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @GZERO(i32 %196)
  br label %198

198:                                              ; preds = %188, %182
  br label %199

199:                                              ; preds = %198, %131
  %200 = load i32, i32* %10, align 4
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 2
  store i32 %200, i32* %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 1
  %203 = bitcast %struct.TYPE_12__* %202 to i8*
  %204 = bitcast %struct.TYPE_12__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %203, i8* align 4 %204, i64 32, i1 false)
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %0, i32 0, i32 0
  %206 = bitcast %struct.TYPE_13__* %205 to i8*
  %207 = bitcast %struct.TYPE_13__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %206, i8* align 8 %207, i64 32, i1 false)
  ret void
}

declare dso_local i32 @geohashBoundingBox(double, double, double, double*) #1

declare dso_local i32 @geohashEstimateStepsByRadius(double, double) #1

declare dso_local i32 @geohashGetCoordRange(i32*, i32*) #1

declare dso_local i32 @geohashEncode(i32*, i32*, double, double, i32, i32*) #1

declare dso_local i32 @geohashNeighbors(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @geohashDecode(i32, i32, i32, %struct.TYPE_13__*) #1

declare dso_local double @geohashGetDistance(double, double, double, double) #1

declare dso_local i32 @GZERO(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
