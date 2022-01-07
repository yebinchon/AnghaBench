; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/extr_skiptags.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/extr_skiptags.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.skiptags_sys_t*, %struct.TYPE_7__* }
%struct.skiptags_sys_t = type { %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@SkipID3Tag = common dso_local global i32 0, align 4
@SkipAPETag = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@Read = common dso_local global i32 0, align 4
@Seek = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.skiptags_sys_t*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %4, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %36, %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = load i32, i32* @SkipID3Tag, align 4
  %19 = call i64 @SkipTag(%struct.TYPE_7__* %17, i32 %18, %struct.TYPE_8__** %8, i32* %9)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = load i32, i32* @SkipAPETag, align 4
  %24 = call i64 @SkipTag(%struct.TYPE_7__* %22, i32 %23, %struct.TYPE_8__** %8, i32* %9)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ true, %16 ], [ %25, %21 ]
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  br label %36

36:                                               ; preds = %31, %28
  br label %16

37:                                               ; preds = %26
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = call i64 @vlc_stream_Tell(%struct.TYPE_7__* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = call %struct.skiptags_sys_t* (...) @skiptags_sys_New()
  store %struct.skiptags_sys_t* %43, %struct.skiptags_sys_t** %6, align 8
  %44 = icmp ne %struct.skiptags_sys_t* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = call i32 @block_ChainRelease(%struct.TYPE_8__* %46)
  %48 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %48, i32* %2, align 4
  br label %69

49:                                               ; preds = %42
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.skiptags_sys_t*, %struct.skiptags_sys_t** %6, align 8
  %52 = getelementptr inbounds %struct.skiptags_sys_t, %struct.skiptags_sys_t* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %54 = load %struct.skiptags_sys_t*, %struct.skiptags_sys_t** %6, align 8
  %55 = getelementptr inbounds %struct.skiptags_sys_t, %struct.skiptags_sys_t* %54, i32 0, i32 0
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %55, align 8
  %56 = load %struct.skiptags_sys_t*, %struct.skiptags_sys_t** %6, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  store %struct.skiptags_sys_t* %56, %struct.skiptags_sys_t** %58, align 8
  %59 = load i32, i32* @Read, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @Seek, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @Control, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %49, %45
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @SkipTag(%struct.TYPE_7__*, i32, %struct.TYPE_8__**, i32*) #1

declare dso_local i64 @vlc_stream_Tell(%struct.TYPE_7__*) #1

declare dso_local %struct.skiptags_sys_t* @skiptags_sys_New(...) #1

declare dso_local i32 @block_ChainRelease(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
