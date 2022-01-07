; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_DerivedImageAssembleGrid.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_DerivedImageAssembleGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.heif_private_t = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_33__* (i32)* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i64, %struct.TYPE_32__*, %struct.TYPE_32__* }
%union.heif_derivation_data = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"meta/iref\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@p_infe = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"%ux%upx image %ux%u tiles composition\00", align 1
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_RGBA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Loading tile %d/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, i64, %struct.TYPE_29__*, %struct.TYPE_31__**)* @DerivedImageAssembleGrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DerivedImageAssembleGrid(%struct.TYPE_30__* %0, i64 %1, %struct.TYPE_29__* %2, %struct.TYPE_31__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_31__**, align 8
  %10 = alloca %struct.heif_private_t*, align 8
  %11 = alloca %struct.TYPE_32__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %union.heif_derivation_data, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_31__*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_29__* %2, %struct.TYPE_29__** %8, align 8
  store %struct.TYPE_31__** %3, %struct.TYPE_31__*** %9, align 8
  %17 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.heif_private_t*
  store %struct.heif_private_t* %21, %struct.heif_private_t** %10, align 8
  %22 = load %struct.heif_private_t*, %struct.heif_private_t** %10, align 8
  %23 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_32__* @MP4_BoxGet(i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_32__* %25, %struct.TYPE_32__** %11, align 8
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %27 = icmp ne %struct.TYPE_32__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %29, i32* %5, align 4
  br label %203

30:                                               ; preds = %4
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_32__*, %struct.TYPE_32__** %32, align 8
  store %struct.TYPE_32__* %33, %struct.TYPE_32__** %12, align 8
  br label %34

34:                                               ; preds = %52, %30
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %36 = icmp ne %struct.TYPE_32__* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @VLC_FOURCC(i8 signext 100, i8 signext 105, i8 signext 109, i8 signext 103)
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %45 = call %struct.TYPE_25__* @BOXDATA(%struct.TYPE_32__* %44)
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %56

51:                                               ; preds = %43, %37
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %54, align 8
  store %struct.TYPE_32__* %55, %struct.TYPE_32__** %12, align 8
  br label %34

56:                                               ; preds = %50, %34
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %58 = icmp ne %struct.TYPE_32__* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %60, i32* %5, align 4
  br label %203

61:                                               ; preds = %56
  %62 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %63 = load %struct.heif_private_t*, %struct.heif_private_t** %10, align 8
  %64 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_33__* (i32)*, %struct.TYPE_33__* (i32)** %65, align 8
  %67 = load i32, i32* @p_infe, align 4
  %68 = call %struct.TYPE_33__* %66(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @ReadDerivationData(%struct.TYPE_30__* %62, i32 %70, i64 %71, %union.heif_derivation_data* %13)
  %73 = load i64, i64* @VLC_SUCCESS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %61
  %76 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %76, i32* %5, align 4
  br label %203

77:                                               ; preds = %61
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %79 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  %90 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 (%struct.TYPE_30__*, i8*, i64, i32, ...) @msg_Dbg(%struct.TYPE_30__* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %82, i32 %85, i32 %89, i32 %93)
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %96 = call i32* @image_HandlerCreate(%struct.TYPE_30__* %95)
  store i32* %96, i32** %14, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %77
  %100 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %100, i32* %5, align 4
  br label %203

101:                                              ; preds = %77
  %102 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %106 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %104, %107
  %109 = mul nsw i32 %108, 4
  %110 = call %struct.TYPE_31__* @block_Alloc(i32 %109)
  store %struct.TYPE_31__* %110, %struct.TYPE_31__** %15, align 8
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %112 = icmp ne %struct.TYPE_31__* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %101
  %114 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %114, i32* %5, align 4
  br label %203

115:                                              ; preds = %101
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %117 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  store %struct.TYPE_31__* %116, %struct.TYPE_31__** %117, align 8
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %119 = load i32, i32* @VIDEO_ES, align 4
  %120 = load i32, i32* @VLC_CODEC_RGBA, align 4
  %121 = call i32 @es_format_Init(%struct.TYPE_29__* %118, i32 %119, i32 %120)
  %122 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 4
  %128 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %129, i32 0, i32 1
  store i32 %124, i32* %130, align 4
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 0
  store i32 %124, i32* %133, align 4
  %134 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 5
  store i32 %136, i32* %139, align 4
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 4
  store i32 %136, i32* %142, align 4
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %144, i32 0, i32 3
  store i32 %136, i32* %145, align 4
  store i64 0, i64* %16, align 8
  br label %146

146:                                              ; preds = %191, %115
  %147 = load i64, i64* %16, align 8
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %149 = call %struct.TYPE_25__* @BOXDATA(%struct.TYPE_32__* %148)
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ult i64 %147, %151
  br i1 %152, label %153, label %194

153:                                              ; preds = %146
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %155 = load i64, i64* %16, align 8
  %156 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  %160 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  %164 = mul nsw i32 %159, %163
  %165 = call i32 (%struct.TYPE_30__*, i8*, i64, i32, ...) @msg_Dbg(%struct.TYPE_30__* %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i64 %155, i32 %164)
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %167 = load i32*, i32** %14, align 8
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %169 = call %struct.TYPE_25__* @BOXDATA(%struct.TYPE_32__* %168)
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %170, align 8
  %172 = load i64, i64* %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %15, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i64, i64* %16, align 8
  %180 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %181 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  %184 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %185 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = bitcast %union.heif_derivation_data* %13 to %struct.TYPE_28__*
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @LoadGridImage(%struct.TYPE_30__* %166, i32* %167, i32 %175, i32 %178, i64 %179, i32 %183, i32 %186, i32 %189)
  br label %191

191:                                              ; preds = %153
  %192 = load i64, i64* %16, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %16, align 8
  br label %146

194:                                              ; preds = %146
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %196 = load i64, i64* %7, align 8
  %197 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %198 = call i32 @SetPictureProperties(%struct.TYPE_30__* %195, i64 %196, %struct.TYPE_29__* %197, i32* null)
  %199 = load i32*, i32** %14, align 8
  %200 = call i32 @image_HandlerDelete(i32* %199)
  %201 = load i64, i64* @VLC_SUCCESS, align 8
  %202 = trunc i64 %201 to i32
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %194, %113, %99, %75, %59, %28
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local %struct.TYPE_32__* @MP4_BoxGet(i32, i8*) #1

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_25__* @BOXDATA(%struct.TYPE_32__*) #1

declare dso_local i64 @ReadDerivationData(%struct.TYPE_30__*, i32, i64, %union.heif_derivation_data*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_30__*, i8*, i64, i32, ...) #1

declare dso_local i32* @image_HandlerCreate(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_31__* @block_Alloc(i32) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @LoadGridImage(%struct.TYPE_30__*, i32*, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @SetPictureProperties(%struct.TYPE_30__*, i64, %struct.TYPE_29__*, i32*) #1

declare dso_local i32 @image_HandlerDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
