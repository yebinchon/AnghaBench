; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_fill_in_file_standard_information.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_fileinfo.c_fill_in_file_standard_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_23__, i32, %struct.TYPE_21__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_22__, %struct.TYPE_17__, i64 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"no fileref for stream\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"length = %I64u\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_25__*, %struct.TYPE_24__*, i32*)* @fill_in_file_standard_information to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_in_file_standard_information(%struct.TYPE_16__* %0, %struct.TYPE_25__* %1, %struct.TYPE_24__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %7, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %11 = call i32 @RtlZeroMemory(%struct.TYPE_16__* %10, i32 20)
  %12 = load i32*, i32** %9, align 8
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 20
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %23 = icmp ne %struct.TYPE_24__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %28 = icmp ne %struct.TYPE_20__* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %21
  %30 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %31, i32* %5, align 4
  br label %109

32:                                               ; preds = %24
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 0
  store i32 %36, i32* %42, align 4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  br label %91

55:                                               ; preds = %4
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %57 = call i32 @fcb_alloc_size(%struct.TYPE_25__* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @S_ISDIR(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %73

68:                                               ; preds = %55
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  br label %73

73:                                               ; preds = %68, %67
  %74 = phi i32 [ 0, %67 ], [ %72, %68 ]
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @S_ISDIR(i32 %87)
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %73, %32
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %98 = icmp ne %struct.TYPE_24__* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  br label %104

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %99
  %105 = phi i32 [ %102, %99 ], [ 0, %103 ]
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %104, %29
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @fcb_alloc_size(%struct.TYPE_25__*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @TRACE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
