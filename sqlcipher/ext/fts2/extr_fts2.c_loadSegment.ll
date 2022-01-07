; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_loadSegment.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_loadSegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@DL_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32, i32, i8*, i32, i32, %struct.TYPE_11__*)* @loadSegment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loadSegment(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, %struct.TYPE_11__* %7) #0 {
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.TYPE_11__, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__, align 8
  %20 = alloca %struct.TYPE_11__, align 8
  %21 = alloca [2 x i32], align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %16, align 8
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = call i32 @dataBufferInit(%struct.TYPE_11__* %17, i64 0)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @loadSegmentInt(%struct.TYPE_10__* %33, i8* %34, i32 %35, i32 %36, i8* %37, i32 %38, i32 %39, %struct.TYPE_11__* %17)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* @SQLITE_OK, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %98

44:                                               ; preds = %8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %98

48:                                               ; preds = %44
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %55 = bitcast %struct.TYPE_11__* %19 to i8*
  %56 = bitcast %struct.TYPE_11__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %58 = bitcast %struct.TYPE_11__* %57 to i8*
  %59 = bitcast %struct.TYPE_11__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = bitcast %struct.TYPE_11__* %17 to i8*
  %61 = bitcast %struct.TYPE_11__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 16, i1 false)
  br label %97

62:                                               ; preds = %48
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %64 = load i32, i32* @DL_DEFAULT, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @dlrInit(i32* %63, i32 %64, i32 %67, i64 %70)
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %73 = load i32, i32* @DL_DEFAULT, align 4
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @dlrInit(i32* %72, i32 %73, i32 %75, i64 %77)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %81, %83
  %85 = call i32 @dataBufferInit(%struct.TYPE_11__* %20, i64 %84)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %87 = call i32 @docListMerge(%struct.TYPE_11__* %20, i32* %86, i32 2)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %89 = call i32 @dataBufferDestroy(%struct.TYPE_11__* %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %91 = bitcast %struct.TYPE_11__* %90 to i8*
  %92 = bitcast %struct.TYPE_11__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 16, i1 false)
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %94 = call i32 @dlrDestroy(i32* %93)
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %96 = call i32 @dlrDestroy(i32* %95)
  br label %97

97:                                               ; preds = %62, %53
  br label %98

98:                                               ; preds = %97, %44, %8
  %99 = call i32 @dataBufferDestroy(%struct.TYPE_11__* %17)
  %100 = load i32, i32* %18, align 4
  ret i32 %100
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dataBufferInit(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @loadSegmentInt(%struct.TYPE_10__*, i8*, i32, i32, i8*, i32, i32, %struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dlrInit(i32*, i32, i32, i64) #1

declare dso_local i32 @docListMerge(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @dataBufferDestroy(%struct.TYPE_11__*) #1

declare dso_local i32 @dlrDestroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
