; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_initCStream_usingCDict_advanced.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_initCStream_usingCDict_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"ZSTD_initCStream_usingCDict_advanced\00", align 1
@ZSTD_reset_session_only = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_initCStream_usingCDict_advanced(%struct.TYPE_8__* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = load i32, i32* @ZSTD_reset_session_only, align 4
  %12 = call i32 @ZSTD_CCtx_reset(%struct.TYPE_8__* %10, i32 %11)
  %13 = call i32 @FORWARD_IF_ERROR(i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @ZSTD_CCtx_setPledgedSrcSize(%struct.TYPE_8__* %14, i64 %15)
  %17 = call i32 @FORWARD_IF_ERROR(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @ZSTD_CCtx_refCDict(%struct.TYPE_8__* %22, i32* %23)
  %25 = call i32 @FORWARD_IF_ERROR(i32 %24)
  ret i64 0
}

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i32 @FORWARD_IF_ERROR(i32) #1

declare dso_local i32 @ZSTD_CCtx_reset(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ZSTD_CCtx_setPledgedSrcSize(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @ZSTD_CCtx_refCDict(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
