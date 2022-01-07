; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxinternal.c_ChunkEmitSpecial.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxinternal.c_ChunkEmitSpecial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@kChunks = common dso_local global %struct.TYPE_8__* null, align 8
@IDX_ANMF = common dso_local global i64 0, align 8
@TAG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (%struct.TYPE_7__*, i64, i64*)* @ChunkEmitSpecial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @ChunkEmitSpecial(%struct.TYPE_7__* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %15 = sub i64 %13, %14
  store i64 %15, i64* %8, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @kChunks, align 8
  %20 = load i64, i64* @IDX_ANMF, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %18, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i64*, i64** %6, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @PutLE32(i64* %28, i64 %31)
  %33 = load i64*, i64** %6, align 8
  %34 = load i32, i32* @TAG_SIZE, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @PutLE32(i64* %36, i64 %37)
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @memcpy(i64* %46, i32 %50, i64 %51)
  %53 = load i64, i64* %7, align 8
  %54 = and i64 %53, 1
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %3
  %57 = load i64*, i64** %6, align 8
  %58 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %58, %59
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %3
  %63 = load i64*, i64** %6, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %65 = call i32 @ChunkDiskSize(%struct.TYPE_7__* %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  ret i64* %67
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @PutLE32(i64*, i64) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

declare dso_local i32 @ChunkDiskSize(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
