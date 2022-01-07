; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssm.c_InterpolateMissingSector.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssm.c_InterpolateMissingSector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, double }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }

@NSTEPS = common dso_local global i32 0, align 4
@GP_EMPTY = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SECTORS = common dso_local global i32 0, align 4
@GP_MODELED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_13__*, i32, i32)* @InterpolateMissingSector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @InterpolateMissingSector(i32 %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %26 = load i32, i32* @NSTEPS, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %15, align 8
  %30 = alloca %struct.TYPE_12__*, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %33, i64 %35
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @GP_EMPTY, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %4
  %46 = load i32, i32* @TRUE, align 4
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %195

47:                                               ; preds = %4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @FindNearSectors(%struct.TYPE_13__* %48, i32 %49, i32 %50, %struct.TYPE_12__** %30)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sitofp i32 %52 to double
  %54 = fadd double %53, 5.000000e-01
  %55 = fmul double %54, 3.600000e+02
  %56 = fptosi double %55 to i32
  %57 = load i32, i32* @SECTORS, align 4
  %58 = sdiv i32 %56, %57
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sitofp i32 %60 to double
  %62 = fadd double %61, 5.000000e-01
  %63 = fmul double %62, 1.800000e+02
  %64 = fptosi double %63 to i32
  %65 = load i32, i32* @SECTORS, align 4
  %66 = sdiv i32 %64, %65
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 2
  store double 5.000000e+01, double* %68, align 8
  %69 = call i32 @ToCartesian(i32* %11, %struct.TYPE_11__* %10)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @_cmsVEC3init(i32 %70, i32* %12, double 5.000000e+01, i32 0, i32 0)
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @LineOf2Points(i32 %72, i32* %13, i32* %11, i32* %12)
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  store double 0.000000e+00, double* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  store i32 0, i32* %76, align 4
  store i32 0, i32* %20, align 4
  br label %77

77:                                               ; preds = %165, %47
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %168

81:                                               ; preds = %77
  %82 = load i32, i32* %20, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %21, align 4
  br label %84

84:                                               ; preds = %161, %81
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %164

88:                                               ; preds = %84
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %30, i64 %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = call i32 @ToCartesian(i32* %24, %struct.TYPE_11__* %93)
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %30, i64 %96
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = call i32 @ToCartesian(i32* %25, %struct.TYPE_11__* %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @LineOf2Points(i32 %101, i32* %19, i32* %24, i32* %25)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @ClosestLineToLine(i32 %103, i32* %23, i32* %13, i32* %19)
  %105 = call i32 @ToSpherical(%struct.TYPE_11__* %18, i32* %23)
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %107 = load double, double* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %109 = load double, double* %108, align 8
  %110 = fcmp ogt double %107, %109
  br i1 %110, label %111, label %160

111:                                              ; preds = %88
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sitofp i32 %113 to double
  %115 = load i32, i32* %9, align 4
  %116 = sitofp i32 %115 to double
  %117 = fmul double %116, 1.800000e+02
  %118 = load i32, i32* @SECTORS, align 4
  %119 = sitofp i32 %118 to double
  %120 = fdiv double %117, %119
  %121 = fcmp oge double %114, %120
  br i1 %121, label %122, label %160

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sitofp i32 %124 to double
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  %128 = sitofp i32 %127 to double
  %129 = fmul double %128, 1.800000e+02
  %130 = load i32, i32* @SECTORS, align 4
  %131 = sitofp i32 %130 to double
  %132 = fdiv double %129, %131
  %133 = fcmp ole double %125, %132
  br i1 %133, label %134, label %160

134:                                              ; preds = %122
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sitofp i32 %136 to double
  %138 = load i32, i32* %8, align 4
  %139 = sitofp i32 %138 to double
  %140 = fmul double %139, 3.600000e+02
  %141 = load i32, i32* @SECTORS, align 4
  %142 = sitofp i32 %141 to double
  %143 = fdiv double %140, %142
  %144 = fcmp oge double %137, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %134
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sitofp i32 %147 to double
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  %151 = sitofp i32 %150 to double
  %152 = fmul double %151, 3.600000e+02
  %153 = load i32, i32* @SECTORS, align 4
  %154 = sitofp i32 %153 to double
  %155 = fdiv double %152, %154
  %156 = fcmp ole double %148, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %145
  %158 = bitcast %struct.TYPE_11__* %17 to i8*
  %159 = bitcast %struct.TYPE_11__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 16, i1 false)
  br label %160

160:                                              ; preds = %157, %145, %134, %122, %111, %88
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %21, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %21, align 4
  br label %84

164:                                              ; preds = %84
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %20, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %20, align 4
  br label %77

168:                                              ; preds = %77
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %171, i64 %173
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = bitcast %struct.TYPE_11__* %179 to i8*
  %181 = bitcast %struct.TYPE_11__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 8 %181, i64 16, i1 false)
  %182 = load i64, i64* @GP_MODELED, align 8
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %184, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %185, i64 %187
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  store i64 %182, i64* %193, align 8
  %194 = load i32, i32* @TRUE, align 4
  store i32 %194, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %195

195:                                              ; preds = %168, %45
  %196 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %196)
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FindNearSectors(%struct.TYPE_13__*, i32, i32, %struct.TYPE_12__**) #2

declare dso_local i32 @ToCartesian(i32*, %struct.TYPE_11__*) #2

declare dso_local i32 @_cmsVEC3init(i32, i32*, double, i32, i32) #2

declare dso_local i32 @LineOf2Points(i32, i32*, i32*, i32*) #2

declare dso_local i32 @ClosestLineToLine(i32, i32*, i32*, i32*) #2

declare dso_local i32 @ToSpherical(%struct.TYPE_11__*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
