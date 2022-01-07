; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_format.c_Fl32toFl64.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_format.c_Fl32toFl64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, %struct.TYPE_8__*)* @Fl32toFl64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @Fl32toFl64(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 2
  %13 = call %struct.TYPE_8__* @block_Alloc(i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %49

20:                                               ; preds = %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = call i32 @block_CopyProperties(%struct.TYPE_8__* %21, %struct.TYPE_8__* %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to float*
  store float* %27, float** %6, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to double*
  store double* %31, double** %7, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sdiv i32 %34, 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %41, %20
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %8, align 8
  %40 = icmp ne i64 %38, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load float*, float** %6, align 8
  %43 = getelementptr inbounds float, float* %42, i32 1
  store float* %43, float** %6, align 8
  %44 = load float, float* %42, align 4
  %45 = fpext float %44 to double
  %46 = load double*, double** %7, align 8
  %47 = getelementptr inbounds double, double* %46, i32 1
  store double* %47, double** %7, align 8
  store double %45, double* %46, align 8
  br label %37

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %19
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = call i32 @block_Release(%struct.TYPE_8__* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @VLC_UNUSED(i32* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %54
}

declare dso_local %struct.TYPE_8__* @block_Alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @block_CopyProperties(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_8__*) #1

declare dso_local i32 @VLC_UNUSED(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
