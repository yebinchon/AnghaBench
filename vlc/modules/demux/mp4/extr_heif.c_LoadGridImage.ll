; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_LoadGridImage.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_heif.c_LoadGridImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.heif_private_t = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i32, i32* }
%struct.TYPE_17__ = type { i32, i32 }

@ATOM_infe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"meta/iinf/infe\00", align 1
@MatchInfeID = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@UNKNOWN_ES = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_CODEC_RGBA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, i32*, i32, i32*, i32, i32, i32, i32)* @LoadGridImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadGridImage(%struct.TYPE_21__* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.heif_private_t*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_20__, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_19__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = bitcast i8* %37 to %struct.heif_private_t*
  store %struct.heif_private_t* %38, %struct.heif_private_t** %18, align 8
  %39 = load %struct.heif_private_t*, %struct.heif_private_t** %18, align 8
  %40 = getelementptr inbounds %struct.heif_private_t, %struct.heif_private_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATOM_infe, align 4
  %43 = load i32, i32* @MatchInfeID, align 4
  %44 = call i32* @GetAtom(i32 %41, i32* null, i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %43, i32* %12)
  store i32* %44, i32** %19, align 8
  %45 = load i32*, i32** %19, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %8
  %48 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %48, i32* %9, align 4
  br label %195

49:                                               ; preds = %8
  %50 = load i32, i32* @UNKNOWN_ES, align 4
  %51 = call i32 @es_format_Init(%struct.TYPE_20__* %20, i32 %50, i32 0)
  store i32* null, i32** %21, align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %53 = load i32*, i32** %19, align 8
  %54 = call i64 @SetupPicture(%struct.TYPE_21__* %52, i32* %53, %struct.TYPE_20__* %20, i32** %21)
  %55 = load i64, i64* @VLC_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = call i32 @es_format_Clean(%struct.TYPE_20__* %20)
  %59 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %59, i32* %9, align 4
  br label %195

60:                                               ; preds = %49
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %21, align 8
  %64 = call i32* @ReadItemExtents(%struct.TYPE_21__* %61, i32 %62, i32* %63)
  store i32* %64, i32** %22, align 8
  %65 = load i32*, i32** %22, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = call i32 @es_format_Clean(%struct.TYPE_20__* %20)
  %69 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %69, i32* %9, align 4
  br label %195

70:                                               ; preds = %60
  %71 = load i32, i32* @VLC_CODEC_RGBA, align 4
  %72 = call i32 @video_format_Init(i32* %23, i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = load i32*, i32** %22, align 8
  %79 = call %struct.TYPE_19__* @image_Read(i32* %77, i32* %78, %struct.TYPE_20__* %20, i32* %23)
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %24, align 8
  %80 = call i32 @es_format_Clean(%struct.TYPE_20__* %20)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %82 = icmp ne %struct.TYPE_19__* %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %70
  %84 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %84, i32* %9, align 4
  br label %195

85:                                               ; preds = %70
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %25, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %26, align 4
  %94 = load i32*, i32** %13, align 8
  store i32* %94, i32** %27, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = udiv i32 %95, %96
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* %26, align 4
  %100 = mul i32 %98, %99
  %101 = mul i32 %100, 4
  %102 = mul i32 %97, %101
  %103 = load i32*, i32** %27, align 8
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %27, align 8
  br label %106

106:                                              ; preds = %85
  br i1 true, label %107, label %190

107:                                              ; preds = %106
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = urem i32 %108, %109
  %111 = load i32, i32* %25, align 4
  %112 = mul i32 %110, %111
  store i32 %112, i32* %28, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %15, align 4
  %115 = udiv i32 %113, %114
  %116 = load i32, i32* %26, align 4
  %117 = mul i32 %115, %116
  store i32 %117, i32* %29, align 4
  %118 = load i32, i32* %28, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp ugt i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %107
  br label %190

122:                                              ; preds = %107
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  store i32* %128, i32** %30, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %31, align 4
  %135 = load i32, i32* %29, align 4
  %136 = load i32, i32* %31, align 4
  %137 = add i32 %135, %136
  %138 = load i32, i32* %17, align 4
  %139 = icmp uge i32 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %122
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %29, align 4
  %143 = sub i32 %141, %142
  store i32 %143, i32* %31, align 4
  br label %144

144:                                              ; preds = %140, %122
  store i32 0, i32* %32, align 4
  br label %145

145:                                              ; preds = %186, %144
  %146 = load i32, i32* %32, align 4
  %147 = load i32, i32* %31, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %189

149:                                              ; preds = %145
  %150 = load i32, i32* %25, align 4
  %151 = zext i32 %150 to i64
  store i64 %151, i64* %33, align 8
  %152 = load i32, i32* %28, align 4
  %153 = load i32, i32* %25, align 4
  %154 = add i32 %152, %153
  %155 = load i32, i32* %16, align 4
  %156 = icmp ugt i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %149
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %28, align 4
  %160 = sub i32 %158, %159
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %33, align 8
  br label %162

162:                                              ; preds = %157, %149
  %163 = load i32*, i32** %27, align 8
  %164 = load i32, i32* %28, align 4
  %165 = mul i32 %164, 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  %168 = load i32*, i32** %30, align 8
  %169 = load i64, i64* %33, align 8
  %170 = mul i64 %169, 4
  %171 = call i32 @memcpy(i32* %167, i32* %168, i64 %170)
  %172 = load i32, i32* %16, align 4
  %173 = mul i32 %172, 4
  %174 = load i32*, i32** %27, align 8
  %175 = zext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32* %176, i32** %27, align 8
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i64 0
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32*, i32** %30, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32* %185, i32** %30, align 8
  br label %186

186:                                              ; preds = %162
  %187 = load i32, i32* %32, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %32, align 4
  br label %145

189:                                              ; preds = %145
  br label %190

190:                                              ; preds = %189, %121, %106
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %192 = call i32 @picture_Release(%struct.TYPE_19__* %191)
  %193 = load i64, i64* @VLC_SUCCESS, align 8
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %9, align 4
  br label %195

195:                                              ; preds = %190, %83, %67, %57, %47
  %196 = load i32, i32* %9, align 4
  ret i32 %196
}

declare dso_local i32* @GetAtom(i32, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @SetupPicture(%struct.TYPE_21__*, i32*, %struct.TYPE_20__*, i32**) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_20__*) #1

declare dso_local i32* @ReadItemExtents(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @video_format_Init(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @image_Read(i32*, i32*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @picture_Release(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
