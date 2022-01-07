; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_flac.h_FLAC_ParseStreamInfo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_flac.h_FLAC_ParseStreamInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flac_stream_info = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@FLAC_FRAME_SIZE_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.flac_stream_info*)* @FLAC_ParseStreamInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FLAC_ParseStreamInfo(i32* %0, %struct.flac_stream_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.flac_stream_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.flac_stream_info* %1, %struct.flac_stream_info** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = call i8* @GetWBE(i32* %6)
  %8 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %9 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %8, i32 0, i32 7
  store i8* %7, i8** %9, align 8
  %10 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %11 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %10, i32 0, i32 7
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @VLC_CLIP(i8* %12, i32 16, i32 65535)
  %14 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %15 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %14, i32 0, i32 7
  store i8* %13, i8** %15, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = call i8* @GetWBE(i32* %17)
  %19 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %20 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %19, i32 0, i32 6
  store i8* %18, i8** %20, align 8
  %21 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %22 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %21, i32 0, i32 6
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @VLC_CLIP(i8* %23, i32 16, i32 65535)
  %25 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %26 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 3
  %29 = call i32 @GetDWBE(i32* %28)
  %30 = and i32 %29, 16777215
  %31 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %32 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %34 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @FLAC_FRAME_SIZE_MIN, align 4
  %37 = call i32 @__MAX(i32 %35, i32 %36)
  %38 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %39 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 6
  %42 = call i32 @GetDWBE(i32* %41)
  %43 = and i32 %42, 16777215
  %44 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %45 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 10
  %48 = call i32 @GetDWBE(i32* %47)
  %49 = ashr i32 %48, 12
  %50 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %51 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 7
  %56 = add nsw i32 %55, 1
  %57 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %58 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 12
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 1
  %63 = shl i32 %62, 4
  %64 = load i32*, i32** %3, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 13
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 4
  %68 = or i32 %63, %67
  %69 = add nsw i32 %68, 1
  %70 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %71 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i32*, i32** %3, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 10
  %74 = call i32 @GetQWBE(i32* %73)
  %75 = call i32 @INT64_C(i32 1)
  %76 = shl i32 %75, 36
  %77 = sub nsw i32 %76, 1
  %78 = and i32 %74, %77
  %79 = load %struct.flac_stream_info*, %struct.flac_stream_info** %4, align 8
  %80 = getelementptr inbounds %struct.flac_stream_info, %struct.flac_stream_info* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  ret void
}

declare dso_local i8* @GetWBE(i32*) #1

declare dso_local i8* @VLC_CLIP(i8*, i32, i32) #1

declare dso_local i32 @GetDWBE(i32*) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @GetQWBE(i32*) #1

declare dso_local i32 @INT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
