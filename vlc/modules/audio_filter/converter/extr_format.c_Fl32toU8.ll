; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_format.c_Fl32toU8.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_format.c_Fl32toU8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, %struct.TYPE_4__*)* @Fl32toU8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @Fl32toU8(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to float*
  store float* %12, float** %5, align 8
  %13 = load float*, float** %5, align 8
  %14 = bitcast float* %13 to i32*
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sdiv i32 %17, 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %48, %2
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %7, align 8
  %23 = icmp ne i64 %21, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %20
  %25 = load float*, float** %5, align 8
  %26 = getelementptr inbounds float, float* %25, i32 1
  store float* %26, float** %5, align 8
  %27 = load float, float* %25, align 4
  %28 = fmul float %27, 1.280000e+02
  store float %28, float* %8, align 4
  %29 = load float, float* %8, align 4
  %30 = fcmp oge float %29, 1.270000e+02
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  store i32 255, i32* %32, align 4
  br label %48

34:                                               ; preds = %24
  %35 = load float, float* %8, align 4
  %36 = fcmp ole float %35, -1.280000e+02
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %6, align 8
  store i32 0, i32* %38, align 4
  br label %47

40:                                               ; preds = %34
  %41 = load float, float* %8, align 4
  %42 = call i64 @lroundf(float %41) #3
  %43 = add nsw i64 %42, 128
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %47

47:                                               ; preds = %40, %37
  br label %48

48:                                               ; preds = %47, %31
  br label %20

49:                                               ; preds = %20
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 4
  store i32 %53, i32* %51, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @VLC_UNUSED(i32* %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %56
}

; Function Attrs: nounwind
declare dso_local i64 @lroundf(float) #1

declare dso_local i32 @VLC_UNUSED(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
