; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec.c_DecodeBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec.c_DecodeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.TYPE_20__*, %struct.TYPE_22__**)*, i32, i32, i64, i64, %struct.TYPE_19__, i64 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Decoder is draining\00", align 1
@BLOCK_FLAG_DISCONTINUITY = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@BLOCK_FLAG_INTERLACED_MASK = common dso_local global i32 0, align 4
@MC_API_VIDEO_QUIRKS_SUPPORT_INTERLACED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"codec doesn't support interlaced videos\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"pf_on_new_block failed\00", align 1
@DECODE_FLAG_DRAIN = common dso_local global i32 0, align 4
@DECODE_FLAG_RESTART = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Draining from DecodeBlock\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Restarted from DecodeBlock\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"StartMediaCodec failed\00", align 1
@VLCDEC_ECRITICAL = common dso_local global i32 0, align 4
@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"mediacodec-failed\00", align 1
@VLC_VAR_VOID = common dso_local global i32 0, align 4
@VLCDEC_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_22__*)* @DecodeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodeBlock(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %6, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 2
  %16 = call i32 @vlc_mutex_lock(i32* %15)
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %175

27:                                               ; preds = %21
  br label %201

28:                                               ; preds = %2
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %30 = icmp eq %struct.TYPE_22__* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %33 = call i32 @msg_Err(%struct.TYPE_20__* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = call i32 @QueueBlockLocked(%struct.TYPE_20__* %39, %struct.TYPE_22__* null, i32 1)
  br label %41

41:                                               ; preds = %38, %31
  br label %175

42:                                               ; preds = %28
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BLOCK_FLAG_DISCONTINUITY, align 4
  %47 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %42
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 6
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %58 = call i32 @QueueBlockLocked(%struct.TYPE_20__* %57, %struct.TYPE_22__* null, i32 1)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = call i32 @DecodeFlushLocked(%struct.TYPE_20__* %60)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %175

67:                                               ; preds = %59
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %175

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %42
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @BLOCK_FLAG_INTERLACED_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @MC_API_VIDEO_QUIRKS_SUPPORT_INTERLACED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %83
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %93 = call i32 @msg_Warn(%struct.TYPE_20__* %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %201

94:                                               ; preds = %83, %76
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_20__*, %struct.TYPE_22__**)*, i32 (%struct.TYPE_20__*, %struct.TYPE_22__**)** %96, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %99 = call i32 %97(%struct.TYPE_20__* %98, %struct.TYPE_22__** %5)
  store i32 %99, i32* %7, align 4
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = call i32 @AbortDecoderLocked(%struct.TYPE_20__* %105)
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %108 = call i32 @msg_Err(%struct.TYPE_20__* %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %101
  br label %175

110:                                              ; preds = %94
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @DECODE_FLAG_DRAIN, align 4
  %115 = load i32, i32* @DECODE_FLAG_RESTART, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %113, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %164

119:                                              ; preds = %110
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = call i32 @msg_Warn(%struct.TYPE_20__* %120, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @DECODE_FLAG_RESTART, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %8, align 4
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 1
  store i32 0, i32* %128, align 8
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %119
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %135 = call i32 @QueueBlockLocked(%struct.TYPE_20__* %134, %struct.TYPE_22__* null, i32 1)
  br label %136

136:                                              ; preds = %133, %119
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = call i32 @DecodeFlushLocked(%struct.TYPE_20__* %137)
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %136
  br label %175

144:                                              ; preds = %136
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %149 = call i32 @StopMediaCodec(%struct.TYPE_20__* %148)
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %151 = call i32 @StartMediaCodec(%struct.TYPE_20__* %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  switch i32 %152, label %157 [
    i32 128, label %153
    i32 129, label %156
  ]

153:                                              ; preds = %147
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %155 = call i32 @msg_Warn(%struct.TYPE_20__* %154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %162

156:                                              ; preds = %147
  br label %162

157:                                              ; preds = %147
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %159 = call i32 @msg_Err(%struct.TYPE_20__* %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %161 = call i32 @AbortDecoderLocked(%struct.TYPE_20__* %160)
  br label %175

162:                                              ; preds = %156, %153
  br label %163

163:                                              ; preds = %162, %144
  br label %164

164:                                              ; preds = %163, %110
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %173 = call i32 @QueueBlockLocked(%struct.TYPE_20__* %171, %struct.TYPE_22__* %172, i32 0)
  br label %174

174:                                              ; preds = %170, %164
  br label %175

175:                                              ; preds = %174, %157, %143, %109, %74, %66, %41, %26
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %177 = icmp ne %struct.TYPE_22__* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %180 = call i32 @block_Release(%struct.TYPE_22__* %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 4
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i32, i32* @VLCDEC_ECRITICAL, align 4
  br label %195

193:                                              ; preds = %186, %181
  %194 = load i32, i32* @VLCDEC_SUCCESS, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32 [ %192, %191 ], [ %194, %193 ]
  store i32 %196, i32* %10, align 4
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 2
  %199 = call i32 @vlc_mutex_unlock(i32* %198)
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %3, align 4
  br label %209

201:                                              ; preds = %91, %27
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 2
  %204 = call i32 @vlc_mutex_unlock(i32* %203)
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %206 = load i32, i32* @VLC_VAR_VOID, align 4
  %207 = call i32 @var_Create(%struct.TYPE_20__* %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @VLCDEC_RELOAD, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %201, %195
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @QueueBlockLocked(%struct.TYPE_20__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @DecodeFlushLocked(%struct.TYPE_20__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @AbortDecoderLocked(%struct.TYPE_20__*) #1

declare dso_local i32 @StopMediaCodec(%struct.TYPE_20__*) #1

declare dso_local i32 @StartMediaCodec(%struct.TYPE_20__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_22__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @var_Create(%struct.TYPE_20__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
