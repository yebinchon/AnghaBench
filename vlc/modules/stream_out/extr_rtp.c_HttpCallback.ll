; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_HttpCallback.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_HttpCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64* }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32**, i32*)* @HttpCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HttpCallback(i32* %0, i32* %1, i32* %2, i32** %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @VLC_UNUSED(i32* %12)
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @VLC_UNUSED(i32* %14)
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %11, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @vlc_mutex_lock(i32* %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %49

25:                                               ; preds = %5
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = call i32 @strlen(i64* %34)
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @malloc(i32 %38)
  %40 = load i32**, i32*** %9, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32**, i32*** %9, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32* %42, i64* %45, i32 %47)
  br label %52

49:                                               ; preds = %25, %5
  %50 = load i32**, i32*** %9, align 8
  store i32* null, i32** %50, align 8
  %51 = load i32*, i32** %10, align 8
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %31
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @vlc_mutex_unlock(i32* %54)
  %56 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %56
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
