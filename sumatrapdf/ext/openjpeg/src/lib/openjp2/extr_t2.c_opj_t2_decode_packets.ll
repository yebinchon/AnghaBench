; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_decode_packets.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/lib/openjp2/extr_t2.c_opj_t2_decode_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_51__ = type { i64, %struct.TYPE_56__* }
%struct.TYPE_56__ = type { i32, %struct.TYPE_53__*, %struct.TYPE_45__* }
%struct.TYPE_53__ = type { i64, i32, i64 }
%struct.TYPE_45__ = type { i32, i64, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_48__*, %struct.TYPE_46__* }
%struct.TYPE_48__ = type { %struct.TYPE_52__, %struct.TYPE_57__* }
%struct.TYPE_52__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i64 }
%struct.TYPE_57__ = type { i64, i64 }
%struct.TYPE_46__ = type { i32, %struct.TYPE_47__* }
%struct.TYPE_47__ = type { i64 }
%struct.TYPE_59__ = type { %struct.TYPE_58__* }
%struct.TYPE_58__ = type { i64, %struct.TYPE_40__* }
%struct.TYPE_40__ = type { i64, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64, i64, i64, i64 }
%struct.TYPE_49__ = type { %struct.TYPE_54__* }
%struct.TYPE_54__ = type { %struct.TYPE_45__* }
%struct.TYPE_44__ = type { i64, i64, i64, i64, %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i64, i32 }

