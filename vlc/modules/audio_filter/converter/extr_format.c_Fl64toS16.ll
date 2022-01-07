; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_format.c_Fl64toS16.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_filter/converter/extr_format.c_Fl64toS16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, %struct.TYPE_4__*)* @Fl64toS16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @Fl64toS16(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @VLC_UNUSED(i32* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to double*
  store double* %14, double** %5, align 8
  %15 = load double*, double** %5, align 8
  %16 = bitcast double* %15 to i32*
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 8
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %48, %2
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %7, align 8
  %25 = icmp ne i64 %23, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load double*, double** %5, align 8
  %28 = getelementptr inbounds double, double* %27, i32 1
  store double* %28, double** %5, align 8
  %29 = load double, double* %27, align 8
  %30 = fmul double %29, 3.276800e+04
  store double %30, double* %8, align 8
  %31 = load double, double* %8, align 8
  %32 = fcmp oge double %31, 3.276700e+04
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %6, align 8
  store i32 32767, i32* %34, align 4
  br label %48

36:                                               ; preds = %26
  %37 = load double, double* %8, align 8
  %38 = fcmp olt double %37, -3.276800e+04
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %6, align 8
  store i32 -32768, i32* %40, align 4
  br label %47

42:                                               ; preds = %36
  %43 = load double, double* %8, align 8
  %44 = call i32 @lround(double %43)
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %47

47:                                               ; preds = %42, %39
  br label %48

48:                                               ; preds = %47, %33
  br label %22

49:                                               ; preds = %22
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 4
  store i32 %53, i32* %51, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %54
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local i32 @lround(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
