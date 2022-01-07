; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/psaux/extr_psft.c_cf2_builder_cubeTo.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/psaux/extr_psft.c_cf2_builder_cubeTo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8** }
%struct.TYPE_23__ = type { i64, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }

@CF2_PathOpCubeTo = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_23__*)* @cf2_builder_cubeTo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cf2_builder_cubeTo(%struct.TYPE_21__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %9 = bitcast %struct.TYPE_21__* %8 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %9, %struct.TYPE_22__** %6, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %11 = icmp ne %struct.TYPE_22__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ false, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @FT_ASSERT(i32 %19)
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CF2_PathOpCubeTo, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @FT_ASSERT(i32 %26)
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store %struct.TYPE_20__* %31, %struct.TYPE_20__** %7, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %17
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @ps_builder_start_point(%struct.TYPE_20__* %37, i32 %41, i32 %45)
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %36
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i8**, i8*** %51, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  store i8* %56, i8** %59, align 8
  br label %60

60:                                               ; preds = %55, %49
  br label %110

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %61, %17
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = call i8* @ps_builder_check_points(%struct.TYPE_20__* %63, i32 3)
  store i8* %64, i8** %5, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %67
  %74 = load i8*, i8** %5, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  store i8* %74, i8** %77, align 8
  br label %78

78:                                               ; preds = %73, %67
  br label %110

79:                                               ; preds = %62
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @ps_builder_add_point(%struct.TYPE_20__* %80, i32 %84, i32 %88, i32 0)
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ps_builder_add_point(%struct.TYPE_20__* %90, i32 %94, i32 %98, i32 0)
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ps_builder_add_point(%struct.TYPE_20__* %100, i32 %104, i32 %108, i32 1)
  br label %110

110:                                              ; preds = %79, %78, %60
  ret void
}

declare dso_local i32 @FT_ASSERT(i32) #1

declare dso_local i8* @ps_builder_start_point(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i8* @ps_builder_check_points(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @ps_builder_add_point(%struct.TYPE_20__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
