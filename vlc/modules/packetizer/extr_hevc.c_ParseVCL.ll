; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ParseVCL.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_hevc.c_ParseVCL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_20__ = type { i32*, i64, i32 }

@MISSING = common dso_local global i64 0, align 8
@BLOCK_FLAG_TYPE_I = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_B = common dso_local global i32 0, align 4
@BLOCK_FLAG_TYPE_P = common dso_local global i32 0, align 4
@COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_20__* (%struct.TYPE_18__*, i32, %struct.TYPE_20__*)* @ParseVCL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_20__* @ParseVCL(%struct.TYPE_18__* %0, i32 %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %20, align 8
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %10, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = call i32 @hxxx_strip_AnnexB_startcode(i32** %10, i64* %11)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %31, 3
  br label %33

33:                                               ; preds = %30, %3
  %34 = phi i1 [ true, %3 ], [ %32, %30 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %43 = call i32 @block_ChainLastAppend(i32* %41, %struct.TYPE_20__* %42)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %4, align 8
  br label %198

44:                                               ; preds = %33
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @hevc_getNALLayer(i32* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 128
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %148

53:                                               ; preds = %44
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MISSING, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %66, %59
  %72 = phi i1 [ false, %59 ], [ %70, %66 ]
  %73 = zext i1 %72 to i32
  %74 = call %struct.TYPE_20__* @OutputQueues(%struct.TYPE_19__* %60, i32 %73)
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %9, align 8
  br label %75

75:                                               ; preds = %71, %53
  %76 = load i32*, i32** %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %79 = call i32* @hevc_decode_slice_header(i32* %76, i64 %77, i32 1, i32 (i32, %struct.TYPE_19__*, i32**, i32**, i32**)* @GetXPSSet, %struct.TYPE_19__* %78)
  store i32* %79, i32** %14, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @hevc_get_slice_pps_id(i32* %86)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %89 = call i32 @GetXPSSet(i32 %87, %struct.TYPE_19__* %88, i32** %16, i32** %15, i32** %17)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %91 = load i32*, i32** %16, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @ActivateSets(%struct.TYPE_18__* %90, i32* %91, i32* %92, i32* %93)
  br label %95

95:                                               ; preds = %85, %82, %75
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = call i32 @ParseStoredSEI(%struct.TYPE_18__* %96)
  %98 = load i32, i32* %6, align 4
  switch i32 %98, label %105 [
    i32 135, label %99
    i32 134, label %99
    i32 136, label %99
    i32 131, label %99
    i32 132, label %99
    i32 133, label %99
  ]

99:                                               ; preds = %95, %95, %95, %95, %95, %95
  %100 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %141

105:                                              ; preds = %95
  %106 = load i32*, i32** %14, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %134

108:                                              ; preds = %105
  %109 = load i32*, i32** %14, align 8
  %110 = call i32 @hevc_get_slice_type(i32* %109, i32* %18)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %133

112:                                              ; preds = %108
  %113 = load i32, i32* %18, align 4
  switch i32 %113, label %132 [
    i32 130, label %114
    i32 128, label %120
    i32 129, label %126
  ]

114:                                              ; preds = %112
  %115 = load i32, i32* @BLOCK_FLAG_TYPE_B, align 4
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %132

120:                                              ; preds = %112
  %121 = load i32, i32* @BLOCK_FLAG_TYPE_P, align 4
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %132

126:                                              ; preds = %112
  %127 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %112, %126, %120, %114
  br label %133

133:                                              ; preds = %132, %108
  br label %140

134:                                              ; preds = %105
  %135 = load i32, i32* @BLOCK_FLAG_TYPE_B, align 4
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %134, %133
  br label %141

141:                                              ; preds = %140, %99
  %142 = load i32*, i32** %14, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32*, i32** %14, align 8
  %146 = call i32 @hevc_rbsp_release_slice_header(i32* %145)
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147, %44
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @MISSING, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %148
  %155 = load i32, i32* %12, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %159 = call i64 @XPSReady(%struct.TYPE_19__* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i64, i64* @COMPLETE, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %161, %157, %154, %148
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @MISSING, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @BLOCK_FLAG_TYPE_I, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  store i32 1, i32* %180, align 8
  br label %181

181:                                              ; preds = %178, %171, %165
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %181
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @cc_storage_reset(i32 %189)
  br label %191

191:                                              ; preds = %186, %181
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %196 = call i32 @block_ChainLastAppend(i32* %194, %struct.TYPE_20__* %195)
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_20__* %197, %struct.TYPE_20__** %4, align 8
  br label %198

198:                                              ; preds = %191, %38
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  ret %struct.TYPE_20__* %199
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hxxx_strip_AnnexB_startcode(i32**, i64*) #1

declare dso_local i32 @block_ChainLastAppend(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @hevc_getNALLayer(i32*) #1

declare dso_local %struct.TYPE_20__* @OutputQueues(%struct.TYPE_19__*, i32) #1

declare dso_local i32* @hevc_decode_slice_header(i32*, i64, i32, i32 (i32, %struct.TYPE_19__*, i32**, i32**, i32**)*, %struct.TYPE_19__*) #1

declare dso_local i32 @GetXPSSet(i32, %struct.TYPE_19__*, i32**, i32**, i32**) #1

declare dso_local i32 @hevc_get_slice_pps_id(i32*) #1

declare dso_local i32 @ActivateSets(%struct.TYPE_18__*, i32*, i32*, i32*) #1

declare dso_local i32 @ParseStoredSEI(%struct.TYPE_18__*) #1

declare dso_local i32 @hevc_get_slice_type(i32*, i32*) #1

declare dso_local i32 @hevc_rbsp_release_slice_header(i32*) #1

declare dso_local i64 @XPSReady(%struct.TYPE_19__*) #1

declare dso_local i32 @cc_storage_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
