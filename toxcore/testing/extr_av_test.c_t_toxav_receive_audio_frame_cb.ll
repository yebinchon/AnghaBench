; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_t_toxav_receive_audio_frame_cb.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_av_test.c_t_toxav_receive_audio_frame_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t_toxav_receive_audio_frame_cb(i32* %0, i32 %1, i32* %2, i64 %3, i64 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %17 = load i8*, i8** %14, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %15, align 8
  %19 = load i64, i64* %11, align 8
  %20 = mul i64 %19, 4
  %21 = load i64, i64* %12, align 8
  %22 = mul i64 %20, %21
  %23 = add i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = call %struct.TYPE_5__* @malloc(i32 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %16, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = mul i64 %30, 4
  %32 = load i64, i64* %12, align 8
  %33 = mul i64 %31, %32
  %34 = call i32 @memcpy(i32 %28, i32* %29, i64 %33)
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pthread_mutex_lock(i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %46 = call i32 @rb_write(i32 %44, %struct.TYPE_5__* %45)
  %47 = call i32 @free(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pthread_mutex_unlock(i32 %50)
  ret void
}

declare dso_local %struct.TYPE_5__* @malloc(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @pthread_mutex_lock(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @rb_write(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
