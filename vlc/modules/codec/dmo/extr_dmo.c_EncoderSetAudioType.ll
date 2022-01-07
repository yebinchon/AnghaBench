; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/dmo/extr_dmo.c_EncoderSetAudioType.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/dmo/extr_dmo.c_EncoderSetAudioType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_29__, %struct.TYPE_31__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { i32, i64, i64 }
%struct.TYPE_31__ = type { i32, i32, i32*, %struct.TYPE_30__, i32 }
%struct.TYPE_30__ = type { i64, i64, i64, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32 (%struct.TYPE_35__*, i32, %struct.TYPE_36__*, i32)*, i32 (%struct.TYPE_35__*, i32, %struct.TYPE_36__*, i32)*, i32 (%struct.TYPE_35__*, i32, i32, %struct.TYPE_36__*)*, i32 (%struct.TYPE_35__*, i32, i32, %struct.TYPE_36__*)* }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_34__ = type { i64, i64, i64, i64, i32, i32, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_CODEC_S16N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"available format :%i, sample rate: %i, channels: %i, bits per sample: %i, bitrate: %i, blockalign: %i\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"selected entry %i (bitrate: %i)\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't find a matching output\00", align 1
@.str.3 = private unnamed_addr constant [100 x i8] c"selected format: %i, sample rate:%i, channels: %i, bits per sample: %i, bitrate: %i, blockalign: %i\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"found cbSize: %i\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"can't set DMO output type: %i\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"successfully set output type\00", align 1
@WAVE_FORMAT_PCM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"couldn't find a matching input\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"can't set DMO input type: 0x%x\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"successfully set input type\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_35__*)* @EncoderSetAudioType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EncoderSetAudioType(%struct.TYPE_33__* %0, %struct.TYPE_35__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_36__, align 8
  %12 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %5, align 8
  %13 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @fourcc_to_wf_tag(i32 %16, i64* %10)
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %3, align 4
  br label %402

22:                                               ; preds = %2
  %23 = load i32, i32* @VLC_CODEC_S16N, align 4
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %29, i32 0, i32 0
  store i32 16, i32* %30, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %140, %22
  %32 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_32__*, %struct.TYPE_32__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %34, i32 0, i32 3
  %36 = load i32 (%struct.TYPE_35__*, i32, i32, %struct.TYPE_36__*)*, i32 (%struct.TYPE_35__*, i32, i32, %struct.TYPE_36__*)** %35, align 8
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = call i32 %36(%struct.TYPE_35__* %37, i32 0, i32 %38, %struct.TYPE_36__* %11)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %142

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %46, %struct.TYPE_34__** %12, align 8
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %48 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, 8
  %68 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 (%struct.TYPE_33__*, i8*, ...) @msg_Dbg(%struct.TYPE_33__* %47, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %55, i32 %59, i32 %63, i32 %67, i32 %71)
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %140

78:                                               ; preds = %43
  %79 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %81, %86
  br i1 %87, label %88, label %140

88:                                               ; preds = %78
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %91, %96
  br i1 %97, label %98, label %140

98:                                               ; preds = %88
  %99 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = icmp eq i64 %101, %107
  br i1 %108, label %109, label %140

109:                                              ; preds = %98
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 %116, 110
  %118 = sdiv i32 %117, 800
  %119 = icmp slt i32 %112, %118
  br i1 %119, label %120, label %139

120:                                              ; preds = %109
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = icmp ugt i32 %123, %124
  br i1 %125, label %126, label %139

126:                                              ; preds = %120
  %127 = load i32, i32* %6, align 4
  %128 = sub nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %9, align 4
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %136, 8
  %138 = call i32 (%struct.TYPE_33__*, i8*, ...) @msg_Dbg(%struct.TYPE_33__* %132, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %137)
  br label %139

139:                                              ; preds = %126, %120, %109
  br label %140

140:                                              ; preds = %139, %98, %88, %78, %43
  %141 = call i32 @DMOFreeMediaType(%struct.TYPE_36__* %11)
  br label %31

142:                                              ; preds = %31
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %147 = call i32 (%struct.TYPE_33__*, i8*, ...) @msg_Err(%struct.TYPE_33__* %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %148 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %148, i32* %3, align 4
  br label %402

149:                                              ; preds = %142
  %150 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 3
  %154 = load i32 (%struct.TYPE_35__*, i32, i32, %struct.TYPE_36__*)*, i32 (%struct.TYPE_35__*, i32, i32, %struct.TYPE_36__*)** %153, align 8
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 %154(%struct.TYPE_35__* %155, i32 0, i32 %156, %struct.TYPE_36__* %11)
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %160, %struct.TYPE_34__** %12, align 8
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %162 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = trunc i64 %176 to i32
  %178 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = mul nsw i32 %180, 8
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i32 0, i32 6
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = call i32 (%struct.TYPE_33__*, i8*, ...) @msg_Dbg(%struct.TYPE_33__* %161, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0), i32 %165, i32 %169, i32 %173, i32 %177, i32 %181, i32 %185)
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %192, i32 0, i32 0
  store i64 %189, i64* %193, align 8
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 1
  store i64 %196, i64* %200, align 8
  %201 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %201, i32 0, i32 3
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %206, i32 0, i32 2
  store i64 %203, i64* %207, align 8
  %208 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %213, i32 0, i32 3
  store i64 %210, i64* %214, align 8
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = mul nsw i32 %217, 8
  %219 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %220, i32 0, i32 0
  store i32 %218, i32* %221, align 8
  %222 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %223 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %265

226:                                              ; preds = %149
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %228 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (%struct.TYPE_33__*, i8*, ...) @msg_Dbg(%struct.TYPE_33__* %227, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %230)
  %232 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %236, i32 0, i32 1
  store i32 %234, i32* %237, align 4
  %238 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = call i32* @malloc(i32 %241)
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %244, i32 0, i32 2
  store i32* %242, i32** %245, align 8
  %246 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = icmp eq i32* %249, null
  br i1 %250, label %251, label %253

251:                                              ; preds = %226
  %252 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %252, i32* %3, align 4
  br label %402

253:                                              ; preds = %226
  %254 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %258, i64 1
  %260 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @memcpy(i32* %257, %struct.TYPE_34__* %259, i32 %263)
  br label %265

265:                                              ; preds = %253, %149
  %266 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_32__*, %struct.TYPE_32__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %268, i32 0, i32 0
  %270 = load i32 (%struct.TYPE_35__*, i32, %struct.TYPE_36__*, i32)*, i32 (%struct.TYPE_35__*, i32, %struct.TYPE_36__*, i32)** %269, align 8
  %271 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %272 = call i32 %270(%struct.TYPE_35__* %271, i32 0, %struct.TYPE_36__* %11, i32 0)
  store i32 %272, i32* %8, align 4
  %273 = call i32 @DMOFreeMediaType(%struct.TYPE_36__* %11)
  %274 = load i32, i32* %8, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %281

276:                                              ; preds = %265
  %277 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %278 = load i32, i32* %8, align 4
  %279 = call i32 (%struct.TYPE_33__*, i8*, ...) @msg_Err(%struct.TYPE_33__* %277, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %278)
  %280 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %280, i32* %3, align 4
  br label %402

281:                                              ; preds = %265
  %282 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %283 = call i32 (%struct.TYPE_33__*, i8*, ...) @msg_Dbg(%struct.TYPE_33__* %282, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  br label %284

284:                                              ; preds = %365, %281
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %285, i32 0, i32 0
  %287 = load %struct.TYPE_32__*, %struct.TYPE_32__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %287, i32 0, i32 2
  %289 = load i32 (%struct.TYPE_35__*, i32, i32, %struct.TYPE_36__*)*, i32 (%struct.TYPE_35__*, i32, i32, %struct.TYPE_36__*)** %288, align 8
  %290 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %291 = load i32, i32* %6, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %6, align 4
  %293 = call i32 %289(%struct.TYPE_35__* %290, i32 0, i32 %291, %struct.TYPE_36__* %11)
  %294 = icmp ne i32 %293, 0
  %295 = xor i1 %294, true
  br i1 %295, label %296, label %367

296:                                              ; preds = %284
  %297 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = inttoptr i64 %298 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %299, %struct.TYPE_34__** %12, align 8
  %300 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %301 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %302 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = trunc i64 %303 to i32
  %305 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = trunc i64 %311 to i32
  %313 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %314 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = trunc i64 %315 to i32
  %317 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %318 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 8
  %320 = mul nsw i32 %319, 8
  %321 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %321, i32 0, i32 6
  %323 = load i64, i64* %322, align 8
  %324 = trunc i64 %323 to i32
  %325 = call i32 (%struct.TYPE_33__*, i8*, ...) @msg_Dbg(%struct.TYPE_33__* %300, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i32 %304, i32 %308, i32 %312, i32 %316, i32 %320, i32 %324)
  %326 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %327 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @WAVE_FORMAT_PCM, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %365

331:                                              ; preds = %296
  %332 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %333 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i32 0, i32 1
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = icmp eq i64 %334, %339
  br i1 %340, label %341, label %365

341:                                              ; preds = %331
  %342 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = icmp eq i64 %344, %349
  br i1 %350, label %351, label %365

351:                                              ; preds = %341
  %352 = load %struct.TYPE_34__*, %struct.TYPE_34__** %12, align 8
  %353 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = sext i32 %359 to i64
  %361 = icmp eq i64 %354, %360
  br i1 %361, label %362, label %365

362:                                              ; preds = %351
  %363 = load i32, i32* %6, align 4
  %364 = sub nsw i32 %363, 1
  store i32 %364, i32* %7, align 4
  br label %365

365:                                              ; preds = %362, %351, %341, %331, %296
  %366 = call i32 @DMOFreeMediaType(%struct.TYPE_36__* %11)
  br label %284

367:                                              ; preds = %284
  %368 = load i32, i32* %7, align 4
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %370, label %374

370:                                              ; preds = %367
  %371 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %372 = call i32 (%struct.TYPE_33__*, i8*, ...) @msg_Err(%struct.TYPE_33__* %371, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %373 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %373, i32* %3, align 4
  br label %402

374:                                              ; preds = %367
  %375 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %376 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %375, i32 0, i32 0
  %377 = load %struct.TYPE_32__*, %struct.TYPE_32__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %377, i32 0, i32 2
  %379 = load i32 (%struct.TYPE_35__*, i32, i32, %struct.TYPE_36__*)*, i32 (%struct.TYPE_35__*, i32, i32, %struct.TYPE_36__*)** %378, align 8
  %380 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %381 = load i32, i32* %7, align 4
  %382 = call i32 %379(%struct.TYPE_35__* %380, i32 0, i32 %381, %struct.TYPE_36__* %11)
  %383 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %384 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_32__*, %struct.TYPE_32__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %385, i32 0, i32 1
  %387 = load i32 (%struct.TYPE_35__*, i32, %struct.TYPE_36__*, i32)*, i32 (%struct.TYPE_35__*, i32, %struct.TYPE_36__*, i32)** %386, align 8
  %388 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %389 = call i32 %387(%struct.TYPE_35__* %388, i32 0, %struct.TYPE_36__* %11, i32 0)
  store i32 %389, i32* %8, align 4
  %390 = call i32 @DMOFreeMediaType(%struct.TYPE_36__* %11)
  %391 = load i32, i32* %8, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %398

393:                                              ; preds = %374
  %394 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %395 = load i32, i32* %8, align 4
  %396 = call i32 (%struct.TYPE_33__*, i8*, ...) @msg_Err(%struct.TYPE_33__* %394, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %395)
  %397 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %397, i32* %3, align 4
  br label %402

398:                                              ; preds = %374
  %399 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %400 = call i32 (%struct.TYPE_33__*, i8*, ...) @msg_Dbg(%struct.TYPE_33__* %399, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %401 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %401, i32* %3, align 4
  br label %402

402:                                              ; preds = %398, %393, %370, %276, %251, %145, %20
  %403 = load i32, i32* %3, align 4
  ret i32 %403
}

declare dso_local i32 @fourcc_to_wf_tag(i32, i64*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_33__*, i8*, ...) #1

declare dso_local i32 @DMOFreeMediaType(%struct.TYPE_36__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_33__*, i8*, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_34__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
