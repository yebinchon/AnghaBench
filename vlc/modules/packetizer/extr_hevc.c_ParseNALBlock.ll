; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ParseNALBlock.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ParseNALBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i64, i64, i32, i64 }
%struct.TYPE_24__ = type { i32, i64, i64, i32, i32* }

@BLOCK_FLAG_AU_END = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"NAL too small\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Forbidden zero bit not null, corrupted NAL\00", align 1
@HEVC_NAL_VPS = common dso_local global i64 0, align 8
@BLOCK_FLAG_DROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Waiting for VPS/SPS/PPS\00", align 1
@MISSING = common dso_local global i64 0, align 8
@SENT = common dso_local global i64 0, align 8
@COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_22__*, i32*, %struct.TYPE_24__*)* @ParseNALBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @ParseNALBlock(%struct.TYPE_22__* %0, i32* %1, %struct.TYPE_24__* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %7, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %8, align 8
  %17 = load i32*, i32** %6, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BLOCK_FLAG_AU_END, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %3
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VLC_TICK_INVALID, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @date_Set(i32* %35, i64 %38)
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 3
  %48 = call i64 @date_Get(i32* %47)
  %49 = load i64, i64* @VLC_TICK_INVALID, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %40
  %55 = load i32*, i32** %6, align 8
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %3
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 5
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %66 = call i32 @msg_Warn(%struct.TYPE_22__* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %68 = call i32 @block_Release(%struct.TYPE_24__* %67)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %4, align 8
  br label %186

69:                                               ; preds = %56
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 128
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %79 = call i32 @msg_Warn(%struct.TYPE_22__* %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %81 = call i32 @block_Release(%struct.TYPE_24__* %80)
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %83 = call %struct.TYPE_24__* @OutputQueues(%struct.TYPE_23__* %82, i32 0)
  %84 = call %struct.TYPE_24__* @GatherAndValidateChain(%struct.TYPE_24__* %83)
  store %struct.TYPE_24__* %84, %struct.TYPE_24__** %4, align 8
  br label %186

85:                                               ; preds = %69
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %10, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %11, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %12, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = call i64 @hevc_getNALType(i32* %95)
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @HEVC_NAL_VPS, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %85
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %104 = call %struct.TYPE_24__* @ParseVCL(%struct.TYPE_22__* %101, i64 %102, %struct.TYPE_24__* %103)
  store %struct.TYPE_24__* %104, %struct.TYPE_24__** %12, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %106 = icmp ne %struct.TYPE_24__* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @BLOCK_FLAG_DROP, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %116 = call i32 @msg_Info(%struct.TYPE_22__* %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %107, %100
  br label %123

118:                                              ; preds = %85
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %120 = load i64, i64* %13, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %122 = call %struct.TYPE_24__* @ParseNonVCL(%struct.TYPE_22__* %119, i64 %120, %struct.TYPE_24__* %121)
  store %struct.TYPE_24__* %122, %struct.TYPE_24__** %12, align 8
  br label %123

123:                                              ; preds = %118, %117
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %125 = icmp ne %struct.TYPE_24__* %124, null
  br i1 %125, label %145, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %126
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @MISSING, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %136, %129
  %142 = phi i1 [ false, %129 ], [ %140, %136 ]
  %143 = zext i1 %142 to i32
  %144 = call %struct.TYPE_24__* @OutputQueues(%struct.TYPE_23__* %130, i32 %143)
  store %struct.TYPE_24__* %144, %struct.TYPE_24__** %12, align 8
  br label %145

145:                                              ; preds = %141, %126, %123
  %146 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %147 = call %struct.TYPE_24__* @GatherAndValidateChain(%struct.TYPE_24__* %146)
  store %struct.TYPE_24__* %147, %struct.TYPE_24__** %12, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %149 = icmp ne %struct.TYPE_24__* %148, null
  br i1 %149, label %150, label %184

150:                                              ; preds = %145
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SENT, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %150
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @COMPLETE, align 8
  %161 = icmp eq i64 %159, %160
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i64, i64* @SENT, align 8
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 2
  store i64 %164, i64* %166, align 8
  br label %167

167:                                              ; preds = %156, %150
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %170 = call i32 @SetOutputBlockProperties(%struct.TYPE_22__* %168, %struct.TYPE_24__* %169)
  %171 = load i64, i64* %10, align 8
  %172 = load i64, i64* @VLC_TICK_INVALID, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %167
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 3
  %177 = load i64, i64* %10, align 8
  %178 = call i32 @date_Set(i32* %176, i64 %177)
  br label %179

179:                                              ; preds = %174, %167
  %180 = load i64, i64* %11, align 8
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 1
  store i64 %180, i64* %182, align 8
  %183 = load i32*, i32** %6, align 8
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %179, %145
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  store %struct.TYPE_24__* %185, %struct.TYPE_24__** %4, align 8
  br label %186

186:                                              ; preds = %184, %77, %64
  %187 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  ret %struct.TYPE_24__* %187
}

declare dso_local i32 @date_Set(i32*, i64) #1

declare dso_local i64 @date_Get(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @block_Release(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @GatherAndValidateChain(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_24__* @OutputQueues(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @hevc_getNALType(i32*) #1

declare dso_local %struct.TYPE_24__* @ParseVCL(%struct.TYPE_22__*, i64, %struct.TYPE_24__*) #1

declare dso_local i32 @msg_Info(%struct.TYPE_22__*, i8*) #1

declare dso_local %struct.TYPE_24__* @ParseNonVCL(%struct.TYPE_22__*, i64, %struct.TYPE_24__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SetOutputBlockProperties(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
