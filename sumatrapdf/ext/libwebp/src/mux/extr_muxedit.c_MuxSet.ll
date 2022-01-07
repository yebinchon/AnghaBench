; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_MuxSet.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_MuxSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@WEBP_MUX_NOT_FOUND = common dso_local global i32 0, align 4
@kChunks = common dso_local global %struct.TYPE_5__* null, align 8
@IDX_VP8X = common dso_local global i32 0, align 4
@IDX_ICCP = common dso_local global i32 0, align 4
@IDX_ANIM = common dso_local global i32 0, align 4
@IDX_EXIF = common dso_local global i32 0, align 4
@IDX_XMP = common dso_local global i32 0, align 4
@IDX_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32*, i32)* @MuxSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MuxSet(%struct.TYPE_4__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @WEBP_MUX_NOT_FOUND, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @ChunkGetIndexFromTag(i32 %13)
  store i64 %14, i64* %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kChunks, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IsWPI(i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = call i32 @ChunkInit(i32* %9)
  %30 = load i32, i32* @IDX_VP8X, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 5
  %33 = call i32 @SWITCH_ID_LIST(i32 %30, i32* %32)
  %34 = load i32, i32* @IDX_ICCP, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = call i32 @SWITCH_ID_LIST(i32 %34, i32* %36)
  %38 = load i32, i32* @IDX_ANIM, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = call i32 @SWITCH_ID_LIST(i32 %38, i32* %40)
  %42 = load i32, i32* @IDX_EXIF, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = call i32 @SWITCH_ID_LIST(i32 %42, i32* %44)
  %46 = load i32, i32* @IDX_XMP, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = call i32 @SWITCH_ID_LIST(i32 %46, i32* %48)
  %50 = load i32, i32* @IDX_UNKNOWN, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @SWITCH_ID_LIST(i32 %50, i32* %52)
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i64 @ChunkGetIndexFromTag(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsWPI(i32) #1

declare dso_local i32 @ChunkInit(i32*) #1

declare dso_local i32 @SWITCH_ID_LIST(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
