; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxinternal.c_MuxValidate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxinternal.c_MuxValidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32* }

@WEBP_MUX_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@WEBP_MUX_OK = common dso_local global i64 0, align 8
@IDX_ICCP = common dso_local global i32 0, align 4
@ICCP_FLAG = common dso_local global i32 0, align 4
@IDX_EXIF = common dso_local global i32 0, align 4
@EXIF_FLAG = common dso_local global i32 0, align 4
@IDX_XMP = common dso_local global i32 0, align 4
@XMP_FLAG = common dso_local global i32 0, align 4
@IDX_ANIM = common dso_local global i32 0, align 4
@NO_FLAG = common dso_local global i32 0, align 4
@IDX_ANMF = common dso_local global i32 0, align 4
@ANIMATION_FLAG = common dso_local global i32 0, align 4
@IDX_VP8X = common dso_local global i32 0, align 4
@IDX_VP8 = common dso_local global i32 0, align 4
@ALPHA_FLAG = common dso_local global i32 0, align 4
@WEBP_CHUNK_ALPHA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @MuxValidate(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = icmp eq %struct.TYPE_9__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %19, i64* %2, align 8
  br label %225

20:                                               ; preds = %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %26, i64* %2, align 8
  br label %225

27:                                               ; preds = %20
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = call i64 @WebPMuxGetFeatures(%struct.TYPE_9__* %28, i32* %12)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @WEBP_MUX_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i64, i64* %13, align 8
  store i64 %34, i64* %2, align 8
  br label %225

35:                                               ; preds = %27
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = load i32, i32* @IDX_ICCP, align 4
  %38 = load i32, i32* @ICCP_FLAG, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i64 @ValidateChunk(%struct.TYPE_9__* %36, i32 %37, i32 %38, i32 %39, i32 1, i32* %4)
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @WEBP_MUX_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i64, i64* %13, align 8
  store i64 %45, i64* %2, align 8
  br label %225

46:                                               ; preds = %35
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %48 = load i32, i32* @IDX_EXIF, align 4
  %49 = load i32, i32* @EXIF_FLAG, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i64 @ValidateChunk(%struct.TYPE_9__* %47, i32 %48, i32 %49, i32 %50, i32 1, i32* %5)
  store i64 %51, i64* %13, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @WEBP_MUX_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i64, i64* %13, align 8
  store i64 %56, i64* %2, align 8
  br label %225

57:                                               ; preds = %46
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = load i32, i32* @IDX_XMP, align 4
  %60 = load i32, i32* @XMP_FLAG, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i64 @ValidateChunk(%struct.TYPE_9__* %58, i32 %59, i32 %60, i32 %61, i32 1, i32* %6)
  store i64 %62, i64* %13, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @WEBP_MUX_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i64, i64* %13, align 8
  store i64 %67, i64* %2, align 8
  br label %225

68:                                               ; preds = %57
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %70 = load i32, i32* @IDX_ANIM, align 4
  %71 = load i32, i32* @NO_FLAG, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i64 @ValidateChunk(%struct.TYPE_9__* %69, i32 %70, i32 %71, i32 %72, i32 1, i32* %7)
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @WEBP_MUX_OK, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %68
  %78 = load i64, i64* %13, align 8
  store i64 %78, i64* %2, align 8
  br label %225

79:                                               ; preds = %68
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %81 = load i32, i32* @IDX_ANMF, align 4
  %82 = load i32, i32* @NO_FLAG, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i64 @ValidateChunk(%struct.TYPE_9__* %80, i32 %81, i32 %82, i32 %83, i32 -1, i32* %8)
  store i64 %84, i64* %13, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* @WEBP_MUX_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i64, i64* %13, align 8
  store i64 %89, i64* %2, align 8
  br label %225

90:                                               ; preds = %79
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @ANIMATION_FLAG, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %90
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103, %100
  %107 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %107, i64* %2, align 8
  br label %225

108:                                              ; preds = %103, %90
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %8, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %114, %111
  %118 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %118, i64* %2, align 8
  br label %225

119:                                              ; preds = %114, %108
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %160, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  store %struct.TYPE_8__* %125, %struct.TYPE_8__** %15, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %127 = icmp eq %struct.TYPE_8__* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %128, %122
  %134 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %134, i64* %2, align 8
  br label %225

135:                                              ; preds = %128
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %159

140:                                              ; preds = %135
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %143, %146
  br i1 %147, label %156, label %148

148:                                              ; preds = %140
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %148, %140
  %157 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %157, i64* %2, align 8
  br label %225

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %135
  br label %160

160:                                              ; preds = %159, %119
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %162 = load i32, i32* @IDX_VP8X, align 4
  %163 = load i32, i32* @NO_FLAG, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i64 @ValidateChunk(%struct.TYPE_9__* %161, i32 %162, i32 %163, i32 %164, i32 1, i32* %9)
  store i64 %165, i64* %13, align 8
  %166 = load i64, i64* %13, align 8
  %167 = load i64, i64* @WEBP_MUX_OK, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %160
  %170 = load i64, i64* %13, align 8
  store i64 %170, i64* %2, align 8
  br label %225

171:                                              ; preds = %160
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %173 = load i32, i32* @IDX_VP8, align 4
  %174 = load i32, i32* @NO_FLAG, align 4
  %175 = load i32, i32* %12, align 4
  %176 = call i64 @ValidateChunk(%struct.TYPE_9__* %172, i32 %173, i32 %174, i32 %175, i32 -1, i32* %10)
  store i64 %176, i64* %13, align 8
  %177 = load i64, i64* %13, align 8
  %178 = load i64, i64* @WEBP_MUX_OK, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %171
  %181 = load i64, i64* %13, align 8
  store i64 %181, i64* %2, align 8
  br label %225

182:                                              ; preds = %171
  %183 = load i32, i32* %9, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %182
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 1
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %189, i64* %2, align 8
  br label %225

190:                                              ; preds = %185, %182
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 2
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %192, align 8
  %194 = call i64 @MuxHasAlpha(%struct.TYPE_8__* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %190
  %197 = load i32, i32* %9, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @ALPHA_FLAG, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %199
  %205 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %205, i64* %2, align 8
  br label %225

206:                                              ; preds = %199
  br label %222

207:                                              ; preds = %196
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %209 = load i32, i32* @WEBP_CHUNK_ALPHA, align 4
  %210 = call i64 @WebPMuxNumChunks(%struct.TYPE_9__* %208, i32 %209, i32* %11)
  store i64 %210, i64* %13, align 8
  %211 = load i64, i64* %13, align 8
  %212 = load i64, i64* @WEBP_MUX_OK, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = load i64, i64* %13, align 8
  store i64 %215, i64* %2, align 8
  br label %225

216:                                              ; preds = %207
  %217 = load i32, i32* %11, align 4
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %220, i64* %2, align 8
  br label %225

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221, %206
  br label %223

223:                                              ; preds = %222, %190
  %224 = load i64, i64* @WEBP_MUX_OK, align 8
  store i64 %224, i64* %2, align 8
  br label %225

225:                                              ; preds = %223, %219, %214, %204, %188, %180, %169, %156, %133, %117, %106, %88, %77, %66, %55, %44, %33, %25, %18
  %226 = load i64, i64* %2, align 8
  ret i64 %226
}

declare dso_local i64 @WebPMuxGetFeatures(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @ValidateChunk(%struct.TYPE_9__*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @MuxHasAlpha(%struct.TYPE_8__*) #1

declare dso_local i64 @WebPMuxNumChunks(%struct.TYPE_9__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
