; ModuleID = '/home/carl/AnghaBench/zstd/zlibWrapper/extr_zstd_zlibwrapper.c_ZWRAP_inflateReset_keepDict.c'
source_filename = "/home/carl/AnghaBench/zstd/zlibWrapper/extr_zstd_zlibwrapper.c_ZWRAP_inflateReset_keepDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"- ZWRAP_inflateReset_keepDict\0A\00", align 1
@g_ZWRAPdecompressionType = common dso_local global i64 0, align 8
@ZWRAP_FORCE_ZLIB = common dso_local global i64 0, align 8
@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@ZWRAP_useReset = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ZWRAP_inflateReset_keepDict(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = call i32 @LOG_WRAPPERD(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %6 = load i64, i64* @g_ZWRAPdecompressionType, align 8
  %7 = load i64, i64* @ZWRAP_FORCE_ZLIB, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = call i32 @inflateReset(%struct.TYPE_6__* %15)
  store i32 %16, i32* %2, align 4
  br label %39

17:                                               ; preds = %9
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = icmp eq %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %17
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = call i32 @ZWRAP_initDCtx(%struct.TYPE_7__* %27)
  %29 = load i32, i32* @ZWRAP_useReset, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @Z_OK, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %26, %24, %14
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @LOG_WRAPPERD(i8*) #1

declare dso_local i32 @inflateReset(%struct.TYPE_6__*) #1

declare dso_local i32 @ZWRAP_initDCtx(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
