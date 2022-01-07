; ModuleID = '/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_fastcover.c_FASTCOVER_ctx_init.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/dictBuilder/extr_fastcover.c_FASTCOVER_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32, i32, i32, i64, i32, i32, i64*, i32*, i32, i32* }

@FASTCOVER_MAX_SAMPLES_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Total samples size is too large (%u MB), maximum size is %u MB\0A\00", align 1
@srcSize_wrong = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Total number of training samples is %u and is invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Total number of testing samples is %u and is invalid.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Training on %u samples of total size %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Testing on %u samples of total size %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to allocate scratch buffers \0A\00", align 1
@memory_allocation = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to allocate frequency table \0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Computing frequencies\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i8*, i64*, i32, i32, double, i32, i32)* @FASTCOVER_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FASTCOVER_ctx_init(%struct.TYPE_6__* %0, i8* %1, i64* %2, i32 %3, i32 %4, double %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store double %5, double* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %18, align 8
  %27 = load i64*, i64** %12, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call i64 @COVER_sum(i64* %27, i32 %28)
  store i64 %29, i64* %19, align 8
  %30 = load double, double* %15, align 8
  %31 = fcmp olt double %30, 1.000000e+00
  br i1 %31, label %32, label %38

32:                                               ; preds = %8
  %33 = load i32, i32* %13, align 4
  %34 = uitofp i32 %33 to double
  %35 = load double, double* %15, align 8
  %36 = fmul double %34, %35
  %37 = fptoui double %36 to i32
  br label %40

38:                                               ; preds = %8
  %39 = load i32, i32* %13, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i32 [ %37, %32 ], [ %39, %38 ]
  store i32 %41, i32* %20, align 4
  %42 = load double, double* %15, align 8
  %43 = fcmp olt double %42, 1.000000e+00
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %20, align 4
  %47 = sub i32 %45, %46
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %47, %44 ], [ %49, %48 ]
  store i32 %51, i32* %21, align 4
  %52 = load double, double* %15, align 8
  %53 = fcmp olt double %52, 1.000000e+00
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64*, i64** %12, align 8
  %56 = load i32, i32* %20, align 4
  %57 = call i64 @COVER_sum(i64* %55, i32 %56)
  br label %60

58:                                               ; preds = %50
  %59 = load i64, i64* %19, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi i64 [ %57, %54 ], [ %59, %58 ]
  store i64 %61, i64* %22, align 8
  %62 = load double, double* %15, align 8
  %63 = fcmp olt double %62, 1.000000e+00
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i64*, i64** %12, align 8
  %66 = load i32, i32* %20, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i32, i32* %21, align 4
  %70 = call i64 @COVER_sum(i64* %68, i32 %69)
  br label %73

71:                                               ; preds = %60
  %72 = load i64, i64* %19, align 8
  br label %73

73:                                               ; preds = %71, %64
  %74 = phi i64 [ %70, %64 ], [ %72, %71 ]
  store i64 %74, i64* %23, align 8
  %75 = load i64, i64* %19, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i64 @MAX(i32 %76, i32 4)
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %19, align 8
  %81 = load i32, i32* @FASTCOVER_MAX_SAMPLES_SIZE, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp uge i64 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %79, %73
  %85 = load i64, i64* %19, align 8
  %86 = lshr i64 %85, 20
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @FASTCOVER_MAX_SAMPLES_SIZE, align 4
  %89 = ashr i32 %88, 20
  %90 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %89)
  %91 = load i32, i32* @srcSize_wrong, align 4
  %92 = call i64 @ERROR(i32 %91)
  store i64 %92, i64* %9, align 8
  br label %229

93:                                               ; preds = %79
  %94 = load i32, i32* %20, align 4
  %95 = icmp ult i32 %94, 5
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %20, align 4
  %98 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @srcSize_wrong, align 4
  %100 = call i64 @ERROR(i32 %99)
  store i64 %100, i64* %9, align 8
  br label %229

