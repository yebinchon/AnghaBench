; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_compress_generic_simpleArgs.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_compress_generic_simpleArgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i64, i64 }
%struct.TYPE_6__ = type { i8*, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_compress_generic_simpleArgs(i32* %0, i8* %1, i64 %2, i64* %3, i8* %4, i64 %5, i64* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__, align 8
  %18 = alloca %struct.TYPE_6__, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  store i32 %7, i32* %16, align 4
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %21 = load i8*, i8** %10, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %25 = load i64*, i64** %12, align 8
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %29 = load i8*, i8** %13, align 8
  store i8* %29, i8** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %31 = load i64, i64* %14, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %33 = load i64*, i64** %15, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %32, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %16, align 4
  %38 = call i64 @ZSTD_compress_generic(i32* %36, %struct.TYPE_5__* %17, %struct.TYPE_6__* %18, i32 %37)
  store i64 %38, i64* %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** %12, align 8
  store i64 %40, i64* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %15, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* %19, align 8
  ret i64 %45
}

declare dso_local i64 @ZSTD_compress_generic(i32*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
