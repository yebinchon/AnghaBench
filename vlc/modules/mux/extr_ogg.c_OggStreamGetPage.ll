; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_ogg.c_OggStreamGetPage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_ogg.c_OggStreamGetPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32*, i32*, i64, i32)* @OggStreamGetPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @OggStreamGetPage(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__, align 8
  %12 = alloca i32 (i32*, %struct.TYPE_10__*)*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 (i32*, %struct.TYPE_10__*)* @ogg_stream_flush, i32 (i32*, %struct.TYPE_10__*)* @ogg_stream_pageout
  store i32 (i32*, %struct.TYPE_10__*)* %17, i32 (i32*, %struct.TYPE_10__*)** %12, align 8
  br label %18

18:                                               ; preds = %23, %4
  %19 = load i32 (i32*, %struct.TYPE_10__*)*, i32 (i32*, %struct.TYPE_10__*)** %12, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 %19(i32* %20, %struct.TYPE_10__* %11)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %25, %27
  %29 = call %struct.TYPE_11__* @block_Alloc(i64 %28)
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %9, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @memcpy(i64 %32, i32 %34, i64 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %40, %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @memcpy(i64 %43, i32 %45, i64 %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  store i64 0, i64* %7, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %57 = call i32 @block_ChainAppend(%struct.TYPE_11__** %10, %struct.TYPE_11__* %56)
  br label %18

58:                                               ; preds = %18
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  ret %struct.TYPE_11__* %59
}

declare dso_local i32 @ogg_stream_flush(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @ogg_stream_pageout(i32*, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @block_Alloc(i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @block_ChainAppend(%struct.TYPE_11__**, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
