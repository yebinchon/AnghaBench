; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_DecompressGetFormat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msrle32/extr_msrle32.c_DecompressGetFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"(%p,%p,%p)\0A\00", align 1
@ICERR_BADPARAM = common dso_local global i64 0, align 8
@ICERR_OK = common dso_local global i64 0, align 8
@ICERR_BADFORMAT = common dso_local global i64 0, align 8
@BI_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_11__*, %struct.TYPE_12__*)* @DecompressGetFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @DecompressGetFormat(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca { i64, i32 }, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %11, %struct.TYPE_11__* %12, %struct.TYPE_12__* %13)
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = icmp eq %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* @ICERR_BADPARAM, align 8
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i64 [ %25, %24 ], [ 0, %26 ]
  store i64 %28, i64* %4, align 8
  br label %102

29:                                               ; preds = %3
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = call i64 @DecompressQuery(i32* %30, %struct.TYPE_11__* %31, i32* null)
  %33 = load i64, i64* @ICERR_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i64, i64* @ICERR_BADFORMAT, align 8
  br label %41

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i64 [ %39, %38 ], [ 0, %40 ]
  store i64 %42, i64* %4, align 8
  br label %102

43:                                               ; preds = %29
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 8
  br i1 %50, label %51, label %73

51:                                               ; preds = %43
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 1, %59
  store i32 %60, i32* %9, align 4
  br label %65

61:                                               ; preds = %51
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %65, %43
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %73
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @memcpy(%struct.TYPE_12__* %77, %struct.TYPE_11__* %78, i32 %79)
  %81 = load i32, i32* @BI_RGB, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = bitcast { i64, i32 }* %10 to i8*
  %86 = bitcast %struct.TYPE_12__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 12, i1 false)
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %88 = load i64, i64* %87, align 4
  %89 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @DIBWIDTHBYTES(i64 %88, i32 %90)
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i64, i64* @ICERR_OK, align 8
  store i64 %98, i64* %4, align 8
  br label %102

99:                                               ; preds = %73
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %4, align 8
  br label %102

102:                                              ; preds = %99, %76, %41, %27
  %103 = load i64, i64* %4, align 8
  ret i64 %103
}

declare dso_local i32 @TRACE(i8*, i32*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @DecompressQuery(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @DIBWIDTHBYTES(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
