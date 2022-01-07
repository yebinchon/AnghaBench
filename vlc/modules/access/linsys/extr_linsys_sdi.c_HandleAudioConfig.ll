; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_HandleAudioConfig.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_HandleAudioConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [36 x i8] c"malformed audio config for group %u\00", align 1
@MAX_AUDIOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"asymetric audio is not supported\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unknown rate for audio %u/%u (%u)\00", align 1
@VLC_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32, i32)* @HandleAudioConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleAudioConfig(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Warn(%struct.TYPE_9__* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %195

24:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %192, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @MAX_AUDIOS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %195

29:                                               ; preds = %25
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %11, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %191

41:                                               ; preds = %29
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %191

46:                                               ; preds = %41
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %105

51:                                               ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 224
  %56 = ashr i32 %55, 5
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %95

62:                                               ; preds = %51
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 510
  %67 = ashr i32 %66, 1
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 511
  %72 = shl i32 %71, 8
  %73 = or i32 %67, %72
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 9
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 511
  %78 = shl i32 %77, 17
  %79 = or i32 %73, %78
  store i32 %79, i32* %13, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 9
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 128
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %62
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %86, -67108864
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  br label %94

90:                                               ; preds = %62
  %91 = load i32, i32* %13, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %85
  br label %95

95:                                               ; preds = %94, %51
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 13
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %103 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Warn(%struct.TYPE_9__* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %95
  br label %159

105:                                              ; preds = %46
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 14
  %110 = ashr i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 4
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 1
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %149

116:                                              ; preds = %105
  %117 = load i32*, i32** %6, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 4
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 510
  %121 = ashr i32 %120, 1
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 5
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 511
  %126 = shl i32 %125, 8
  %127 = or i32 %121, %126
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 6
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 511
  %132 = shl i32 %131, 17
  %133 = or i32 %127, %132
  store i32 %133, i32* %14, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 6
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 128
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %116
  %140 = load i32, i32* %14, align 4
  %141 = or i32 %140, -67108864
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  br label %148

144:                                              ; preds = %116
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  br label %148

148:                                              ; preds = %144, %139
  br label %149

149:                                              ; preds = %148, %105
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 10
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 1
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Warn(%struct.TYPE_9__* %156, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %149
  br label %159

159:                                              ; preds = %158, %104
  %160 = load i32, i32* %12, align 4
  switch i32 %160, label %170 [
    i32 0, label %161
    i32 1, label %164
    i32 2, label %167
  ]

161:                                              ; preds = %159
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 3
  store i32 48000, i32* %163, align 4
  br label %183

164:                                              ; preds = %159
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 3
  store i32 44100, i32* %166, align 4
  br label %183

167:                                              ; preds = %159
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  store i32 32000, i32* %169, align 4
  br label %183

170:                                              ; preds = %159
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %12, align 4
  %182 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Warn(%struct.TYPE_9__* %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %180, i32 %181)
  br label %192

183:                                              ; preds = %167, %164, %161
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %186 = call i64 @InitAudio(%struct.TYPE_9__* %184, %struct.TYPE_8__* %185)
  %187 = load i64, i64* @VLC_SUCCESS, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %195

190:                                              ; preds = %183
  br label %191

191:                                              ; preds = %190, %41, %29
  br label %192

192:                                              ; preds = %191, %170
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %25

195:                                              ; preds = %20, %189, %25
  ret void
}

declare dso_local i32 @msg_Warn(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i64 @InitAudio(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
