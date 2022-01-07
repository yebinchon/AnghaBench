; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_dts_header_ParseLBRExtSubstream.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_dts_header_ParseLBRExtSubstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@VLC_DTS_HEADER_SIZE = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@__const.dts_header_ParseLBRExtSubstream.LBRsamplerates = private unnamed_addr constant [13 x i32] [i32 8000, i32 16000, i32 32000, i32 0, i32 0, i32 22050, i32 44100, i32 0, i32 0, i32 0, i32 12000, i32 24000, i32 48000], align 16
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @dts_header_ParseLBRExtSubstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dts_header_ParseLBRExtSubstream(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [13 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @VLC_DTS_HEADER_SIZE, align 4
  %14 = call i32 @bs_init(i32* %6, i8* %12, i32 %13)
  %15 = call i32 @bs_skip(i32* %6, i32 32)
  %16 = call i8* @bs_read(i32* %6, i32 8)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %3, align 4
  br label %86

22:                                               ; preds = %2
  %23 = call i8* @bs_read(i32* %6, i32 8)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = bitcast [13 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([13 x i32]* @__const.dts_header_ParseLBRExtSubstream.LBRsamplerates to i8*), i64 52, i1 false)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [13 x i32], [13 x i32]* %8, i64 0, i64 0
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = icmp uge i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %35, i32* %3, align 4
  br label %86

36:                                               ; preds = %22
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [13 x i32], [13 x i32]* %8, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ult i32 %47, 16000
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 1024, i32* %51, align 4
  br label %64

52:                                               ; preds = %36
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ult i32 %55, 32000
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 2048, i32* %59, align 4
  br label %63

60:                                               ; preds = %52
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  store i32 4096, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %49
  %65 = call i8* @bs_read(i32* %6, i32 16)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = call i32 @dca_get_LBR_channels(i32 %67, i32* %69)
  %71 = call i32 @bs_skip(i32* %6, i32 16)
  %72 = call i32 @bs_skip(i32* %6, i32 8)
  %73 = call i8* @bs_read(i32* %6, i32 8)
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %10, align 4
  %75 = call i32 @bs_skip(i32* %6, i32 16)
  %76 = call i8* @bs_read(i32* %6, i32 16)
  %77 = ptrtoint i8* %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 240
  %81 = shl i32 %80, 12
  %82 = or i32 %78, %81
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %64, %34, %20
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @bs_init(i32*, i8*, i32) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

declare dso_local i8* @bs_read(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dca_get_LBR_channels(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
