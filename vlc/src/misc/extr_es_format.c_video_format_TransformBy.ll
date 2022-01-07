; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_es_format.c_video_format_TransformBy.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_es_format.c_video_format_TransformBy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@ORIENT_NORMAL = common dso_local global i64 0, align 8
@ORIENT_HFLIPPED = common dso_local global i64 0, align 8
@ORIENT_ANTI_TRANSPOSED = common dso_local global i64 0, align 8
@ORIENT_VFLIPPED = common dso_local global i64 0, align 8
@ORIENT_TRANSPOSED = common dso_local global i64 0, align 8
@ORIENT_ROTATED_90 = common dso_local global i64 0, align 8
@ORIENT_ROTATED_180 = common dso_local global i64 0, align 8
@ORIENT_ROTATED_270 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @video_format_TransformBy(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @transform_GetBasicOps(i32 %13, i32* %5, i32* %7)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @transform_GetBasicOps(i32 %18, i32* %6, i32* %8)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub i32 %20, %21
  %23 = add i32 %22, 360
  %24 = urem i32 %23, 360
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = xor i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i64, i64* @ORIENT_NORMAL, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* @ORIENT_HFLIPPED, align 8
  store i64 %35, i64* %11, align 8
  br label %54

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %37, 90
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i64, i64* @ORIENT_ANTI_TRANSPOSED, align 8
  store i64 %40, i64* %11, align 8
  br label %53

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = icmp eq i32 %42, 180
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i64, i64* @ORIENT_VFLIPPED, align 8
  store i64 %45, i64* %11, align 8
  br label %52

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 270
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i64, i64* @ORIENT_TRANSPOSED, align 8
  store i64 %50, i64* %11, align 8
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %51, %44
  br label %53

53:                                               ; preds = %52, %39
  br label %54

54:                                               ; preds = %53, %34
  br label %73

55:                                               ; preds = %2
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 90
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i64, i64* @ORIENT_ROTATED_90, align 8
  store i64 %59, i64* %11, align 8
  br label %72

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 180
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i64, i64* @ORIENT_ROTATED_180, align 8
  store i64 %64, i64* %11, align 8
  br label %71

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 270
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i64, i64* @ORIENT_ROTATED_270, align 8
  store i64 %69, i64* %11, align 8
  br label %70

70:                                               ; preds = %68, %65
  br label %71

71:                                               ; preds = %70, %63
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @ORIENT_IS_SWAP(i64 %76)
  %78 = load i64, i64* %11, align 8
  %79 = call i64 @ORIENT_IS_SWAP(i64 %78)
  %80 = icmp ne i64 %77, %79
  br i1 %80, label %81, label %117

81:                                               ; preds = %73
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %83 = bitcast %struct.TYPE_3__* %12 to i8*
  %84 = bitcast %struct.TYPE_3__* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %83, i8* align 8 %84, i64 40, i1 false)
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 7
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 4
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %81, %73
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  ret void
}

declare dso_local i32 @transform_GetBasicOps(i32, i32*, i32*) #1

declare dso_local i64 @ORIENT_IS_SWAP(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
