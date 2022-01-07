; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/rosinternals/nfi/extr_nfi.c_HandleFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/rosinternals/nfi/extr_nfi.c_HandleFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_19__, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64 }

@FSCTL_GET_NTFS_FILE_RECORD = common dso_local global i32 0, align 4
@NRH_FILE_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"\0AFile %I64d\0A\00", align 1
@AttributeEnd = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @HandleFile(i32 %0, %struct.TYPE_20__* %1, i32 %2, %struct.TYPE_21__* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__, align 4
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %12, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @FSCTL_GET_NTFS_FILE_RECORD, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 4
  %28 = call i32 @DeviceIoControl(i32 %21, i32 %22, %struct.TYPE_24__* %12, i32 4, %struct.TYPE_21__* %23, i64 %27, i32* %16, i32* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %114

31:                                               ; preds = %5
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32* null, i32** %6, align 8
  br label %114

39:                                               ; preds = %31
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %13, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @NRH_FILE_TYPE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32* null, i32** %6, align 8
  br label %114

51:                                               ; preds = %39
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = call i32 @_T(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @_tprintf(i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %54, %51
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %63 = ptrtoint %struct.TYPE_23__* %62 to i64
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = inttoptr i64 %67 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %68, %struct.TYPE_22__** %14, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %70 = ptrtoint %struct.TYPE_23__* %69 to i64
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = inttoptr i64 %74 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %75, %struct.TYPE_22__** %15, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32* @PrintPrettyName(i32 %76, %struct.TYPE_20__* %77, %struct.TYPE_22__* %78, %struct.TYPE_22__* %79, i32 %80, i32 %81)
  store i32* %82, i32** %17, align 8
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %112, label %85

85:                                               ; preds = %61
  br label %86

86:                                               ; preds = %98, %85
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %89 = icmp ult %struct.TYPE_22__* %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AttributeEnd, align 8
  %95 = icmp ne i64 %93, %94
  br label %96

96:                                               ; preds = %90, %86
  %97 = phi i1 [ false, %86 ], [ %95, %90 ]
  br i1 %97, label %98, label %111

98:                                               ; preds = %96
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @PrintAttributeInfo(%struct.TYPE_22__* %99, i64 %102)
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %105 = ptrtoint %struct.TYPE_22__* %104 to i64
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %105, %108
  %110 = inttoptr i64 %109 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %110, %struct.TYPE_22__** %14, align 8
  br label %86

111:                                              ; preds = %96
  br label %112

112:                                              ; preds = %111, %61
  %113 = load i32*, i32** %17, align 8
  store i32* %113, i32** %6, align 8
  br label %114

114:                                              ; preds = %112, %50, %38, %30
  %115 = load i32*, i32** %6, align 8
  ret i32* %115
}

declare dso_local i32 @DeviceIoControl(i32, i32, %struct.TYPE_24__*, i32, %struct.TYPE_21__*, i64, i32*, i32*) #1

declare dso_local i32 @_tprintf(i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i32* @PrintPrettyName(i32, %struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @PrintAttributeInfo(%struct.TYPE_22__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
