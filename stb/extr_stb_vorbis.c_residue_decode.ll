; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_residue_decode.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_residue_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, float*, i32, i32, i32)* @residue_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @residue_decode(i32* %0, %struct.TYPE_5__* %1, float* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store float* %2, float** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %19, %22
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %49, %18
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %31 = load float*, float** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %34, i64 %36
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %38, %39
  %41 = load i32, i32* %14, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %15, align 4
  %44 = call i32 @codebook_decode_step(i32* %29, %struct.TYPE_5__* %30, float* %37, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %28
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %7, align 4
  br label %86

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %24

52:                                               ; preds = %24
  br label %84

53:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %72, %53
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %83

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = load float*, float** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %14, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 @codebook_decode(i32* %59, %struct.TYPE_5__* %60, float* %64, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %7, align 4
  br label %86

72:                                               ; preds = %58
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %14, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %54

83:                                               ; preds = %54
  br label %84

84:                                               ; preds = %83, %52
  %85 = load i32, i32* @TRUE, align 4
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %84, %70, %46
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @codebook_decode_step(i32*, %struct.TYPE_5__*, float*, i32, i32) #1

declare dso_local i32 @codebook_decode(i32*, %struct.TYPE_5__*, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
