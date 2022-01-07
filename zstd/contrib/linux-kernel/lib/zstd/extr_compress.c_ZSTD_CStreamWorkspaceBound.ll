; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_CStreamWorkspaceBound.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_CStreamWorkspaceBound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@ZSTD_BLOCKSIZE_ABSOLUTEMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_CStreamWorkspaceBound(i64 %0) #0 {
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = shl i64 1, %8
  store i64 %9, i64* %3, align 8
  %10 = load i32, i32* @ZSTD_BLOCKSIZE_ABSOLUTEMAX, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @MIN(i32 %10, i64 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @ZSTD_compressBound(i64 %13)
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @ZSTD_CCtxWorkspaceBound(i64 %18)
  %20 = call i64 @ZSTD_ALIGN(i64 4)
  %21 = add i64 %19, %20
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @ZSTD_ALIGN(i64 %22)
  %24 = add i64 %21, %23
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @ZSTD_ALIGN(i64 %25)
  %27 = add i64 %24, %26
  ret i64 %27
}

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @ZSTD_compressBound(i64) #1

declare dso_local i64 @ZSTD_CCtxWorkspaceBound(i64) #1

declare dso_local i64 @ZSTD_ALIGN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
