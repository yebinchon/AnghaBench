; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_visit_rootbp.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_scan.c_dsl_scan_visit_rootbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_15__, %struct.TYPE_16__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@DMU_META_OBJSET = common dso_local global i32 0, align 4
@ZB_ROOT_OBJECT = common dso_local global i32 0, align 4
@ZB_ROOT_LEVEL = common dso_local global i32 0, align 4
@ZB_ROOT_BLKID = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OST_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"finished scan%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_18__*, i32*, i32*)* @dsl_scan_visit_rootbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_scan_visit_rootbp(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_16__, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %12 = icmp ne %struct.TYPE_18__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @DMU_META_OBJSET, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi i32 [ %16, %13 ], [ %18, %17 ]
  %21 = load i32, i32* @ZB_ROOT_OBJECT, align 4
  %22 = load i32, i32* @ZB_ROOT_LEVEL, align 4
  %23 = load i32, i32* @ZB_ROOT_BLKID, align 4
  %24 = call i32 @SET_BOOKMARK(%struct.TYPE_16__* %9, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = call i64 @ZB_IS_ZERO(%struct.TYPE_16__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @SET_BOOKMARK(%struct.TYPE_16__* %32, i32 %34, i32 0, i32 0, i32 0)
  br label %44

36:                                               ; preds = %19
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = bitcast %struct.TYPE_16__* %38 to i8*
  %43 = bitcast %struct.TYPE_16__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  br label %44

44:                                               ; preds = %36, %30
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %50 = load i32, i32* @FTAG, align 4
  %51 = call i32* @scan_prefetch_ctx_create(%struct.TYPE_17__* %49, i32* null, i32 %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @dsl_scan_prefetch(i32* %52, i32* %53, %struct.TYPE_16__* %9)
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* @FTAG, align 4
  %57 = call i32 @scan_prefetch_ctx_rele(i32* %55, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = load i32, i32* @DMU_OST_NONE, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @dsl_scan_visitbp(i32* %58, %struct.TYPE_16__* %9, i32* null, %struct.TYPE_18__* %59, %struct.TYPE_17__* %60, i32 %61, i32* %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = call i32 @dprintf_ds(%struct.TYPE_18__* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SET_BOOKMARK(%struct.TYPE_16__*, i32, i32, i32, i32) #1

declare dso_local i64 @ZB_IS_ZERO(%struct.TYPE_16__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @scan_prefetch_ctx_create(%struct.TYPE_17__*, i32*, i32) #1

declare dso_local i32 @dsl_scan_prefetch(i32*, i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @scan_prefetch_ctx_rele(i32*, i32) #1

declare dso_local i32 @dsl_scan_visitbp(i32*, %struct.TYPE_16__*, i32*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32, i32*) #1

declare dso_local i32 @dprintf_ds(%struct.TYPE_18__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
