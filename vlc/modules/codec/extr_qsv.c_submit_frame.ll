; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_qsv.c_submit_frame.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_qsv.c_submit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i64, i64, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_27__, %struct.TYPE_21__*, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_26__ = type { i32, i64, i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32, i32 }

@VLC_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to find an unlocked surface in the pool\00", align 1
@MFX_PICSTRUCT_PROGRESSIVE = common dso_local global i32 0, align 4
@MFX_PICSTRUCT_FIELD_TFF = common dso_local global i32 0, align 4
@MFX_PICSTRUCT_FIELD_BFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_28__*, %struct.TYPE_20__**)* @submit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_frame(%struct.TYPE_29__* %0, %struct.TYPE_28__* %1, %struct.TYPE_20__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_20__**, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_20__** %2, %struct.TYPE_20__*** %7, align 8
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  store %struct.TYPE_30__* %13, %struct.TYPE_30__** %8, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  %14 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %15 = call i32 @get_free_frame(%struct.TYPE_30__* %14, %struct.TYPE_20__** %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @VLC_SUCCESS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %21 = call i32 @msg_Warn(%struct.TYPE_29__* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %177

23:                                               ; preds = %3
  %24 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_21__* @picture_pool_Get(i32 %26)
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %28, i32 0, i32 1
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %29, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = icmp ne %struct.TYPE_21__* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %23
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %40 = call i32 @msg_Warn(%struct.TYPE_29__* %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %177

44:                                               ; preds = %23
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %46, align 8
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %49 = call i32 @picture_Copy(%struct.TYPE_21__* %47, %struct.TYPE_28__* %48)
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %65, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %57, %75
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %76, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = bitcast %struct.TYPE_24__* %90 to i8*
  %96 = bitcast %struct.TYPE_24__* %94 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 4, i1 false)
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %44
  %102 = load i32, i32* @MFX_PICSTRUCT_PROGRESSIVE, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 8
  br label %125

107:                                              ; preds = %44
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* @MFX_PICSTRUCT_FIELD_TFF, align 4
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 8
  br label %124

118:                                              ; preds = %107
  %119 = load i32, i32* @MFX_PICSTRUCT_FIELD_BFF, align 4
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 8
  br label %124

124:                                              ; preds = %118, %112
  br label %125

125:                                              ; preds = %124, %101
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 8
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 1
  store i64 %145, i64* %149, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %160, i32 0, i32 2
  store i64 %157, i64* %161, align 8
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = sub nsw i64 %164, %167
  %169 = call i32 @TO_SCALE_NZ(i64 %168)
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 3
  store i32 %169, i32* %173, align 8
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %175 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %7, align 8
  store %struct.TYPE_20__* %174, %struct.TYPE_20__** %175, align 8
  %176 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %125, %38, %19
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local i32 @get_free_frame(%struct.TYPE_30__*, %struct.TYPE_20__**) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_29__*, i8*) #1

declare dso_local %struct.TYPE_21__* @picture_pool_Get(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @picture_Copy(%struct.TYPE_21__*, %struct.TYPE_28__*) #1

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TO_SCALE_NZ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
