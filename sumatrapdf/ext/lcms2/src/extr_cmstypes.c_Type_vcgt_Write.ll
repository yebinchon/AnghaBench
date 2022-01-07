; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_vcgt_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_vcgt_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64* }
%struct.TYPE_8__ = type { i64, i64, i64 }

@cmsVideoCardGammaFormulaType = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@cmsVideoCardGammaTableType = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i8*, i32)* @Type_vcgt_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_vcgt_Write(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %19, %struct.TYPE_7__*** %12, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %21, i64 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = call i32 @cmsGetToneCurveParametricType(i32 %20, %struct.TYPE_7__* %23)
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %129

26:                                               ; preds = %5
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %28, i64 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = call i32 @cmsGetToneCurveParametricType(i32 %27, %struct.TYPE_7__* %30)
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %33, label %129

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %35, i64 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = call i32 @cmsGetToneCurveParametricType(i32 %34, %struct.TYPE_7__* %37)
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %129

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @cmsVideoCardGammaFormulaType, align 4
  %44 = call i32 @_cmsWriteUInt32Number(i32 %41, i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %6, align 4
  br label %198

48:                                               ; preds = %40
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %125, %48
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %52, label %128

52:                                               ; preds = %49
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %53, i64 %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  store i64 %64, i64* %65, align 8
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %66, i64 %68
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 5
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  store i64 %77, i64* %78, align 8
  %79 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %79, i64 %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @pow(i64 %90, i64 %92)
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %93, %95
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i64 %96, i64* %97, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @_cmsWrite15Fixed16Number(i32 %98, i32* %99, i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %52
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %6, align 4
  br label %198

106:                                              ; preds = %52
  %107 = load i32, i32* %7, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @_cmsWrite15Fixed16Number(i32 %107, i32* %108, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @FALSE, align 4
  store i32 %114, i32* %6, align 4
  br label %198

115:                                              ; preds = %106
  %116 = load i32, i32* %7, align 4
  %117 = load i32*, i32** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @_cmsWrite15Fixed16Number(i32 %116, i32* %117, i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %6, align 4
  br label %198

124:                                              ; preds = %115
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %49

128:                                              ; preds = %49
  br label %196

129:                                              ; preds = %33, %26, %5
  %130 = load i32, i32* %7, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* @cmsVideoCardGammaTableType, align 4
  %133 = call i32 @_cmsWriteUInt32Number(i32 %130, i32* %131, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %6, align 4
  br label %198

137:                                              ; preds = %129
  %138 = load i32, i32* %7, align 4
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @_cmsWriteUInt16Number(i32 %138, i32* %139, i32 3)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %6, align 4
  br label %198

144:                                              ; preds = %137
  %145 = load i32, i32* %7, align 4
  %146 = load i32*, i32** %9, align 8
  %147 = call i32 @_cmsWriteUInt16Number(i32 %145, i32* %146, i32 256)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %6, align 4
  br label %198

151:                                              ; preds = %144
  %152 = load i32, i32* %7, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @_cmsWriteUInt16Number(i32 %152, i32* %153, i32 2)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %6, align 4
  br label %198

158:                                              ; preds = %151
  store i32 0, i32* %13, align 4
  br label %159

159:                                              ; preds = %192, %158
  %160 = load i32, i32* %13, align 4
  %161 = icmp slt i32 %160, 3
  br i1 %161, label %162, label %195

162:                                              ; preds = %159
  store i32 0, i32* %14, align 4
  br label %163

163:                                              ; preds = %188, %162
  %164 = load i32, i32* %14, align 4
  %165 = icmp slt i32 %164, 256
  br i1 %165, label %166, label %191

166:                                              ; preds = %163
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %168, i64 %170
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sitofp i32 %173 to double
  %175 = fdiv double %174, 2.550000e+02
  %176 = call double @cmsEvalToneCurveFloat(i32 %167, %struct.TYPE_7__* %172, double %175)
  store double %176, double* %16, align 8
  %177 = load double, double* %16, align 8
  %178 = fmul double %177, 6.553500e+04
  %179 = call i32 @_cmsQuickSaturateWord(double %178)
  store i32 %179, i32* %17, align 4
  %180 = load i32, i32* %7, align 4
  %181 = load i32*, i32** %9, align 8
  %182 = load i32, i32* %17, align 4
  %183 = call i32 @_cmsWriteUInt16Number(i32 %180, i32* %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %166
  %186 = load i32, i32* @FALSE, align 4
  store i32 %186, i32* %6, align 4
  br label %198

187:                                              ; preds = %166
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %14, align 4
  br label %163

191:                                              ; preds = %163
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %159

195:                                              ; preds = %159
  br label %196

196:                                              ; preds = %195, %128
  %197 = load i32, i32* @TRUE, align 4
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %196, %185, %156, %149, %142, %135, %122, %113, %104, %46
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local i32 @cmsGetToneCurveParametricType(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @_cmsWriteUInt32Number(i32, i32*, i32) #1

declare dso_local i64 @pow(i64, i64) #1

declare dso_local i32 @_cmsWrite15Fixed16Number(i32, i32*, i64) #1

declare dso_local i32 @_cmsWriteUInt16Number(i32, i32*, i32) #1

declare dso_local double @cmsEvalToneCurveFloat(i32, %struct.TYPE_7__*, double) #1

declare dso_local i32 @_cmsQuickSaturateWord(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
