; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_rtp_get_ts.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_rtp.c_rtp_get_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }

@VLC_TICK_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtp_get_ts(%struct.TYPE_6__* %0, %struct.TYPE_8__* %1, i32* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i64*, i64** %11, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64*, i64** %11, align 8
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %18, %5
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %7, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = icmp eq %struct.TYPE_6__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call i64 @rtp_init_ts(i32* %31, i8* %32)
  store i64 %33, i64* %6, align 8
  br label %78

34:                                               ; preds = %27
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %12, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = call i32 @vlc_mutex_lock(i32* %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %13, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = call i32 @vlc_mutex_unlock(i32* %45)
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @VLC_TICK_INVALID, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %34
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %6, align 8
  br label %78

54:                                               ; preds = %34
  %55 = call i64 (...) @vlc_tick_now()
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %6, align 8
  br label %78

63:                                               ; preds = %54
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %13, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %15, align 8
  %67 = load i64*, i64** %11, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i64, i64* %15, align 8
  %71 = load i64*, i64** %11, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %15, align 8
  %77 = add nsw i64 %75, %76
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %72, %59, %50, %30
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

declare dso_local i64 @rtp_init_ts(i32*, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i64 @vlc_tick_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
