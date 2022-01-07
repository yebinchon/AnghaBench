; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_hdl_register.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zed/agents/extr_fmd_api.c_fmd_hdl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, i32*, i64, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"fmd.accepted\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fmd.caseopen\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fmd.casesolved\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fmd.caseclosed\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"register module\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fmd_hdl_register(i32* %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %9, %struct.TYPE_14__** %7, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 4
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %12, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcpy(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcpy(i32 %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strcpy(i32 %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcpy(i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = call i32 @fmd_serd_hash_create(i32* %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @fmd_hdl_debug(i32* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @fmd_serd_hash_create(i32*) #1

declare dso_local i32 @fmd_hdl_debug(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
