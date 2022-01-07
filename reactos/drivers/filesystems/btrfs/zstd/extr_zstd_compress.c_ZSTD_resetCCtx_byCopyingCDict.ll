; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_resetCCtx_byCopyingCDict.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_resetCCtx_byCopyingCDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_16__, i32, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { i32*, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i32, i64, i32*, i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64, i64, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }

@.str = private unnamed_addr constant [32 x i8] c"copying dictionary into context\00", align 1
@ZSTDcrp_noMemset = common dso_local global i32 0, align 4
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
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 %4, i32* %9, align 4
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 8
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
  %38 = load i32, i32* @ZSTDcrp_noMemset, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ZSTD_resetCCtx_internal(%struct.TYPE_21__* %36, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8 %2, i32 %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ZSTD_fast, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %5
  br label %85

80:                                               ; preds = %5
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = shl i64 1, %83
  br label %85

85:                                               ; preds = %80, %79
  %86 = phi i64 [ 0, %79 ], [ %84, %80 ]
  store i64 %86, i64* %12, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = shl i64 1, %89
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %13, align 8
  %93 = add i64 %91, %92
  %94 = mul i64 %93, 4
  store i64 %94, i64* %14, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 7
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32*
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = icmp eq i32* %100, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to i32*
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = icmp eq i32* %116, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 @assert(i32 %126)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 7
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 6
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %13, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = icmp eq i32* %132, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i32*
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = inttoptr i64 %150 to i32*
  %152 = load i64, i64* %12, align 8
  %153 = getelementptr inbounds i32, i32* %151, i64 %152
  %154 = icmp eq i32* %146, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @assert(i32 %155)
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 6
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 6
  %165 = load i32*, i32** %164, align 8
  %166 = load i64, i64* %14, align 8
  %167 = call i32 @memcpy(i32* %161, i32* %165, i64 %166)
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = shl i64 1, %172
  store i64 %173, i64* %15, align 8
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %15, align 8
  %187 = mul i64 %186, 4
  %188 = call i32 @memset(i64 %185, i32 0, i64 %187)
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 2
  store %struct.TYPE_17__* %190, %struct.TYPE_17__** %16, align 8
  %191 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  store %struct.TYPE_17__* %193, %struct.TYPE_17__** %17, align 8
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 3
  store i32 %201, i32* %203, align 8
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 4
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 8
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 1
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  %225 = call i32 @memcpy(i32* %222, i32* %224, i64 4)
  ret i64 0
}

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ZSTD_resetCCtx_internal(%struct.TYPE_21__*, %struct.TYPE_20__* byval(%struct.TYPE_20__) align 8, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @memset(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
