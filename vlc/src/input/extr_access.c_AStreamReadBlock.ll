; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_access.c_AStreamReadBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_access.c_AStreamReadBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_10__* }
%struct.vlc_access_stream_private = type { i64 }
%struct.input_stats = type { i32 }
%struct.TYPE_12__ = type { %struct.input_stats* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.TYPE_10__*, i32*)* @AStreamReadBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @AStreamReadBlock(%struct.TYPE_10__* %0, i32* noalias %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.vlc_access_stream_private*, align 8
  %9 = alloca %struct.input_stats*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = call i64 @vlc_stream_Eof(%struct.TYPE_10__* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  store i32 1, i32* %17, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %56

18:                                               ; preds = %2
  %19 = call i64 (...) @vlc_killed()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %56

22:                                               ; preds = %18
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = call %struct.TYPE_11__* @vlc_stream_ReadBlock(%struct.TYPE_10__* %23)
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %7, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = icmp ne %struct.TYPE_11__* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %29 = call %struct.vlc_access_stream_private* @vlc_stream_Private(%struct.TYPE_10__* %28)
  store %struct.vlc_access_stream_private* %29, %struct.vlc_access_stream_private** %8, align 8
  %30 = load %struct.vlc_access_stream_private*, %struct.vlc_access_stream_private** %8, align 8
  %31 = getelementptr inbounds %struct.vlc_access_stream_private, %struct.vlc_access_stream_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.vlc_access_stream_private*, %struct.vlc_access_stream_private** %8, align 8
  %36 = getelementptr inbounds %struct.vlc_access_stream_private, %struct.vlc_access_stream_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.TYPE_12__* @input_priv(i64 %37)
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.input_stats*, %struct.input_stats** %39, align 8
  br label %42

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %34
  %43 = phi %struct.input_stats* [ %40, %34 ], [ null, %41 ]
  store %struct.input_stats* %43, %struct.input_stats** %9, align 8
  %44 = load %struct.input_stats*, %struct.input_stats** %9, align 8
  %45 = icmp ne %struct.input_stats* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load %struct.input_stats*, %struct.input_stats** %9, align 8
  %48 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @input_rate_Add(i32* %48, i32 %51)
  br label %53

53:                                               ; preds = %46, %42
  br label %54

54:                                               ; preds = %53, %22
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %3, align 8
  br label %56

56:                                               ; preds = %54, %21, %16
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %57
}

declare dso_local i64 @vlc_stream_Eof(%struct.TYPE_10__*) #1

declare dso_local i64 @vlc_killed(...) #1

declare dso_local %struct.TYPE_11__* @vlc_stream_ReadBlock(%struct.TYPE_10__*) #1

declare dso_local %struct.vlc_access_stream_private* @vlc_stream_Private(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_12__* @input_priv(i64) #1

declare dso_local i32 @input_rate_Add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
