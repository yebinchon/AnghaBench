; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_write_first_tile_part.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_j2k.c_opj_j2k_write_first_tile_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_17__, %struct.TYPE_22__, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.opj_event_mgr = type { i32 }

@OPJ_FALSE = common dso_local global i32 0, align 4
@OPJ_TRUE = common dso_local global i32 0, align 4
@compno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32*, i64*, i64, i32*, %struct.opj_event_mgr*)* @opj_j2k_write_first_tile_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opj_j2k_write_first_tile_part(%struct.TYPE_21__* %0, i32* %1, i64* %2, i64 %3, i32* %4, %struct.opj_event_mgr* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.opj_event_mgr*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_20__*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.opj_event_mgr* %5, %struct.opj_event_mgr** %13, align 8
  store i64 0, i64* %14, align 8
  store i32* null, i32** %16, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %18, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %17, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 3
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %18, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  store i64 0, i64* %15, align 8
  %30 = load i32*, i32** %9, align 8
  store i32* %30, i32** %16, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %13, align 8
  %36 = call i32 @opj_j2k_write_sot(%struct.TYPE_21__* %31, i32* %32, i64 %33, i64* %15, i32* %34, %struct.opj_event_mgr* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %6
  %39 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %39, i32* %7, align 4
  br label %113

40:                                               ; preds = %6
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %14, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  store i32* %46, i32** %9, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i64, i64* %11, align 8
  %49 = sub nsw i64 %48, %47
  store i64 %49, i64* %11, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @OPJ_IS_CINEMA(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %81, label %55

55:                                               ; preds = %40
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %55
  store i64 0, i64* %15, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %13, align 8
  %70 = call i32 @opj_j2k_write_poc_in_memory(%struct.TYPE_21__* %67, i32* %68, i64* %15, %struct.opj_event_mgr* %69)
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %14, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 %74
  store i32* %76, i32** %9, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %11, align 8
  %79 = sub nsw i64 %78, %77
  store i64 %79, i64* %11, align 8
  br label %80

80:                                               ; preds = %66, %55
  br label %81

81:                                               ; preds = %80, %40
  store i64 0, i64* %15, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = load %struct.opj_event_mgr*, %struct.opj_event_mgr** %13, align 8
  %88 = call i32 @opj_j2k_write_sod(%struct.TYPE_21__* %82, %struct.TYPE_20__* %83, i32* %84, i64* %15, i64 %85, i32* %86, %struct.opj_event_mgr* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* @OPJ_FALSE, align 4
  store i32 %91, i32* %7, align 4
  br label %113

92:                                               ; preds = %81
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* %14, align 8
  %95 = add nsw i64 %94, %93
  store i64 %95, i64* %14, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64*, i64** %10, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 6
  %100 = load i64, i64* %14, align 8
  %101 = call i32 @opj_write_bytes(i32* %99, i64 %100, i32 4)
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @OPJ_IS_CINEMA(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %92
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %109 = load i64, i64* %14, align 8
  %110 = call i32 @opj_j2k_update_tlm(%struct.TYPE_21__* %108, i64 %109)
  br label %111

111:                                              ; preds = %107, %92
  %112 = load i32, i32* @OPJ_TRUE, align 4
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %111, %90, %38
  %114 = load i32, i32* %7, align 4
  ret i32 %114
}

declare dso_local i32 @opj_j2k_write_sot(%struct.TYPE_21__*, i32*, i64, i64*, i32*, %struct.opj_event_mgr*) #1

declare dso_local i64 @OPJ_IS_CINEMA(i32) #1

declare dso_local i32 @opj_j2k_write_poc_in_memory(%struct.TYPE_21__*, i32*, i64*, %struct.opj_event_mgr*) #1

declare dso_local i32 @opj_j2k_write_sod(%struct.TYPE_21__*, %struct.TYPE_20__*, i32*, i64*, i64, i32*, %struct.opj_event_mgr*) #1

declare dso_local i32 @opj_write_bytes(i32*, i64, i32) #1

declare dso_local i32 @opj_j2k_update_tlm(%struct.TYPE_21__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
