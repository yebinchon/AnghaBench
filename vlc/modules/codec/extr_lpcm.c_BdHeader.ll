; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_BdHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_lpcm.c_BdHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@AOUT_CHAN_CENTER = common dso_local global i32 0, align 4
@AOUT_CHAN_LEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_RIGHT = common dso_local global i32 0, align 4
@pi_3channels_in = common dso_local global i32* null, align 8
@AOUT_CHAN_REARCENTER = common dso_local global i32 0, align 4
@AOUT_CHAN_REARLEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_REARRIGHT = common dso_local global i32 0, align 4
@pi_4channels_in = common dso_local global i32* null, align 8
@pi_5channels_in = common dso_local global i32* null, align 8
@AOUT_CHAN_LFE = common dso_local global i32 0, align 4
@pi_6channels_in = common dso_local global i32* null, align 8
@AOUT_CHAN_MIDDLELEFT = common dso_local global i32 0, align 4
@AOUT_CHAN_MIDDLERIGHT = common dso_local global i32 0, align 4
@pi_7channels_in = common dso_local global i32* null, align 8
@pi_8channels_in = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32*, i32*, i32*, i32*)* @BdHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BdHeader(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32*, i32** %15, align 8
  %19 = call i32 @GetDWBE(i32* %18)
  store i32 %19, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %20 = load i32, i32* %16, align 4
  %21 = and i32 %20, 61440
  %22 = ashr i32 %21, 12
  switch i32 %22, label %135 [
    i32 1, label %23
    i32 3, label %27
    i32 4, label %33
    i32 5, label %42
    i32 6, label %50
    i32 7, label %60
    i32 8, label %71
    i32 9, label %84
    i32 10, label %99
    i32 11, label %116
  ]

23:                                               ; preds = %7
  %24 = load i32*, i32** %11, align 8
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %26 = load i32*, i32** %13, align 8
  store i32 %25, i32* %26, align 4
  br label %136

27:                                               ; preds = %7
  %28 = load i32*, i32** %11, align 8
  store i32 2, i32* %28, align 4
  %29 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %30 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** %13, align 8
  store i32 %31, i32* %32, align 4
  br label %136

33:                                               ; preds = %7
  %34 = load i32*, i32** %11, align 8
  store i32 3, i32* %34, align 4
  %35 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %36 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %39 = or i32 %37, %38
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** @pi_3channels_in, align 8
  store i32* %41, i32** %17, align 8
  br label %136

42:                                               ; preds = %7
  %43 = load i32*, i32** %11, align 8
  store i32 3, i32* %43, align 4
  %44 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %45 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %48 = or i32 %46, %47
  %49 = load i32*, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  br label %136

50:                                               ; preds = %7
  %51 = load i32*, i32** %11, align 8
  store i32 4, i32* %51, align 4
  %52 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %53 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @AOUT_CHAN_REARCENTER, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %13, align 8
  store i32 %58, i32* %59, align 4
  br label %136

60:                                               ; preds = %7
  %61 = load i32*, i32** %11, align 8
  store i32 4, i32* %61, align 4
  %62 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %63 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %68 = or i32 %66, %67
  %69 = load i32*, i32** %13, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** @pi_4channels_in, align 8
  store i32* %70, i32** %17, align 8
  br label %136

71:                                               ; preds = %7
  %72 = load i32*, i32** %11, align 8
  store i32 5, i32* %72, align 4
  %73 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %74 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %81 = or i32 %79, %80
  %82 = load i32*, i32** %13, align 8
  store i32 %81, i32* %82, align 4
  %83 = load i32*, i32** @pi_5channels_in, align 8
  store i32* %83, i32** %17, align 8
  br label %136

84:                                               ; preds = %7
  %85 = load i32*, i32** %11, align 8
  store i32 6, i32* %85, align 4
  %86 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %87 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %96 = or i32 %94, %95
  %97 = load i32*, i32** %13, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** @pi_6channels_in, align 8
  store i32* %98, i32** %17, align 8
  br label %136

99:                                               ; preds = %7
  %100 = load i32*, i32** %11, align 8
  store i32 7, i32* %100, align 4
  %101 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %102 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @AOUT_CHAN_MIDDLELEFT, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @AOUT_CHAN_MIDDLERIGHT, align 4
  %113 = or i32 %111, %112
  %114 = load i32*, i32** %13, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32*, i32** @pi_7channels_in, align 8
  store i32* %115, i32** %17, align 8
  br label %136

116:                                              ; preds = %7
  %117 = load i32*, i32** %11, align 8
  store i32 8, i32* %117, align 4
  %118 = load i32, i32* @AOUT_CHAN_LEFT, align 4
  %119 = load i32, i32* @AOUT_CHAN_RIGHT, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @AOUT_CHAN_CENTER, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @AOUT_CHAN_REARLEFT, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @AOUT_CHAN_REARRIGHT, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @AOUT_CHAN_MIDDLELEFT, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @AOUT_CHAN_MIDDLERIGHT, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @AOUT_CHAN_LFE, align 4
  %132 = or i32 %130, %131
  %133 = load i32*, i32** %13, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32*, i32** @pi_8channels_in, align 8
  store i32* %134, i32** %17, align 8
  br label %136

135:                                              ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %174

136:                                              ; preds = %116, %99, %84, %71, %60, %50, %42, %33, %27, %23
  %137 = load i32*, i32** %11, align 8
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 1
  %140 = load i32*, i32** %12, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i32, i32* %16, align 4
  %142 = ashr i32 %141, 6
  %143 = and i32 %142, 3
  switch i32 %143, label %148 [
    i32 1, label %144
    i32 2, label %146
    i32 3, label %146
  ]

144:                                              ; preds = %136
  %145 = load i32*, i32** %14, align 8
  store i32 16, i32* %145, align 4
  br label %149

146:                                              ; preds = %136, %136
  %147 = load i32*, i32** %14, align 8
  store i32 24, i32* %147, align 4
  br label %149

148:                                              ; preds = %136
  store i32 -1, i32* %8, align 4
  br label %174

149:                                              ; preds = %146, %144
  %150 = load i32, i32* %16, align 4
  %151 = ashr i32 %150, 8
  %152 = and i32 %151, 15
  switch i32 %152, label %159 [
    i32 1, label %153
    i32 4, label %155
    i32 5, label %157
  ]

153:                                              ; preds = %149
  %154 = load i32*, i32** %10, align 8
  store i32 48000, i32* %154, align 4
  br label %160

155:                                              ; preds = %149
  %156 = load i32*, i32** %10, align 8
  store i32 96000, i32* %156, align 4
  br label %160

157:                                              ; preds = %149
  %158 = load i32*, i32** %10, align 8
  store i32 192000, i32* %158, align 4
  br label %160

159:                                              ; preds = %149
  store i32 -1, i32* %8, align 4
  br label %174

160:                                              ; preds = %157, %155, %153
  %161 = load i32*, i32** %17, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load i32*, i32** %17, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @aout_CheckChannelReorder(i32* %164, i32* null, i32 %166, i32 %169)
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %163, %160
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %173, %159, %148, %135
  %175 = load i32, i32* %8, align 4
  ret i32 %175
}

declare dso_local i32 @GetDWBE(i32*) #1

declare dso_local i32 @aout_CheckChannelReorder(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
