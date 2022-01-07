; ModuleID = '/home/carl/AnghaBench/vlc/src/misc/extr_picture_pool.c_picture_pool_ClonePicture.c'
source_filename = "/home/carl/AnghaBench/vlc/src/misc/extr_picture_pool.c_picture_pool_ClonePicture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__** }
%struct.TYPE_17__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8* }

@picture_pool_ReleasePicture = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_19__*, i32)* @picture_pool_ClonePicture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @picture_pool_ClonePicture(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %12, i64 %14
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = ptrtoint %struct.TYPE_19__* %17 to i64
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = add i64 %18, %20
  store i64 %21, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %24 = load i32, i32* @picture_pool_ReleasePicture, align 4
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %25, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %78, %2
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %81

35:                                               ; preds = %29
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  store i32 %43, i32* %49, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  store i32 %57, i32* %63, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32 %71, i32* %77, align 4
  br label %78

78:                                               ; preds = %35
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %29

81:                                               ; preds = %29
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = call %struct.TYPE_16__* @picture_NewFromResource(i32* %83, %struct.TYPE_17__* %7)
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %9, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %86 = icmp ne %struct.TYPE_16__* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i64 @likely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %81
  %91 = load i64, i64* %6, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %94 = bitcast %struct.TYPE_16__* %93 to %struct.TYPE_18__*
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i8* %92, i8** %96, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %98 = call i32 @picture_Hold(%struct.TYPE_16__* %97)
  br label %99

99:                                               ; preds = %90, %81
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  ret %struct.TYPE_16__* %100
}

declare dso_local %struct.TYPE_16__* @picture_NewFromResource(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @picture_Hold(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
