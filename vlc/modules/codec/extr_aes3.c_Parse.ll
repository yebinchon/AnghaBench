; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_aes3.c_Parse.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_aes3.c_Parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i64, i64, i32 }

@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@AES3_HEADER_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"frame is too short\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"frame has invalid header\00", align 1
@VLC_CODEC_S16N = common dso_local global i32 0, align 4
@VLC_CODEC_S32N = common dso_local global i32 0, align 4
@pi_original_channels = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_14__*, i32*, i32*, %struct.TYPE_16__*, i32)* @Parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @Parse(%struct.TYPE_14__* %0, i32* %1, i32* %2, %struct.TYPE_16__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_16__* %3, %struct.TYPE_16__** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %12, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %21 = icmp ne %struct.TYPE_16__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %183

23:                                               ; preds = %5
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %28 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %23
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %34 = call i32 @Flush(%struct.TYPE_14__* %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %43 = call i32 @block_Release(%struct.TYPE_16__* %42)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %183

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %23
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VLC_TICK_INVALID, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %45
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = call i64 @date_Get(i32* %56)
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @date_Set(i32* %61, i64 %64)
  br label %66

66:                                               ; preds = %59, %51, %45
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = call i64 @date_Get(i32* %68)
  %70 = load i64, i64* @VLC_TICK_INVALID, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %74 = call i32 @block_Release(%struct.TYPE_16__* %73)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %183

75:                                               ; preds = %66
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @AES3_HEADER_LEN, align 8
  %80 = icmp sle i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = call i32 @msg_Err(%struct.TYPE_14__* %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %85 = call i32 @block_Release(%struct.TYPE_16__* %84)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %183

86:                                               ; preds = %75
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @GetDWBE(i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = ashr i32 %91, 16
  %93 = and i32 %92, 65535
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %13, align 4
  %95 = ashr i32 %94, 14
  %96 = and i32 %95, 3
  %97 = mul nsw i32 2, %96
  %98 = add nsw i32 2, %97
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %13, align 4
  %100 = ashr i32 %99, 4
  %101 = and i32 %100, 3
  %102 = mul nsw i32 4, %101
  %103 = add nsw i32 16, %102
  store i32 %103, i32* %16, align 4
  %104 = load i64, i64* @AES3_HEADER_LEN, align 8
  %105 = load i32, i32* %14, align 4
  %106 = zext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %115, label %112

112:                                              ; preds = %86
  %113 = load i32, i32* %16, align 4
  %114 = icmp sgt i32 %113, 24
  br i1 %114, label %115, label %120

115:                                              ; preds = %112, %86
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %117 = call i32 @msg_Err(%struct.TYPE_14__* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %119 = call i32 @block_Release(%struct.TYPE_16__* %118)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %183

120:                                              ; preds = %112
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  store i32 %124, i32* %128, align 8
  br label %149

129:                                              ; preds = %120
  %130 = load i32, i32* %16, align 4
  %131 = icmp eq i32 %130, 16
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* @VLC_CODEC_S16N, align 4
  br label %136

134:                                              ; preds = %129
  %135 = load i32, i32* @VLC_CODEC_S32N, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* %16, align 4
  %142 = icmp eq i32 %141, 16
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 16, i32 32
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  store i32 %144, i32* %148, align 8
  br label %149

149:                                              ; preds = %136, %123
  %150 = load i32, i32* %15, align 4
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  %155 = load i32*, i32** @pi_original_channels, align 8
  %156 = load i32, i32* %15, align 4
  %157 = sdiv i32 %156, 2
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 2
  store i32 %161, i32* %165, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @AES3_HEADER_LEN, align 8
  %170 = sub nsw i64 %168, %169
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 4, %171
  %173 = load i32, i32* %15, align 4
  %174 = mul nsw i32 %172, %173
  %175 = sdiv i32 %174, 8
  %176 = sext i32 %175 to i64
  %177 = sdiv i64 %170, %176
  %178 = trunc i64 %177 to i32
  %179 = load i32*, i32** %8, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* %16, align 4
  %181 = load i32*, i32** %9, align 8
  store i32 %180, i32* %181, align 4
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %182, %struct.TYPE_16__** %6, align 8
  br label %183

183:                                              ; preds = %149, %115, %81, %72, %41, %22
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %184
}

declare dso_local i32 @Flush(%struct.TYPE_14__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_16__*) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @GetDWBE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
