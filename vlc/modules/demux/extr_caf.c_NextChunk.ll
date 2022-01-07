; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_caf.c_NextChunk.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_caf.c_NextChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@kCHUNK_SIZE_EOF = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i64*)* @NextChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NextChunk(%struct.TYPE_3__* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca [12 x i32], align 16
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %14 = call i32 @vlc_stream_Read(i32 %12, i32* %13, i32 12)
  %15 = icmp slt i32 %14, 12
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %17, i32* %4, align 4
  br label %46

18:                                               ; preds = %3
  %19 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %20 = call i32 @ReadFOURCC(i32* %19)
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds [12 x i32], [12 x i32]* %8, i64 0, i64 0
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = call i64 @GetQWBE(i32* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @INT64_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @VLC_FOURCC(i8 signext 100, i8 signext 97, i8 signext 116, i8 signext 97)
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @UINT64_C(i32 -1)
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @kCHUNK_SIZE_EOF, align 8
  store i64 %38, i64* %9, align 8
  br label %41

39:                                               ; preds = %33, %28
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i64, i64* %9, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %39, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @vlc_stream_Read(i32, i32*, i32) #1

declare dso_local i32 @ReadFOURCC(i32*) #1

declare dso_local i64 @GetQWBE(i32*) #1

declare dso_local i32 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @UINT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
