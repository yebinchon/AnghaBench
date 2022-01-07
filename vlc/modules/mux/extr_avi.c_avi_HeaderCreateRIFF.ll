; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_avi_HeaderCreateRIFF.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_avi.c_avi_HeaderCreateRIFF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.anon = type { i32, i32, i32 }

@HDR_BASE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"AVI \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hdrl\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"movi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_17__*)* @avi_HeaderCreateRIFF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @avi_HeaderCreateRIFF(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca %struct.anon, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %4, align 8
  %14 = load i32, i32* @HDR_BASE_SIZE, align 4
  %15 = call i32 @bo_init(%struct.TYPE_19__* %7, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %2, align 8
  br label %123

18:                                               ; preds = %1
  %19 = call i32 @bo_add_fourcc(%struct.TYPE_19__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = call i32 @bo_add_32le(%struct.TYPE_19__* %7, i32 -272716322)
  %26 = call i32 @bo_add_fourcc(%struct.TYPE_19__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 @bo_add_fourcc(%struct.TYPE_19__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = call i32 @bo_add_32le(%struct.TYPE_19__* %7, i32 -272716322)
  %34 = call i32 @bo_add_fourcc(%struct.TYPE_19__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = call i32 @avi_HeaderAdd_avih(%struct.TYPE_17__* %40, %struct.TYPE_19__* %7)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %56, %18
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @avi_HeaderAdd_strl(%struct.TYPE_19__* %7, i32* %54)
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %42

59:                                               ; preds = %42
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 12
  %65 = add nsw i32 %64, 14
  %66 = and i32 %65, -16
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %67, %71
  store i32 %72, i32* %6, align 4
  %73 = call i32 @bo_add_fourcc(%struct.TYPE_19__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @bo_add_32le(%struct.TYPE_19__* %7, i32 %74)
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %82, %59
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = call i32 @bo_add_8(%struct.TYPE_19__* %7, i32 0)
  br label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %76

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %91, %93
  %95 = call i32 @bo_set_32le(%struct.TYPE_19__* %7, i32 %87, i32 %94)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = call i32 @avi_HeaderAdd_INFO(%struct.TYPE_17__* %96, %struct.TYPE_19__* %7)
  %98 = call i32 @bo_add_fourcc(%struct.TYPE_19__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 4
  %103 = call i32 @bo_add_32le(%struct.TYPE_19__* %7, i32 %102)
  %104 = call i32 @bo_add_fourcc(%struct.TYPE_19__* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %111, %114
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %115, %118
  %120 = call i32 @bo_set_32le(%struct.TYPE_19__* %7, i32 %106, i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  store %struct.TYPE_20__* %122, %struct.TYPE_20__** %2, align 8
  br label %123

123:                                              ; preds = %85, %17
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  ret %struct.TYPE_20__* %124
}

declare dso_local i32 @bo_init(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @bo_add_fourcc(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @bo_add_32le(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @avi_HeaderAdd_avih(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @avi_HeaderAdd_strl(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @bo_add_8(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @bo_set_32le(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @avi_HeaderAdd_INFO(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
