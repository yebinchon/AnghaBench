; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatSetDispositionInformation.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_finfo.c_VfatSetDispositionInformation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_20__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"FsdSetDispositionInformation(<%wZ>, Delete %u)\0A\00", align 1
@FCB_DELETE_PENDING = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@STATUS_CANNOT_DELETE = common dso_local global i32 0, align 4
@STATUS_ACCESS_DENIED = common dso_local global i32 0, align 4
@MmFlushForDelete = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"MmFlushImageSection returned FALSE\0A\00", align 1
@STATUS_DIRECTORY_NOT_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_21__*, %struct.TYPE_20__*)* @VfatSetDispositionInformation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VfatSetDispositionInformation(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, %struct.TYPE_21__* %2, %struct.TYPE_20__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %9, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32* %11, i32 %14)
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %17 = icmp ne %struct.TYPE_21__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = icmp ne %struct.TYPE_18__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @FCB_DELETE_PENDING, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i8*, i8** @FALSE, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %45, i32* %5, align 4
  br label %139

46:                                               ; preds = %4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FCB_DELETE_PENDING, align 4
  %51 = call i64 @BooleanFlagOn(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i8*, i8** @TRUE, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %57, i32* %5, align 4
  br label %139

58:                                               ; preds = %46
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %60 = call i64 @vfatFCBIsReadOnly(%struct.TYPE_18__* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @STATUS_CANNOT_DELETE, align 4
  store i32 %63, i32* %5, align 4
  br label %139

64:                                               ; preds = %58
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = call i64 @vfatFCBIsRoot(%struct.TYPE_18__* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %106, label %68

68:                                               ; preds = %64
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %83

75:                                               ; preds = %68
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 46
  br i1 %82, label %106, label %83

83:                                               ; preds = %75, %68
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = icmp eq i64 %88, 8
  br i1 %89, label %90, label %108

90:                                               ; preds = %83
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 46
  br i1 %97, label %98, label %108

98:                                               ; preds = %90
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 46
  br i1 %105, label %106, label %108

106:                                              ; preds = %98, %75, %64
  %107 = load i32, i32* @STATUS_ACCESS_DENIED, align 4
  store i32 %107, i32* %5, align 4
  br label %139

108:                                              ; preds = %98, %90, %83
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @MmFlushForDelete, align 4
  %113 = call i32 @MmFlushImageSection(i32 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %108
  %116 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* @STATUS_CANNOT_DELETE, align 4
  store i32 %117, i32* %5, align 4
  br label %139

118:                                              ; preds = %108
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %120 = call i64 @vfatFCBIsDirectory(%struct.TYPE_18__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %125 = call i32 @VfatIsDirectoryEmpty(%struct.TYPE_21__* %123, %struct.TYPE_18__* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* @STATUS_DIRECTORY_NOT_EMPTY, align 4
  store i32 %128, i32* %5, align 4
  br label %139

129:                                              ; preds = %122, %118
  %130 = load i32, i32* @FCB_DELETE_PENDING, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load i8*, i8** @TRUE, align 8
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 0
  store i8* %135, i8** %137, align 8
  %138 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %129, %127, %115, %106, %62, %53, %35
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @BooleanFlagOn(i32, i32) #1

declare dso_local i64 @vfatFCBIsReadOnly(%struct.TYPE_18__*) #1

declare dso_local i64 @vfatFCBIsRoot(%struct.TYPE_18__*) #1

declare dso_local i32 @MmFlushImageSection(i32, i32) #1

declare dso_local i64 @vfatFCBIsDirectory(%struct.TYPE_18__*) #1

declare dso_local i32 @VfatIsDirectoryEmpty(%struct.TYPE_21__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
