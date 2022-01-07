; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_qsv.c_encode_frame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_qsv.c_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_23__*, i8*, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_25__, i32, i32, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_30__ = type { i32 }

@MFX_ERR_MEMORY_ALLOC = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Unable to find an unlocked surface in the pool\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to allocate syncpoint for encoder output\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Unable to allocate block for encoder output\00", align 1
@MFX_WRN_DEVICE_BUSY = common dso_local global i64 0, align 8
@MFX_WRN_IN_EXECUTION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Device is busy, let's wait and retry %d\00", align 1
@QSV_BUSYWAIT_TIME = common dso_local global i32 0, align 4
@MFX_ERR_MORE_DATA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"Encoder feeding phase, more data is needed.\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Encoder is empty\00", align 1
@MFX_ERR_NONE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [51 x i8] c"Encoder not ready or error (%d), trying a reset...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_27__*, %struct.TYPE_26__*)* @encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @encode_frame(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %4, align 8
  %10 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  store %struct.TYPE_28__* %12, %struct.TYPE_28__** %5, align 8
  %13 = load i64, i64* @MFX_ERR_MEMORY_ALLOC, align 8
  store i64 %13, i64* %6, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %7, align 8
  store i32* null, i32** %8, align 8
  %14 = call i8* @calloc(i32 1, i32 24)
  %15 = bitcast i8* %14 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %15, %struct.TYPE_29__** %9, align 8
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %17 = icmp eq %struct.TYPE_29__* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %162

22:                                               ; preds = %2
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %24 = icmp ne %struct.TYPE_26__* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %22
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %39 = call i64 @submit_frame(%struct.TYPE_27__* %37, %struct.TYPE_26__* %38, %struct.TYPE_30__** %7)
  %40 = load i64, i64* @VLC_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %44 = call i32 @msg_Warn(%struct.TYPE_27__* %43, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %162

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %22
  %47 = call i8* @calloc(i32 1, i32 1)
  %48 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = icmp ne i8* %47, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %53 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Err(%struct.TYPE_27__* %52, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %162

54:                                               ; preds = %46
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %59, 1000
  %61 = call %struct.TYPE_23__* @block_Alloc(i32 %60)
  %62 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 0
  store %struct.TYPE_23__* %61, %struct.TYPE_23__** %63, align 8
  %64 = icmp ne %struct.TYPE_23__* %61, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %67 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Err(%struct.TYPE_27__* %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %162

68:                                               ; preds = %54
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 2
  %71 = call i32 @memset(%struct.TYPE_22__* %70, i32 0, i32 8)
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %89 = icmp ne %struct.TYPE_30__* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %68
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  store i32* %92, i32** %8, align 8
  br label %93

93:                                               ; preds = %90, %68
  br label %94

94:                                               ; preds = %131, %93
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @MFXVideoENCODE_EncodeFrameAsync(i32 %97, i32 0, i32* %98, %struct.TYPE_22__* %100, i8* %103)
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @MFX_WRN_DEVICE_BUSY, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %94
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @MFX_WRN_IN_EXECUTION, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %132

113:                                              ; preds = %108, %94
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = srem i32 %116, 16
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Dbg(%struct.TYPE_27__* %121, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %120, %113
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* @MFX_WRN_DEVICE_BUSY, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* @QSV_BUSYWAIT_TIME, align 4
  %130 = call i32 @vlc_tick_sleep(i32 %129)
  br label %131

131:                                              ; preds = %128, %124
  br label %94

132:                                              ; preds = %112
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* @MFX_ERR_MORE_DATA, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %138 = icmp ne %struct.TYPE_26__* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %141 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Dbg(%struct.TYPE_27__* %140, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %145

142:                                              ; preds = %136
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %144 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Dbg(%struct.TYPE_27__* %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %145

145:                                              ; preds = %142, %139
  br label %161

146:                                              ; preds = %132
  %147 = load i64, i64* %6, align 8
  %148 = load i64, i64* @MFX_ERR_NONE, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %152 = load i64, i64* %6, align 8
  %153 = call i32 (%struct.TYPE_27__*, i8*, ...) @msg_Err(%struct.TYPE_27__* %151, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i64 %152)
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 0
  %159 = call i32 @MFXVideoENCODE_Reset(i32 %156, %struct.TYPE_25__* %158)
  br label %160

160:                                              ; preds = %150, %146
  br label %161

161:                                              ; preds = %160, %145
  br label %162

162:                                              ; preds = %161, %65, %51, %42, %21
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* @MFX_ERR_NONE, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %174, label %166

166:                                              ; preds = %162
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %168 = icmp ne %struct.TYPE_29__* %167, null
  br i1 %168, label %169, label %187

169:                                              ; preds = %166
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %187, label %174

174:                                              ; preds = %169, %162
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %176, align 8
  %178 = icmp ne %struct.TYPE_23__* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %174
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %181, align 8
  %183 = call i32 @block_Release(%struct.TYPE_23__* %182)
  br label %184

184:                                              ; preds = %179, %174
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %186 = call i32 @free(%struct.TYPE_29__* %185)
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %9, align 8
  br label %187

187:                                              ; preds = %184, %169, %166
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  ret %struct.TYPE_29__* %188
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @submit_frame(%struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_30__**) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_27__*, i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_27__*, i8*, ...) #1

declare dso_local %struct.TYPE_23__* @block_Alloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @MFXVideoENCODE_EncodeFrameAsync(i32, i32, i32*, %struct.TYPE_22__*, i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_27__*, i8*, ...) #1

declare dso_local i32 @vlc_tick_sleep(i32) #1

declare dso_local i32 @MFXVideoENCODE_Reset(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @block_Release(%struct.TYPE_23__*) #1

declare dso_local i32 @free(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
