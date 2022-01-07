; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_resetCCtx_byCopyingCDict.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_resetCCtx_byCopyingCDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }

@.str = private unnamed_addr constant [32 x i8] c"copying dictionary into context\00", align 1
@ZSTDcrp_leaveDirty = common dso_local global i32 0, align 4
@ZSTD_fast = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32, i32)* @ZSTD_resetCCtx_byCopyingCDict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_resetCCtx_byCopyingCDict(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 7
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %10, align 8
  %21 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %31 = bitcast %struct.TYPE_18__* %29 to i8*
  %32 = bitcast %struct.TYPE_18__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load i32, i32* %11, align 4
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ZSTDcrp_leaveDirty, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ZSTD_resetCCtx_internal(%struct.TYPE_21__* %36, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %2, i32 %37, i32 %38, i32 %39)
  %41 = call i32 @FORWARD_IF_ERROR(i32 %40)
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  %77 = call i32 @ZSTD_cwksp_mark_tables_dirty(i32* %76)
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ZSTD_fast, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %5
  br label %89

84:                                               ; preds = %5
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = shl i64 1, %87
  br label %89

89:                                               ; preds = %84, %83
  %90 = phi i64 [ 0, %83 ], [ %88, %84 ]
  store i64 %90, i64* %12, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = shl i64 1, %93
  store i64 %94, i64* %13, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 6
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = mul i64 %104, 4
  %106 = call i32 @memcpy(i32* %99, i32* %103, i64 %105)
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %12, align 8
  %117 = mul i64 %116, 4
  %118 = call i32 @memcpy(i32* %111, i32* %115, i64 %117)
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %89
  %127 = load i32, i32* %14, align 4
  %128 = zext i32 %127 to i64
  %129 = shl i64 1, %128
  br label %131

130:                                              ; preds = %89
  br label %131

131:                                              ; preds = %130, %126
  %132 = phi i64 [ %129, %126 ], [ 0, %130 ]
  store i64 %132, i64* %15, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load i64, i64* %15, align 8
  %146 = mul i64 %145, 4
  %147 = call i32 @memset(i32 %144, i32 0, i64 %146)
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 2
  %150 = call i32 @ZSTD_cwksp_mark_tables_clean(i32* %149)
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 2
  store %struct.TYPE_17__* %152, %struct.TYPE_17__** %16, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  store %struct.TYPE_17__* %155, %struct.TYPE_17__** %17, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 0
  %182 = call i32 @memcpy(i32* %179, i32* %181, i64 4)
  ret i64 0
}

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FORWARD_IF_ERROR(i32) #1

declare dso_local i32 @ZSTD_resetCCtx_internal(%struct.TYPE_21__*, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8, i32, i32, i32) #1

declare dso_local i32 @ZSTD_cwksp_mark_tables_dirty(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @memset(i32, i32, i64) #1

declare dso_local i32 @ZSTD_cwksp_mark_tables_clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
