; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geo.c_membersOfAllNeighbors.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geo.c_membersOfAllNeighbors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__, %struct.TYPE_18__ }
%struct.TYPE_13__ = type { %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"neighbors[%d] is zero\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"neighbors[%d]:\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"area.longitude.min: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"area.longitude.max: %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"area.latitude.min: %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"area.latitude.max: %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Skipping processing of %d, same as previous\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @membersOfAllNeighbors(i32* %0, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %1, double %2, double %3, double %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca [9 x %struct.TYPE_18__], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_19__, align 4
  store i32* %0, i32** %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store double %4, double* %10, align 8
  store i32* %5, i32** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %22 = bitcast %struct.TYPE_18__* %20 to i8*
  %23 = bitcast %struct.TYPE_18__* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 8 %23, i64 16, i1 false)
  %24 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 1
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 7
  %27 = bitcast %struct.TYPE_18__* %24 to i8*
  %28 = bitcast %struct.TYPE_18__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 8 %28, i64 16, i1 false)
  %29 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 2
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 6
  %32 = bitcast %struct.TYPE_18__* %29 to i8*
  %33 = bitcast %struct.TYPE_18__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 3
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 5
  %37 = bitcast %struct.TYPE_18__* %34 to i8*
  %38 = bitcast %struct.TYPE_18__* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 4
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 4
  %42 = bitcast %struct.TYPE_18__* %39 to i8*
  %43 = bitcast %struct.TYPE_18__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %42, i8* align 8 %43, i64 16, i1 false)
  %44 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 5
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 3
  %47 = bitcast %struct.TYPE_18__* %44 to i8*
  %48 = bitcast %struct.TYPE_18__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %47, i8* align 8 %48, i64 16, i1 false)
  %49 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 6
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = bitcast %struct.TYPE_18__* %49 to i8*
  %53 = bitcast %struct.TYPE_18__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %52, i8* align 8 %53, i64 16, i1 false)
  %54 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 7
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = bitcast %struct.TYPE_18__* %54 to i8*
  %58 = bitcast %struct.TYPE_18__* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %57, i8* align 8 %58, i64 16, i1 false)
  %59 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = bitcast %struct.TYPE_18__* %59 to i8*
  %63 = bitcast %struct.TYPE_18__* %61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %62, i8* align 8 %63, i64 16, i1 false)
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %176, %6
  %65 = load i32, i32* %13, align 4
  %66 = zext i32 %65 to i64
  %67 = icmp ult i64 %66, 9
  br i1 %67, label %68, label %179

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 %70
  %72 = bitcast %struct.TYPE_18__* %71 to { i64, i64 }*
  %73 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 16
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %72, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @HASHISZERO(i64 %74, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %68
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %79
  br label %176

86:                                               ; preds = %68
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %86
  %90 = call i32 @geohashGetCoordRange(i32* %17, i32* %18)
  %91 = bitcast %struct.TYPE_19__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %91, i8 0, i64 20, i1 false)
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 %95
  %97 = bitcast %struct.TYPE_18__* %96 to { i64, i64 }*
  %98 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 16
  %100 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %97, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @geohashDecode(i32 %92, i32 %93, i64 %99, i64 %101, %struct.TYPE_19__* %19)
  %103 = load i32, i32* %13, align 4
  %104 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  %121 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %122

122:                                              ; preds = %89, %86
  %123 = load i32, i32* %15, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %156

125:                                              ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 16
  %131 = load i32, i32* %15, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 16
  %136 = icmp eq i64 %130, %135
  br i1 %136, label %137, label %156

137:                                              ; preds = %125
  %138 = load i32, i32* %13, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %142, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %137
  %150 = load i32, i32* %16, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %13, align 4
  %154 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %152, %149
  br label %176

156:                                              ; preds = %137, %125, %122
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %13, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [9 x %struct.TYPE_18__], [9 x %struct.TYPE_18__]* %12, i64 0, i64 %159
  %161 = load i32*, i32** %11, align 8
  %162 = load double, double* %8, align 8
  %163 = load double, double* %9, align 8
  %164 = load double, double* %10, align 8
  %165 = bitcast %struct.TYPE_18__* %160 to { i64, i64 }*
  %166 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 16
  %168 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %165, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @membersOfGeoHashBox(i32* %157, i64 %167, i64 %169, i32* %161, double %162, double %163, double %164)
  %171 = load i32, i32* %14, align 4
  %172 = zext i32 %171 to i64
  %173 = add nsw i64 %172, %170
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %13, align 4
  store i32 %175, i32* %15, align 4
  br label %176

176:                                              ; preds = %156, %155, %85
  %177 = load i32, i32* %13, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %13, align 4
  br label %64

179:                                              ; preds = %64
  %180 = load i32, i32* %14, align 4
  ret i32 %180
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @HASHISZERO(i64, i64) #2

declare dso_local i32 @D(i8*, ...) #2

declare dso_local i32 @geohashGetCoordRange(i32*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @geohashDecode(i32, i32, i64, i64, %struct.TYPE_19__*) #2

declare dso_local i64 @membersOfGeoHashBox(i32*, i64, i64, i32*, double, double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
