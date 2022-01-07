; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEsDvbSubtitle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_psi.c_PMTSetupEsDvbSubtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_27__, i32 }
%struct.TYPE_27__ = type { i64, %struct.TYPE_24__, i32*, i32*, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_30__ = type { i64, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i32, i32, i64 }

@SPU_ES = common dso_local global i32 0, align 4
@VLC_CODEC_DVBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"DVB subtitles\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"DVB subtitles: hearing impaired\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_31__*, %struct.TYPE_25__*, i32*)* @PMTSetupEsDvbSubtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PMTSetupEsDvbSubtitle(%struct.TYPE_31__* %0, %struct.TYPE_25__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_26__*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  store i32* %2, i32** %6, align 8
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %7, align 8
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  store %struct.TYPE_27__* %23, %struct.TYPE_27__** %8, align 8
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %25 = load i32, i32* @SPU_ES, align 4
  %26 = load i32, i32* @VLC_CODEC_DVBS, align 4
  %27 = call i32 @es_format_Change(%struct.TYPE_27__* %24, i32 %25, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call %struct.TYPE_30__* @PMTEsFindDescriptor(i32* %28, i32 89)
  store %struct.TYPE_30__* %29, %struct.TYPE_30__** %9, align 8
  store i32 0, i32* %10, align 4
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %31 = call %struct.TYPE_28__* @dvbpsi_DecodeSubtitlingDr(%struct.TYPE_30__* %30)
  store %struct.TYPE_28__* %31, %struct.TYPE_28__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %67, %3
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %34 = icmp ne %struct.TYPE_28__* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br label %41

41:                                               ; preds = %35, %32
  %42 = phi i1 [ false, %32 ], [ %40, %35 ]
  br i1 %42, label %43, label %70

43:                                               ; preds = %41
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp sge i32 %52, 16
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %13, align 4
  %56 = icmp sle i32 %55, 20
  br i1 %56, label %63, label %57

57:                                               ; preds = %54, %43
  %58 = load i32, i32* %13, align 4
  %59 = icmp sge i32 %58, 32
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = icmp sle i32 %61, 36
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %54
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %63, %60, %57
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %32

70:                                               ; preds = %41
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %10, align 4
  %77 = icmp sle i32 %76, 0
  br i1 %77, label %78, label %129

78:                                               ; preds = %75, %70
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  store i32 -1, i32* %82, align 8
  %83 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %84 = call i8* @strdup(i32 %83)
  %85 = bitcast i8* %84 to i32*
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 2
  store i32* %85, i32** %87, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %128, label %92

92:                                               ; preds = %78
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %94 = icmp ne %struct.TYPE_30__* %93, null
  br i1 %94, label %95, label %128

95:                                               ; preds = %92
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %95
  %101 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @malloc(i64 %103)
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 4
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %100
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  %117 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @memcpy(i64 %119, i32 %122, i64 %125)
  br label %127

127:                                              ; preds = %111, %100
  br label %128

128:                                              ; preds = %127, %95, %92, %78
  br label %229

129:                                              ; preds = %75
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %225, %129
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %228

136:                                              ; preds = %130
  %137 = load i32, i32* %14, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %141, align 8
  store %struct.TYPE_26__* %142, %struct.TYPE_26__** %15, align 8
  br label %177

143:                                              ; preds = %136
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call %struct.TYPE_26__* @ts_es_New(i32 %148)
  store %struct.TYPE_26__* %149, %struct.TYPE_26__** %15, align 8
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %151 = icmp ne %struct.TYPE_26__* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %143
  br label %228

153:                                              ; preds = %143
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %157 = call i32 @es_format_Copy(%struct.TYPE_27__* %155, %struct.TYPE_27__* %156)
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @free(i32* %161)
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @free(i32* %166)
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %169, i32 0, i32 3
  store i32* null, i32** %170, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 2
  store i32* null, i32** %173, align 8
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %176 = call i32 @ts_stream_Add_es(%struct.TYPE_25__* %174, %struct.TYPE_26__* %175, i32 1)
  br label %177

177:                                              ; preds = %153, %139
  %178 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %180, i64 %182
  store %struct.TYPE_29__* %183, %struct.TYPE_29__** %16, align 8
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i8*
  %188 = call i32* @strndup(i8* %187, i32 3)
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 3
  store i32* %188, i32** %191, align 8
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %193 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  switch i32 %194, label %209 [
    i32 16, label %195
    i32 17, label %195
    i32 18, label %195
    i32 19, label %195
    i32 20, label %195
    i32 32, label %202
    i32 33, label %202
    i32 34, label %202
    i32 35, label %202
    i32 36, label %202
  ]

195:                                              ; preds = %177, %177, %177, %177, %177
  %196 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %197 = call i8* @strdup(i32 %196)
  %198 = bitcast i8* %197 to i32*
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 2
  store i32* %198, i32** %201, align 8
  br label %210

202:                                              ; preds = %177, %177, %177, %177, %177
  %203 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %204 = call i8* @strdup(i32 %203)
  %205 = bitcast i8* %204 to i32*
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 2
  store i32* %205, i32** %208, align 8
  br label %210

209:                                              ; preds = %177
  br label %210

210:                                              ; preds = %209, %202, %195
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = shl i32 %213, 0
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = shl i32 %217, 16
  %219 = or i32 %214, %218
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  store i32 %219, i32* %224, align 8
  br label %225

225:                                              ; preds = %210
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %14, align 4
  br label %130

228:                                              ; preds = %152, %130
  br label %229

229:                                              ; preds = %228, %128
  ret void
}

declare dso_local i32 @es_format_Change(%struct.TYPE_27__*, i32, i32) #1

declare dso_local %struct.TYPE_30__* @PMTEsFindDescriptor(i32*, i32) #1

declare dso_local %struct.TYPE_28__* @dvbpsi_DecodeSubtitlingDr(%struct.TYPE_30__*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local %struct.TYPE_26__* @ts_es_New(i32) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ts_stream_Add_es(%struct.TYPE_25__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32* @strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
