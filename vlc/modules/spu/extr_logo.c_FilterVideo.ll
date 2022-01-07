; ModuleID = '/home/carl/AnghaBench/vlc/modules/spu/extr_logo.c_FilterVideo.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/spu/extr_logo.c_FilterVideo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_27__, %struct.TYPE_33__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, i32 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_29__* }

@SUBPICTURE_ALIGN_BOTTOM = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_RIGHT = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"logo(%ix%i) doesn't fit into video(%ix%i)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to blend a picture\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_32__*, %struct.TYPE_29__*)* @FilterVideo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @FilterVideo(%struct.TYPE_32__* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca %struct.TYPE_32__*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  store %struct.TYPE_33__* %16, %struct.TYPE_33__** %5, align 8
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 5
  store %struct.TYPE_31__* %18, %struct.TYPE_31__** %6, align 8
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %20 = call %struct.TYPE_29__* @filter_NewPicture(%struct.TYPE_32__* %19)
  store %struct.TYPE_29__* %20, %struct.TYPE_29__** %7, align 8
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %22 = icmp ne %struct.TYPE_29__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %234

24:                                               ; preds = %2
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %27 = call i32 @picture_Copy(%struct.TYPE_29__* %25, %struct.TYPE_29__* %26)
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 3
  %30 = call i32 @vlc_mutex_lock(i32* %29)
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %24
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.TYPE_30__* @LogoListNext(%struct.TYPE_31__* %39, i64 %42)
  store %struct.TYPE_30__* %43, %struct.TYPE_30__** %8, align 8
  br label %47

44:                                               ; preds = %24
  %45 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %46 = call %struct.TYPE_30__* @LogoListCurrent(%struct.TYPE_31__* %45)
  store %struct.TYPE_30__* %46, %struct.TYPE_30__** %8, align 8
  br label %47

47:                                               ; preds = %44, %38
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %49, align 8
  store %struct.TYPE_29__* %50, %struct.TYPE_29__** %9, align 8
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %52 = icmp ne %struct.TYPE_29__* %51, null
  br i1 %52, label %53, label %230

53:                                               ; preds = %47
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 1
  store %struct.TYPE_28__* %55, %struct.TYPE_28__** %10, align 8
  %56 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %11, align 4
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %12, align 4
  %66 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %141

70:                                               ; preds = %53
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @SUBPICTURE_ALIGN_BOTTOM, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %78, %81
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  br label %105

85:                                               ; preds = %70
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %12, align 4
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  %98 = sdiv i32 %97, 2
  %99 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %104

101:                                              ; preds = %85
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %92
  br label %105

105:                                              ; preds = %104, %77
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @SUBPICTURE_ALIGN_RIGHT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %113, %116
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  br label %140

120:                                              ; preds = %105
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %120
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %128, %131
  %133 = sdiv i32 %132, 2
  %134 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  br label %139

136:                                              ; preds = %120
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 2
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %127
  br label %140

140:                                              ; preds = %139, %112
  br label %141

141:                                              ; preds = %140, %53
  %142 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %141
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %188

151:                                              ; preds = %146, %141
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @msg_Warn(%struct.TYPE_32__* %152, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %155, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %151
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  br label %171

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170, %166
  %172 = phi i32 [ %169, %166 ], [ 0, %170 ]
  %173 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  br label %184

183:                                              ; preds = %171
  br label %184

184:                                              ; preds = %183, %179
  %185 = phi i32 [ %182, %179 ], [ 0, %183 ]
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %184, %146
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, -1
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  br label %201

197:                                              ; preds = %188
  %198 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi i32 [ %196, %193 ], [ %200, %197 ]
  store i32 %202, i32* %13, align 4
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %209 = call i64 @filter_ConfigureBlend(i32 %205, i32 %206, i32 %207, %struct.TYPE_28__* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %226, label %211

211:                                              ; preds = %201
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %223 = load i32, i32* %13, align 4
  %224 = call i64 @filter_Blend(i32 %214, %struct.TYPE_29__* %215, i32 %218, i32 %221, %struct.TYPE_29__* %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %211, %201
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %3, align 8
  %228 = call i32 @msg_Err(%struct.TYPE_32__* %227, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %229

229:                                              ; preds = %226, %211
  br label %230

230:                                              ; preds = %229, %47
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %231, i32 0, i32 3
  %233 = call i32 @vlc_mutex_unlock(i32* %232)
  br label %234

234:                                              ; preds = %230, %23
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %236 = call i32 @picture_Release(%struct.TYPE_29__* %235)
  %237 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  ret %struct.TYPE_29__* %237
}

declare dso_local %struct.TYPE_29__* @filter_NewPicture(%struct.TYPE_32__*) #1

declare dso_local i32 @picture_Copy(%struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_30__* @LogoListNext(%struct.TYPE_31__*, i64) #1

declare dso_local %struct.TYPE_30__* @LogoListCurrent(%struct.TYPE_31__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_32__*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @filter_ConfigureBlend(i32, i32, i32, %struct.TYPE_28__*) #1

declare dso_local i64 @filter_Blend(i32, %struct.TYPE_29__*, i32, i32, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @picture_Release(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
