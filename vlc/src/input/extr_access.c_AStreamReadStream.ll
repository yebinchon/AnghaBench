; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_access.c_AStreamReadStream.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_access.c_AStreamReadStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.vlc_access_stream_private = type { i64 }
%struct.input_stats = type { i32 }
%struct.TYPE_8__ = type { %struct.input_stats* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i64)* @AStreamReadStream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AStreamReadStream(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vlc_access_stream_private*, align 8
  %11 = alloca %struct.input_stats*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = call i64 @vlc_stream_Eof(%struct.TYPE_7__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = call i64 (...) @vlc_killed()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %57

23:                                               ; preds = %19
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @vlc_stream_ReadPartial(%struct.TYPE_7__* %24, i8* %25, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %23
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = call %struct.vlc_access_stream_private* @vlc_stream_Private(%struct.TYPE_7__* %31)
  store %struct.vlc_access_stream_private* %32, %struct.vlc_access_stream_private** %10, align 8
  %33 = load %struct.vlc_access_stream_private*, %struct.vlc_access_stream_private** %10, align 8
  %34 = getelementptr inbounds %struct.vlc_access_stream_private, %struct.vlc_access_stream_private* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.vlc_access_stream_private*, %struct.vlc_access_stream_private** %10, align 8
  %39 = getelementptr inbounds %struct.vlc_access_stream_private, %struct.vlc_access_stream_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call %struct.TYPE_8__* @input_priv(i64 %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.input_stats*, %struct.input_stats** %42, align 8
  br label %45

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %37
  %46 = phi %struct.input_stats* [ %43, %37 ], [ null, %44 ]
  store %struct.input_stats* %46, %struct.input_stats** %11, align 8
  %47 = load %struct.input_stats*, %struct.input_stats** %11, align 8
  %48 = icmp ne %struct.input_stats* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.input_stats*, %struct.input_stats** %11, align 8
  %51 = getelementptr inbounds %struct.input_stats, %struct.input_stats* %50, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @input_rate_Add(i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %45
  br label %55

55:                                               ; preds = %54, %23
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %22, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @vlc_stream_Eof(%struct.TYPE_7__*) #1

declare dso_local i64 @vlc_killed(...) #1

declare dso_local i32 @vlc_stream_ReadPartial(%struct.TYPE_7__*, i8*, i64) #1

declare dso_local %struct.vlc_access_stream_private* @vlc_stream_Private(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_8__* @input_priv(i64) #1

declare dso_local i32 @input_rate_Add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
