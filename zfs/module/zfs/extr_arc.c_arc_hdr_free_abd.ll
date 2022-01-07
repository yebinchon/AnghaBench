; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_hdr_free_abd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_arc.c_arc_hdr_free_abd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32* }

@arcstat_l2_free_on_write = common dso_local global i32 0, align 4
@arcstat_raw_size = common dso_local global i32 0, align 4
@DMU_BSWAP_NUMFUNCS = common dso_local global i32 0, align 4
@arcstat_compressed_size = common dso_local global i32 0, align 4
@arcstat_uncompressed_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i64)* @arc_hdr_free_abd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_hdr_free_abd(%struct.TYPE_16__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %10 = call i32 @HDR_GET_PSIZE(%struct.TYPE_16__* %9)
  br label %14

11:                                               ; preds = %2
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = call i32 @arc_hdr_size(%struct.TYPE_16__* %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %10, %8 ], [ %13, %11 ]
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = call i32 @HDR_HAS_L1HDR(%struct.TYPE_16__* %16)
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = call i64 @HDR_HAS_RABD(%struct.TYPE_16__* %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %14
  %29 = phi i1 [ true, %14 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = call i64 @HDR_HAS_RABD(%struct.TYPE_16__* %33)
  %35 = call i32 @IMPLY(i64 %32, i64 %34)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = call i64 @HDR_L2_WRITING(%struct.TYPE_16__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @arc_hdr_free_on_write(%struct.TYPE_16__* %40, i64 %41)
  %43 = load i32, i32* @arcstat_l2_free_on_write, align 4
  %44 = call i32 @ARCSTAT_BUMP(i32 %43)
  br label %67

45:                                               ; preds = %28
  %46 = load i64, i64* %4, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = call i32 @arc_free_data_abd(%struct.TYPE_16__* %49, i32* %53, i32 %54, %struct.TYPE_16__* %55)
  br label %66

57:                                               ; preds = %45
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = call i32 @arc_free_data_abd(%struct.TYPE_16__* %58, i32* %62, i32 %63, %struct.TYPE_16__* %64)
  br label %66

66:                                               ; preds = %57, %48
  br label %67

67:                                               ; preds = %66, %39
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  %74 = load i32, i32* @arcstat_raw_size, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 0, %75
  %77 = call i32 @ARCSTAT_INCR(i32 %74, i32 %76)
  br label %82

78:                                               ; preds = %67
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %78, %70
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = call i64 @HDR_HAS_RABD(%struct.TYPE_16__* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* @DMU_BSWAP_NUMFUNCS, align 4
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %92, %88, %82
  %98 = load i32, i32* @arcstat_compressed_size, align 4
  %99 = load i32, i32* %5, align 4
  %100 = sub nsw i32 0, %99
  %101 = call i32 @ARCSTAT_INCR(i32 %98, i32 %100)
  %102 = load i32, i32* @arcstat_uncompressed_size, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %104 = call i32 @HDR_GET_LSIZE(%struct.TYPE_16__* %103)
  %105 = sub nsw i32 0, %104
  %106 = call i32 @ARCSTAT_INCR(i32 %102, i32 %105)
  ret void
}

declare dso_local i32 @HDR_GET_PSIZE(%struct.TYPE_16__*) #1

declare dso_local i32 @arc_hdr_size(%struct.TYPE_16__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @HDR_HAS_L1HDR(%struct.TYPE_16__*) #1

declare dso_local i64 @HDR_HAS_RABD(%struct.TYPE_16__*) #1

declare dso_local i32 @IMPLY(i64, i64) #1

declare dso_local i64 @HDR_L2_WRITING(%struct.TYPE_16__*) #1

declare dso_local i32 @arc_hdr_free_on_write(%struct.TYPE_16__*, i64) #1

declare dso_local i32 @ARCSTAT_BUMP(i32) #1

declare dso_local i32 @arc_free_data_abd(%struct.TYPE_16__*, i32*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @ARCSTAT_INCR(i32, i32) #1

declare dso_local i32 @HDR_GET_LSIZE(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
