; ModuleID = '/home/carl/AnghaBench/zstd/contrib/experimental_dict_builders/fastCover/extr_main.c_FASTCOVER_trainFromFiles.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/experimental_dict_builders/fastCover/extr_main.c_FASTCOVER_trainFromFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"not enough memory for trainFromFiles\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"k=%u\0Ad=%u\0Af=%u\0Asteps=%u\0Asplit=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"dictionary training failed : %s \0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Save dictionary of size %u into file %s \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FASTCOVER_trainFromFiles(i8* %0, %struct.TYPE_9__* %1, i32 %2, %struct.TYPE_10__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %8, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @malloc(i32 %18)
  store i8* %19, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = call i32 @EXM_THROW(i32 12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %29, %24
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %47 = call i64 @ZDICT_optimizeTrainFromBuffer_fastCover(i8* %35, i32 %36, i32 %39, i32 %42, i32 %45, %struct.TYPE_10__* %46)
  store i64 %47, i64* %12, align 8
  br label %64

48:                                               ; preds = %29
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = bitcast %struct.TYPE_10__* %13 to i8*
  %62 = bitcast %struct.TYPE_10__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 4 %62, i64 24, i1 false)
  %63 = call i64 @ZDICT_trainFromBuffer_fastCover(i8* %49, i32 %50, i32 %53, i32 %56, i32 %59, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8 %13)
  store i64 %63, i64* %12, align 8
  br label %64

64:                                               ; preds = %48, %34
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 100
  %81 = call i32 (i32, i8*, i32, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %76, i32 %80)
  %82 = load i64, i64* %12, align 8
  %83 = call i64 @ZDICT_isError(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %64
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @ZDICT_getErrorName(i64 %86)
  %88 = call i32 (i32, i8*, i32, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  store i32 1, i32* %11, align 4
  br label %98

89:                                               ; preds = %64
  %90 = load i64, i64* %12, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 (i32, i8*, i32, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %91, i8* %92)
  %94 = load i8*, i8** %5, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load i64, i64* %12, align 8
  %97 = call i32 @saveDict(i8* %94, i8* %95, i64 %96)
  br label %98

98:                                               ; preds = %89, %85
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @EXM_THROW(i32, i8*) #1

declare dso_local i64 @ZDICT_optimizeTrainFromBuffer_fastCover(i8*, i32, i32, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @ZDICT_trainFromBuffer_fastCover(i8*, i32, i32, i32, i32, %struct.TYPE_10__* byval(%struct.TYPE_10__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i32, ...) #1

declare dso_local i64 @ZDICT_isError(i64) #1

declare dso_local i32 @ZDICT_getErrorName(i64) #1

declare dso_local i32 @saveDict(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
