; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_lsmCheckpointLevels.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_ckpt.c_lsmCheckpointLevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i32 }

@LSM_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsmCheckpointLevels(%struct.TYPE_10__* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_11__* @lsmDbSnapshotLevel(i32 %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %9, align 8
  br label %23

23:                                               ; preds = %29, %4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = icmp ne %struct.TYPE_11__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  store %struct.TYPE_11__* %32, %struct.TYPE_11__** %9, align 8
  br label %23

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_11__* @lsmDbSnapshotLevel(i32 %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %9, align 8
  br label %46

46:                                               ; preds = %57, %33
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %48 = icmp ne %struct.TYPE_11__* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 0
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i1 [ false, %46 ], [ %51, %49 ]
  br i1 %53, label %54, label %61

54:                                               ; preds = %52
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %9, align 8
  br label %46

61:                                               ; preds = %52
  %62 = call i32 @memset(%struct.TYPE_12__* %14, i32 0, i32 16)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @ckptSetValue(%struct.TYPE_12__* %14, i32 0, i32 %67, i32* %11)
  store i32 1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %85, %61
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @LSM_OK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %74, %75
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ false, %69 ], [ %76, %73 ]
  br i1 %78, label %79, label %88

79:                                               ; preds = %77
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %81 = call i32 @ckptExportLevel(%struct.TYPE_11__* %80, %struct.TYPE_12__* %14, i32* %13, i32* %11)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %9, align 8
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %69

88:                                               ; preds = %77
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @LSM_OK, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = icmp eq %struct.TYPE_11__* %93, null
  br label %95

95:                                               ; preds = %92, %88
  %96 = phi i1 [ true, %88 ], [ %94, %92 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @LSM_OK, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @ckptChangeEndianness(i64 %104, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = load i8**, i8*** %7, align 8
  store i8* %109, i8** %110, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = load i32*, i32** %8, align 8
  store i32 %114, i32* %115, align 4
  br label %119

116:                                              ; preds = %95
  %117 = load i32*, i32** %8, align 8
  store i32 0, i32* %117, align 4
  %118 = load i8**, i8*** %7, align 8
  store i8* null, i8** %118, align 8
  br label %119

119:                                              ; preds = %116, %102
  %120 = load i32, i32* %11, align 4
  ret i32 %120
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_11__* @lsmDbSnapshotLevel(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ckptSetValue(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @ckptExportLevel(%struct.TYPE_11__*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @ckptChangeEndianness(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
