; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_moveto.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_path.c_fz_moveto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, float*, i32, %struct.TYPE_7__, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { float, float }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Cannot modify a packed path\00", align 1
@FZ_MOVETO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_moveto(i32* %0, %struct.TYPE_8__* %1, float %2, float %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %16 = call i32 @fz_throw(i32* %14, i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %17
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = call i64 @LAST_CMD(%struct.TYPE_8__* %23)
  %25 = load i64, i64* @FZ_MOVETO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %22
  %28 = load float, float* %7, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load float*, float** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %31, i64 %36
  store float %28, float* %37, align 4
  %38 = load float, float* %8, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load float*, float** %40, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %41, i64 %46
  store float %38, float* %47, align 4
  %48 = load float, float* %7, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store float %48, float* %51, align 4
  %52 = load float, float* %8, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store float %52, float* %55, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = bitcast %struct.TYPE_7__* %57 to i8*
  %61 = bitcast %struct.TYPE_7__* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 8, i1 false)
  br label %78

62:                                               ; preds = %22, %17
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = load i64, i64* @FZ_MOVETO, align 8
  %66 = call i32 @push_cmd(i32* %63, %struct.TYPE_8__* %64, i64 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %69 = load float, float* %7, align 4
  %70 = load float, float* %8, align 4
  %71 = call i32 @push_coord(i32* %67, %struct.TYPE_8__* %68, float %69, float %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 3
  %76 = bitcast %struct.TYPE_7__* %73 to i8*
  %77 = bitcast %struct.TYPE_7__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 8, i1 false)
  br label %78

78:                                               ; preds = %62, %27
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i64 @LAST_CMD(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @push_cmd(i32*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @push_coord(i32*, %struct.TYPE_8__*, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