@OPJ_FALSE = common dso_local global i64 0, align 8
@OPJ_PROG_UNKNOWN = common dso_local global i64 0, align 8
@OPJ_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"packet offset=00000166 prg=%d cmptno=%02d rlvlno=%02d prcno=%03d lyrno=%02d\0A\0A\00", align 1
@p_cstr_info = common dso_local global %struct.TYPE_51__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @opj_t2_decode_packets(i32* %0, %struct.TYPE_43__* %1, i64 %2, %struct.TYPE_59__* %3, i32* %4, i64* %5, i64 %6, %struct.TYPE_49__* %7, i32* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_43__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_59__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_49__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_44__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_46__*, align 8
  %24 = alloca %struct.TYPE_48__*, align 8
  %25 = alloca %struct.TYPE_57__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_44__*, align 8
  %29 = alloca %struct.TYPE_45__*, align 8
  %30 = alloca %struct.TYPE_47__*, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_58__*, align 8
  %35 = alloca %struct.TYPE_40__*, align 8
  %36 = alloca %struct.TYPE_42__*, align 8
  %37 = alloca %struct.TYPE_41__*, align 8
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %12, align 8
  store i64 %2, i64* %13, align 8
  store %struct.TYPE_59__* %3, %struct.TYPE_59__** %14, align 8
  store i32* %4, i32** %15, align 8
  store i64* %5, i64** %16, align 8
  store i64 %6, i64* %17, align 8
  store %struct.TYPE_49__* %7, %struct.TYPE_49__** %18, align 8
  store i32* %8, i32** %19, align 8
  %38 = load i32*, i32** %15, align 8
  store i32* %38, i32** %20, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %21, align 8
  %39 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_46__*, %struct.TYPE_46__** %40, align 8
  store %struct.TYPE_46__* %41, %struct.TYPE_46__** %23, align 8
  %42 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_48__*, %struct.TYPE_48__** %43, align 8
  store %struct.TYPE_48__* %44, %struct.TYPE_48__** %24, align 8
  %45 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_48__*, %struct.TYPE_48__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_57__*, %struct.TYPE_57__** %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %49, i64 %50
  store %struct.TYPE_57__* %51, %struct.TYPE_57__** %25, align 8
  %52 = load %struct.TYPE_57__*, %struct.TYPE_57__** %25, align 8
  %53 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %27, align 8
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %28, align 8
  store %struct.TYPE_45__* null, %struct.TYPE_45__** %29, align 8
  store %struct.TYPE_47__* null, %struct.TYPE_47__** %30, align 8
  %56 = load %struct.TYPE_49__*, %struct.TYPE_49__** %18, align 8
  %57 = call i32 @OPJ_ARG_NOT_USED(%struct.TYPE_49__* %56)
  %58 = load %struct.TYPE_46__*, %struct.TYPE_46__** %23, align 8
  %59 = load %struct.TYPE_48__*, %struct.TYPE_48__** %24, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call %struct.TYPE_44__* @opj_pi_create_decode(%struct.TYPE_46__* %58, %struct.TYPE_48__* %59, i64 %60)
  store %struct.TYPE_44__* %61, %struct.TYPE_44__** %21, align 8
  %62 = load %struct.TYPE_44__*, %struct.TYPE_44__** %21, align 8
  %63 = icmp ne %struct.TYPE_44__* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %9
  %65 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %65, i64* %10, align 8
  br label %352

66:                                               ; preds = %9
  %67 = load %struct.TYPE_44__*, %struct.TYPE_44__** %21, align 8
  store %struct.TYPE_44__* %67, %struct.TYPE_44__** %28, align 8
  store i64 0, i64* %22, align 8
  br label %68

68:                                               ; preds = %337, %66
  %69 = load i64, i64* %22, align 8
  %70 = load %struct.TYPE_57__*, %struct.TYPE_57__** %25, align 8
  %71 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ule i64 %69, %72
  br i1 %73, label %74, label %340

74:                                               ; preds = %68
  store i64* null, i64** %31, align 8
  %75 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %76 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @OPJ_PROG_UNKNOWN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load %struct.TYPE_44__*, %struct.TYPE_44__** %21, align 8
  %83 = load i64, i64* %27, align 8
  %84 = call i32 @opj_pi_destroy(%struct.TYPE_44__* %82, i64 %83)
  %85 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %85, i64* %10, align 8
  br label %352

86:                                               ; preds = %74
  %87 = load %struct.TYPE_46__*, %struct.TYPE_46__** %23, align 8
  %88 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 8
  %92 = trunc i64 %91 to i32
  %93 = call i64 @opj_malloc(i32 %92)
  %94 = inttoptr i64 %93 to i64*
  store i64* %94, i64** %31, align 8
  %95 = load i64*, i64** %31, align 8
  %96 = icmp ne i64* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %86
  %98 = load %struct.TYPE_44__*, %struct.TYPE_44__** %21, align 8
  %99 = load i64, i64* %27, align 8
  %100 = call i32 @opj_pi_destroy(%struct.TYPE_44__* %98, i64 %99)
  %101 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %101, i64* %10, align 8
  br label %352

102:                                              ; preds = %86
  %103 = load i64*, i64** %31, align 8
  %104 = load i64, i64* @OPJ_TRUE, align 8
  %105 = load %struct.TYPE_46__*, %struct.TYPE_46__** %23, align 8
  %106 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memset(i64* %103, i64 %104, i32 %110)
  br label %112

112:                                              ; preds = %325, %102
  %113 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %114 = call i64 @opj_pi_next(%struct.TYPE_44__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %332

116:                                              ; preds = %112
  %117 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %117, i64* %32, align 8
  %118 = load i32, i32* @stderr, align 4
  %119 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %120 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %124 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %127 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %130 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %133 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @JAS_FPRINTF(i32 %118, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %122, i64 %125, i64 %128, i64 %131, i64 %134)
  %136 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %137 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_57__*, %struct.TYPE_57__** %25, align 8
  %140 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp sge i64 %138, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %116
  %144 = load i64, i64* @OPJ_TRUE, align 8
  store i64 %144, i64* %32, align 8
  br label %228

145:                                              ; preds = %116
  %146 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %147 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_59__*, %struct.TYPE_59__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_58__*, %struct.TYPE_58__** %150, align 8
  %152 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %153 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %151, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp sge i64 %148, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %145
  %160 = load i64, i64* @OPJ_TRUE, align 8
  store i64 %160, i64* %32, align 8
  br label %227

161:                                              ; preds = %145
  %162 = load %struct.TYPE_59__*, %struct.TYPE_59__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_58__*, %struct.TYPE_58__** %163, align 8
  %165 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %166 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %164, i64 %167
  store %struct.TYPE_58__* %168, %struct.TYPE_58__** %34, align 8
  %169 = load %struct.TYPE_58__*, %struct.TYPE_58__** %34, align 8
  %170 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_40__*, %struct.TYPE_40__** %170, align 8
  %172 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %173 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %171, i64 %174
  store %struct.TYPE_40__* %175, %struct.TYPE_40__** %35, align 8
  %176 = load i64, i64* @OPJ_TRUE, align 8
  store i64 %176, i64* %32, align 8
  store i64 0, i64* %33, align 8
  br label %177

177:                                              ; preds = %223, %161
  %178 = load i64, i64* %33, align 8
  %179 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %180 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ult i64 %178, %181
  br i1 %182, label %183, label %226

183:                                              ; preds = %177
  %184 = load %struct.TYPE_40__*, %struct.TYPE_40__** %35, align 8
  %185 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_42__*, %struct.TYPE_42__** %185, align 8
  %187 = load i64, i64* %33, align 8
  %188 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %186, i64 %187
  store %struct.TYPE_42__* %188, %struct.TYPE_42__** %36, align 8
  %189 = load %struct.TYPE_42__*, %struct.TYPE_42__** %36, align 8
  %190 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_41__*, %struct.TYPE_41__** %190, align 8
  %192 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %193 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %191, i64 %194
  store %struct.TYPE_41__* %195, %struct.TYPE_41__** %37, align 8
  %196 = load i32*, i32** %11, align 8
  %197 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %198 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %201 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_42__*, %struct.TYPE_42__** %36, align 8
  %204 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_41__*, %struct.TYPE_41__** %37, align 8
  %207 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_41__*, %struct.TYPE_41__** %37, align 8
  %210 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_41__*, %struct.TYPE_41__** %37, align 8
  %213 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_41__*, %struct.TYPE_41__** %37, align 8
  %216 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call i64 @opj_tcd_is_subband_area_of_interest(i32* %196, i64 %199, i64 %202, i32 %205, i64 %208, i64 %211, i64 %214, i64 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %183
  %221 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %221, i64* %32, align 8
  br label %226

222:                                              ; preds = %183
  br label %223

223:                                              ; preds = %222
  %224 = load i64, i64* %33, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %33, align 8
  br label %177

226:                                              ; preds = %220, %177
  br label %227

227:                                              ; preds = %226, %159
  br label %228

228:                                              ; preds = %227, %143
  %229 = load i64, i64* %32, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %272, label %231

231:                                              ; preds = %228
  store i64 0, i64* %26, align 8
  %232 = load i64, i64* @OPJ_FALSE, align 8
  %233 = load i64*, i64** %31, align 8
  %234 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %235 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds i64, i64* %233, i64 %236
  store i64 %232, i64* %237, align 8
  %238 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %239 = load %struct.TYPE_59__*, %struct.TYPE_59__** %14, align 8
  %240 = load %struct.TYPE_57__*, %struct.TYPE_57__** %25, align 8
  %241 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %242 = load i32*, i32** %20, align 8
  %243 = load i64, i64* %17, align 8
  %244 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %245 = load i32*, i32** %19, align 8
  %246 = call i32 @opj_t2_decode_packet(%struct.TYPE_43__* %238, %struct.TYPE_59__* %239, %struct.TYPE_57__* %240, %struct.TYPE_44__* %241, i32* %242, i64* %26, i64 %243, %struct.TYPE_45__* %244, i32* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %231
  %249 = load %struct.TYPE_44__*, %struct.TYPE_44__** %21, align 8
  %250 = load i64, i64* %27, align 8
  %251 = call i32 @opj_pi_destroy(%struct.TYPE_44__* %249, i64 %250)
  %252 = load i64*, i64** %31, align 8
  %253 = call i32 @opj_free(i64* %252)
  %254 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %254, i64* %10, align 8
  br label %352

255:                                              ; preds = %231
  %256 = load %struct.TYPE_46__*, %struct.TYPE_46__** %23, align 8
  %257 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_47__*, %struct.TYPE_47__** %257, align 8
  %259 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %260 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %258, i64 %261
  store %struct.TYPE_47__* %262, %struct.TYPE_47__** %30, align 8
  %263 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %264 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_47__*, %struct.TYPE_47__** %30, align 8
  %267 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i64 @opj_uint_max(i64 %265, i64 %268)
  %270 = load %struct.TYPE_47__*, %struct.TYPE_47__** %30, align 8
  %271 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %270, i32 0, i32 0
  store i64 %269, i64* %271, align 8
  br label %291

272:                                              ; preds = %228
  store i64 0, i64* %26, align 8
  %273 = load %struct.TYPE_43__*, %struct.TYPE_43__** %12, align 8
  %274 = load %struct.TYPE_59__*, %struct.TYPE_59__** %14, align 8
  %275 = load %struct.TYPE_57__*, %struct.TYPE_57__** %25, align 8
  %276 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %277 = load i32*, i32** %20, align 8
  %278 = load i64, i64* %17, align 8
  %279 = load %struct.TYPE_45__*, %struct.TYPE_45__** %29, align 8
  %280 = load i32*, i32** %19, align 8
  %281 = call i32 @opj_t2_skip_packet(%struct.TYPE_43__* %273, %struct.TYPE_59__* %274, %struct.TYPE_57__* %275, %struct.TYPE_44__* %276, i32* %277, i64* %26, i64 %278, %struct.TYPE_45__* %279, i32* %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %290, label %283

283:                                              ; preds = %272
  %284 = load %struct.TYPE_44__*, %struct.TYPE_44__** %21, align 8
  %285 = load i64, i64* %27, align 8
  %286 = call i32 @opj_pi_destroy(%struct.TYPE_44__* %284, i64 %285)
  %287 = load i64*, i64** %31, align 8
  %288 = call i32 @opj_free(i64* %287)
  %289 = load i64, i64* @OPJ_FALSE, align 8
  store i64 %289, i64* %10, align 8
  br label %352

290:                                              ; preds = %272
  br label %291

291:                                              ; preds = %290, %255
  %292 = load i64*, i64** %31, align 8
  %293 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %294 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds i64, i64* %292, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %325

299:                                              ; preds = %291
  %300 = load %struct.TYPE_46__*, %struct.TYPE_46__** %23, align 8
  %301 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_47__*, %struct.TYPE_47__** %301, align 8
  %303 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %304 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %302, i64 %305
  store %struct.TYPE_47__* %306, %struct.TYPE_47__** %30, align 8
  %307 = load %struct.TYPE_47__*, %struct.TYPE_47__** %30, align 8
  %308 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %324

311:                                              ; preds = %299
  %312 = load %struct.TYPE_59__*, %struct.TYPE_59__** %14, align 8
  %313 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_58__*, %struct.TYPE_58__** %313, align 8
  %315 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %316 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %314, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = sub nsw i64 %320, 1
  %322 = load %struct.TYPE_47__*, %struct.TYPE_47__** %30, align 8
  %323 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %322, i32 0, i32 0
  store i64 %321, i64* %323, align 8
  br label %324

324:                                              ; preds = %311, %299
  br label %325

325:                                              ; preds = %324, %291
  %326 = load i64, i64* %26, align 8
  %327 = load i32*, i32** %20, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 %326
  store i32* %328, i32** %20, align 8
  %329 = load i64, i64* %26, align 8
  %330 = load i64, i64* %17, align 8
  %331 = sub i64 %330, %329
  store i64 %331, i64* %17, align 8
  br label %112

332:                                              ; preds = %112
  %333 = load %struct.TYPE_44__*, %struct.TYPE_44__** %28, align 8
  %334 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %333, i32 1
  store %struct.TYPE_44__* %334, %struct.TYPE_44__** %28, align 8
  %335 = load i64*, i64** %31, align 8
  %336 = call i32 @opj_free(i64* %335)
  br label %337

337:                                              ; preds = %332
  %338 = load i64, i64* %22, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %22, align 8
  br label %68

340:                                              ; preds = %68
  %341 = load %struct.TYPE_44__*, %struct.TYPE_44__** %21, align 8
  %342 = load i64, i64* %27, align 8
  %343 = call i32 @opj_pi_destroy(%struct.TYPE_44__* %341, i64 %342)
  %344 = load i32*, i32** %20, align 8
  %345 = load i32*, i32** %15, align 8
  %346 = ptrtoint i32* %344 to i64
  %347 = ptrtoint i32* %345 to i64
  %348 = sub i64 %346, %347
  %349 = sdiv exact i64 %348, 4
  %350 = load i64*, i64** %16, align 8
  store i64 %349, i64* %350, align 8
  %351 = load i64, i64* @OPJ_TRUE, align 8
  store i64 %351, i64* %10, align 8
  br label %352

352:                                              ; preds = %340, %283, %248, %97, %81, %64
  %353 = load i64, i64* %10, align 8
  ret i64 %353
}

declare dso_local i32 @OPJ_ARG_NOT_USED(%struct.TYPE_49__*) #1

declare dso_local %struct.TYPE_44__* @opj_pi_create_decode(%struct.TYPE_46__*, %struct.TYPE_48__*, i64) #1

declare dso_local i32 @opj_pi_destroy(%struct.TYPE_44__*, i64) #1

declare dso_local i64 @opj_malloc(i32) #1

declare dso_local i32 @memset(i64*, i64, i32) #1

declare dso_local i64 @opj_pi_next(%struct.TYPE_44__*) #1

declare dso_local i32 @JAS_FPRINTF(i32, i8*, i32, i64, i64, i64, i64) #1

declare dso_local i64 @opj_tcd_is_subband_area_of_interest(i32*, i64, i64, i32, i64, i64, i64, i64) #1

declare dso_local i32 @opj_t2_decode_packet(%struct.TYPE_43__*, %struct.TYPE_59__*, %struct.TYPE_57__*, %struct.TYPE_44__*, i32*, i64*, i64, %struct.TYPE_45__*, i32*) #1

declare dso_local i32 @opj_free(i64*) #1

declare dso_local i64 @opj_uint_max(i64, i64) #1

declare dso_local i32 @opj_t2_skip_packet(%struct.TYPE_43__*, %struct.TYPE_59__*, %struct.TYPE_57__*, %struct.TYPE_44__*, i32*, i64*, i64, %struct.TYPE_45__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
