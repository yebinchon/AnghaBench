; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_module_recv.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_module_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (i32*, %struct.TYPE_15__*, i32*, i8*)* }
%struct.TYPE_15__ = type { i32, i32 }

@FM_EREPORT_TIME = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fmd_module_recv(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %7, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %8, align 8
  %19 = bitcast %struct.TYPE_15__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* @FM_EREPORT_TIME, align 4
  %22 = call i64 @nvlist_lookup_int64_array(i32* %20, i32 %21, i32** %10, i32* %11)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NANOSEC, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %29, %32
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  br label %37

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %24
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i32 (i32*, %struct.TYPE_15__*, i32*, i8*)*, i32 (i32*, %struct.TYPE_15__*, i32*, i8*)** %39, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 %40(i32* %41, %struct.TYPE_15__* %9, i32* %42, i8* %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @nvlist_lookup_int64_array(i32*, i32, i32**, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
