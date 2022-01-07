; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_VobHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_VobHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AOUT_CHAN_CENTER = common dso_local global i32 0, align 4
@AOUT_CHAN_LEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_RIGHT = common dso_local global i32 0, align 4
@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@AOUT_CHAN_REARLEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_REARRIGHT = common dso_local global i32 0, align 4
@AOUT_CHAN_MIDDLELEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_MIDDLERIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*)* @VobHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @VobHeader(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32*, i32** %11, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = ashr i32 %16, 4
  %18 = and i32 %17, 3
  switch i32 %18, label %27 [
    i32 0, label %19
    i32 1, label %21
    i32 2, label %23
    i32 3, label %25
  ]

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  store i32 48000, i32* %20, align 4
  br label %27

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  store i32 96000, i32* %22, align 4
  br label %27

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  store i32 44100, i32* %24, align 4
  br label %27

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  store i32 32000, i32* %26, align 4
  br label %27

27:                                               ; preds = %5, %25, %23, %21, %19
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, 7
  %30 = add nsw i32 %29, 1
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %33, 1
  switch i32 %34, label %115 [
    i32 0, label %35
    i32 1, label %38
    i32 2, label %43
    i32 3, label %50
    i32 4, label %59
    i32 5, label %70
    i32 6, label %83
    i32 7, label %98
  ]

35:                                               ; preds = %27
  %36 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %115

38:                                               ; preds = %27
  %39 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %40 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %41 = or i32 %39, %40
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %115

43:                                               ; preds = %27
  %44 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %45 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  br label %115

50:                                               ; preds = %27
  %51 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %52 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %57 = or i32 %55, %56
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  br label %115

59:                                               ; preds = %27
  %60 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %61 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %68 = or i32 %66, %67
  %69 = load i32*, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  br label %115

70:                                               ; preds = %27
  %71 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %72 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %81 = or i32 %79, %80
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  br label %115

83:                                               ; preds = %27
  %84 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %85 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @AOUT_CHAN_MIDDLELEFT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @AOUT_CHAN_MIDDLERIGHT, align 4
  %96 = or i32 %94, %95
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  br label %115

98:                                               ; preds = %27
  %99 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %100 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @AOUT_CHAN_MIDDLELEFT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @AOUT_CHAN_MIDDLERIGHT, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %113 = or i32 %111, %112
  %114 = load i32*, i32** %9, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %27, %98, %83, %70, %59, %50, %43, %38, %35
  %116 = load i32, i32* %12, align 4
  %117 = ashr i32 %116, 6
  %118 = and i32 %117, 3
  switch i32 %118, label %124 [
    i32 2, label %119
    i32 1, label %121
    i32 0, label %123
  ]

119:                                              ; preds = %115
  %120 = load i32*, i32** %10, align 8
  store i32 24, i32* %120, align 4
  br label %126

121:                                              ; preds = %115
  %122 = load i32*, i32** %10, align 8
  store i32 20, i32* %122, align 4
  br label %126

123:                                              ; preds = %115
  br label %124

124:                                              ; preds = %115, %123
  %125 = load i32*, i32** %10, align 8
  store i32 16, i32* %125, align 4
  br label %126

126:                                              ; preds = %124, %121, %119
  %127 = load i32*, i32** %11, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 5
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 128
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 -1, i32* %6, align 4
  br label %133

132:                                              ; preds = %126
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %132, %131
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
