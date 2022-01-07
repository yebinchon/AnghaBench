; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatGrabFCBFromTable.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatGrabFCBFromTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_17__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_16__* }

@.str = private unnamed_addr constant [7 x i8] c"'%wZ'\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"'%wZ' '%wZ'\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @vfatGrabFCBFromTable(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = call i32 (i8*, %struct.TYPE_17__*, ...) @DPRINT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %12)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp uge i64 %17, 4
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 92
  br label %26

26:                                               ; preds = %19, %2
  %27 = phi i1 [ false, %2 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %31 = call i64 @vfatNameHash(i32 0, %struct.TYPE_17__* %30)
  store i64 %31, i64* %7, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = urem i64 %35, %38
  %40 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %34, i64 %39
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  store %struct.TYPE_19__* %41, %struct.TYPE_19__** %11, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %43 = icmp ne %struct.TYPE_19__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = call i32 @vfatSplitPathName(%struct.TYPE_17__* %45, i32* %8, i32* %9)
  br label %47

47:                                               ; preds = %44, %26
  br label %48

48:                                               ; preds = %98, %47
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %50 = icmp ne %struct.TYPE_19__* %49, null
  br i1 %50, label %51, label %102

51:                                               ; preds = %48
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %98

57:                                               ; preds = %51
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %6, align 8
  %61 = bitcast i32* %8 to %struct.TYPE_17__*
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 3
  %64 = call i32 (i8*, %struct.TYPE_17__*, ...) @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %61, %struct.TYPE_17__* %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = load i32, i32* @TRUE, align 4
  %68 = call i64 @RtlEqualUnicodeString(i32* %8, %struct.TYPE_17__* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %57
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  store %struct.TYPE_17__* %79, %struct.TYPE_17__** %10, align 8
  br label %83

80:                                               ; preds = %70
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  store %struct.TYPE_17__* %82, %struct.TYPE_17__** %10, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = bitcast i32* %9 to %struct.TYPE_17__*
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %86 = call i32 (i8*, %struct.TYPE_17__*, ...) @DPRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_17__* %84, %struct.TYPE_17__* %85)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = load i32, i32* @TRUE, align 4
  %89 = call i64 @RtlEqualUnicodeString(i32* %9, %struct.TYPE_17__* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = call i32 @vfatGrabFCB(%struct.TYPE_18__* %92, %struct.TYPE_16__* %93)
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_16__* %95, %struct.TYPE_16__** %3, align 8
  br label %103

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %57
  br label %98

98:                                               ; preds = %97, %51
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  store %struct.TYPE_19__* %101, %struct.TYPE_19__** %11, align 8
  br label %48

102:                                              ; preds = %48
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %3, align 8
  br label %103

103:                                              ; preds = %102, %91
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  ret %struct.TYPE_16__* %104
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_17__*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @vfatNameHash(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @vfatSplitPathName(%struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i64 @RtlEqualUnicodeString(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @vfatGrabFCB(%struct.TYPE_18__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