101:                                              ; preds = %93
  %102 = load i32, i32* %21, align 4
  %103 = icmp ult i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* %21, align 4
  %106 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @srcSize_wrong, align 4
  %108 = call i64 @ERROR(i32 %107)
  store i64 %108, i64* %9, align 8
  br label %229

109:                                              ; preds = %101
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %111 = call i32 @memset(%struct.TYPE_6__* %110, i32 0, i32 72)
  %112 = load i32, i32* %20, align 4
  %113 = load i64, i64* %22, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %112, i32 %114)
  %116 = load i32, i32* %21, align 4
  %117 = load i64, i64* %23, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %118)
  %120 = load i32*, i32** %18, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 10
  store i32* %120, i32** %122, align 8
  %123 = load i64*, i64** %12, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  store i64* %123, i64** %125, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* %20, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %21, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 8
  %135 = load i64, i64* %22, align 8
  %136 = load i32, i32* %14, align 4
  %137 = call i64 @MAX(i32 %136, i32 4)
  %138 = sub i64 %135, %137
  %139 = add i64 %138, 1
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 4
  store i64 %139, i64* %141, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 6
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 9
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %13, align 4
  %152 = add i32 %151, 1
  %153 = call i64 @calloc(i32 %152, i32 8)
  %154 = inttoptr i64 %153 to i64*
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 7
  store i64* %154, i64** %156, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 7
  %159 = load i64*, i64** %158, align 8
  %160 = icmp eq i64* %159, null
  br i1 %160, label %161, label %167

161:                                              ; preds = %109
  %162 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %164 = call i32 @FASTCOVER_ctx_destroy(%struct.TYPE_6__* %163)
  %165 = load i32, i32* @memory_allocation, align 4
  %166 = call i64 @ERROR(i32 %165)
  store i64 %166, i64* %9, align 8
  br label %229

167:                                              ; preds = %109
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 7
  %170 = load i64*, i64** %169, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  store i64 0, i64* %171, align 8
  %172 = load i32, i32* %13, align 4
  %173 = icmp uge i32 %172, 5
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  store i32 1, i32* %24, align 4
  br label %176

176:                                              ; preds = %202, %167
  %177 = load i32, i32* %24, align 4
  %178 = load i32, i32* %13, align 4
  %179 = icmp ule i32 %177, %178
  br i1 %179, label %180, label %205

180:                                              ; preds = %176
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 7
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %24, align 4
  %185 = sub i32 %184, 1
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %183, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %12, align 8
  %190 = load i32, i32* %24, align 4
  %191 = sub i32 %190, 1
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %189, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %188, %194
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 7
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %24, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  store i64 %195, i64* %201, align 8
  br label %202

202:                                              ; preds = %180
  %203 = load i32, i32* %24, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %24, align 4
  br label %176

205:                                              ; preds = %176
  %206 = load i32, i32* %16, align 4
  %207 = shl i32 1, %206
  %208 = call i64 @calloc(i32 %207, i32 4)
  %209 = inttoptr i64 %208 to i32*
  %210 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 8
  store i32* %209, i32** %211, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 8
  %214 = load i32*, i32** %213, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %222

216:                                              ; preds = %205
  %217 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %219 = call i32 @FASTCOVER_ctx_destroy(%struct.TYPE_6__* %218)
  %220 = load i32, i32* @memory_allocation, align 4
  %221 = call i64 @ERROR(i32 %220)
  store i64 %221, i64* %9, align 8
  br label %229

222:                                              ; preds = %205
  %223 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 8
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %228 = call i32 @FASTCOVER_computeFrequency(i32* %226, %struct.TYPE_6__* %227)
  store i64 0, i64* %9, align 8
  br label %229

229:                                              ; preds = %222, %216, %161, %104, %96, %84
  %230 = load i64, i64* %9, align 8
  ret i64 %230
}

declare dso_local i64 @COVER_sum(i64*, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @FASTCOVER_ctx_destroy(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FASTCOVER_computeFrequency(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
