; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_expand.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.ar_archive_rar_uncomp_v3 }
%struct.ar_archive_rar_uncomp_v3 = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i64 }

@rar_expand.lengthbases = internal constant [28 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 12, i32 14, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224], align 16
@rar_expand.lengthbits = internal constant [28 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5], align 16
@rar_expand.offsetbases = internal constant [60 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576, i32 32768, i32 49152, i32 65536, i32 98304, i32 131072, i32 196608, i32 262144, i32 327680, i32 393216, i32 458752, i32 524288, i32 589824, i32 655360, i32 720896, i32 786432, i32 851968, i32 917504, i32 983040, i32 1048576, i32 1310720, i32 1572864, i32 1835008, i32 2097152, i32 2359296, i32 2621440, i32 2883584, i32 3145728, i32 3407872, i32 3670016, i32 3932160], align 16
@rar_expand.offsetbits = internal constant [60 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18, i32 18], align 16
@rar_expand.shortbases = internal constant [8 x i32] [i32 0, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 192], align 16
@rar_expand.shortbits = internal constant [8 x i32] [i32 2, i32 2, i32 3, i32 4, i32 5, i32 6, i32 6, i32 6], align 16
@rar_decode_byte = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid data in bitstream\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rar_expand(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ar_archive_rar_uncomp_v3*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  store %struct.ar_archive_rar_uncomp_v3* %21, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 2
  store i32* %24, i32** %7, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i64 @rar_expand_v2(%struct.TYPE_14__* %31, i64 %32)
  store i64 %33, i64* %3, align 8
  br label %498

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %487, %128, %119, %109, %73, %61, %34
  %36 = load i32*, i32** %7, align 8
  %37 = call i64 @lzss_position(i32* %36)
  %38 = load i64, i64* %5, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* %3, align 8
  br label %498

42:                                               ; preds = %35
  %43 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %44 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %49 = call i32 @rar_handle_ppmd_sequence(%struct.TYPE_14__* %48, i64* %5)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  store i64 -1, i64* %3, align 8
  br label %498

52:                                               ; preds = %47
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @lzss_position(i32* %59)
  store i64 %60, i64* %3, align 8
  br label %498

61:                                               ; preds = %52
  br label %35

62:                                               ; preds = %42
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %64 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %65 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %64, i32 0, i32 8
  %66 = call i32 @rar_read_next_symbol(%struct.TYPE_14__* %63, i32* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i64 -1, i64* %3, align 8
  br label %498

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 256
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @lzss_emit_literal(i32* %74, i32 %75)
  br label %35

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 256
  br i1 %79, label %80, label %110

80:                                               ; preds = %77
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %82 = call i32 @br_check(%struct.TYPE_14__* %81, i32 1)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i64 -1, i64* %3, align 8
  br label %498

85:                                               ; preds = %80
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %87 = call i64 @br_bits(%struct.TYPE_14__* %86, i32 1)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %104, label %89

89:                                               ; preds = %85
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = call i32 @br_check(%struct.TYPE_14__* %90, i32 1)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  store i64 -1, i64* %3, align 8
  br label %498

94:                                               ; preds = %89
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = call i64 @br_bits(%struct.TYPE_14__* %95, i32 1)
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = call i64 @lzss_position(i32* %102)
  store i64 %103, i64* %3, align 8
  br label %498

104:                                              ; preds = %85
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %106 = call i32 @rar_parse_codes(%struct.TYPE_14__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  store i64 -1, i64* %3, align 8
  br label %498

109:                                              ; preds = %104
  br label %35

110:                                              ; preds = %77
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 257
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = load i32, i32* @rar_decode_byte, align 4
  %116 = call i32 @rar_read_filter(%struct.TYPE_14__* %114, i32 %115, i64* %5)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  store i64 -1, i64* %3, align 8
  br label %498

119:                                              ; preds = %113
  br label %35

120:                                              ; preds = %110
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %121, 258
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %125 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %35

129:                                              ; preds = %123
  %130 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %131 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %9, align 4
  %133 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %134 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %10, align 4
  br label %487

136:                                              ; preds = %120
  %137 = load i32, i32* %8, align 4
  %138 = icmp sle i32 %137, 262
  br i1 %138, label %139, label %222

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = sub nsw i32 %140, 259
  store i32 %141, i32* %12, align 4
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %143 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %144 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %143, i32 0, i32 7
  %145 = call i32 @rar_read_next_symbol(%struct.TYPE_14__* %142, i32* %144)
  store i32 %145, i32* %13, align 4
  %146 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %147 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %146, i32 0, i32 2
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %139
  %156 = load i32, i32* %13, align 4
  %157 = icmp sgt i32 %156, 28
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %13, align 4
  %160 = icmp sgt i32 %159, 28
  br i1 %160, label %161, label %163

161:                                              ; preds = %158, %155, %139
  %162 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %3, align 8
  br label %498

163:                                              ; preds = %158
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand.lengthbases, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 2
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand.lengthbits, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %163
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand.lengthbits, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @br_check(%struct.TYPE_14__* %175, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %174
  store i64 -1, i64* %3, align 8
  br label %498

183:                                              ; preds = %174
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand.lengthbits, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @br_bits(%struct.TYPE_14__* %184, i32 %188)
  %190 = trunc i64 %189 to i32
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %10, align 4
  br label %193

193:                                              ; preds = %183, %163
  %194 = load i32, i32* %12, align 4
  store i32 %194, i32* %11, align 4
  br label %195

195:                                              ; preds = %213, %193
  %196 = load i32, i32* %11, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %195
  %199 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %200 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sub nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %208 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %206, i32* %212, align 4
  br label %213

213:                                              ; preds = %198
  %214 = load i32, i32* %11, align 4
  %215 = add nsw i32 %214, -1
  store i32 %215, i32* %11, align 4
  br label %195

216:                                              ; preds = %195
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %219 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  store i32 %217, i32* %221, align 4
  br label %486

222:                                              ; preds = %136
  %223 = load i32, i32* %8, align 4
  %224 = icmp sle i32 %223, 270
  br i1 %224, label %225, label %285

225:                                              ; preds = %222
  %226 = load i32, i32* %8, align 4
  %227 = sub nsw i32 %226, 263
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [8 x i32], [8 x i32]* @rar_expand.shortbases, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [8 x i32], [8 x i32]* @rar_expand.shortbits, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %257

238:                                              ; preds = %225
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %240 = load i32, i32* %14, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [8 x i32], [8 x i32]* @rar_expand.shortbits, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @br_check(%struct.TYPE_14__* %239, i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %238
  store i64 -1, i64* %3, align 8
  br label %498

247:                                              ; preds = %238
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [8 x i32], [8 x i32]* @rar_expand.shortbits, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = call i64 @br_bits(%struct.TYPE_14__* %248, i32 %252)
  %254 = trunc i64 %253 to i32
  %255 = load i32, i32* %9, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %9, align 4
  br label %257

257:                                              ; preds = %247, %225
  store i32 2, i32* %10, align 4
  store i32 3, i32* %11, align 4
  br label %258

258:                                              ; preds = %276, %257
  %259 = load i32, i32* %11, align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %279

261:                                              ; preds = %258
  %262 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %263 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sub nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %264, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %271 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %11, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %269, i32* %275, align 4
  br label %276

276:                                              ; preds = %261
  %277 = load i32, i32* %11, align 4
  %278 = add nsw i32 %277, -1
  store i32 %278, i32* %11, align 4
  br label %258

279:                                              ; preds = %258
  %280 = load i32, i32* %9, align 4
  %281 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %282 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %281, i32 0, i32 2
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  store i32 %280, i32* %284, align 4
  br label %485

285:                                              ; preds = %222
  %286 = load i32, i32* %8, align 4
  %287 = sub nsw i32 %286, 271
  store i32 %287, i32* %15, align 4
  %288 = load i32, i32* %15, align 4
  %289 = icmp sgt i32 %288, 28
  br i1 %289, label %293, label %290

290:                                              ; preds = %285
  %291 = load i32, i32* %15, align 4
  %292 = icmp sgt i32 %291, 28
  br i1 %292, label %293, label %295

293:                                              ; preds = %290, %285
  %294 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %3, align 8
  br label %498

295:                                              ; preds = %290
  %296 = load i32, i32* %15, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand.lengthbases, i64 0, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 3
  store i32 %300, i32* %10, align 4
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand.lengthbits, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %325

306:                                              ; preds = %295
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %308 = load i32, i32* %15, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand.lengthbits, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @br_check(%struct.TYPE_14__* %307, i32 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %306
  store i64 -1, i64* %3, align 8
  br label %498

315:                                              ; preds = %306
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %317 = load i32, i32* %15, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand.lengthbits, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i64 @br_bits(%struct.TYPE_14__* %316, i32 %320)
  %322 = trunc i64 %321 to i32
  %323 = load i32, i32* %10, align 4
  %324 = add nsw i32 %323, %322
  store i32 %324, i32* %10, align 4
  br label %325

325:                                              ; preds = %315, %295
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %327 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %328 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %327, i32 0, i32 6
  %329 = call i32 @rar_read_next_symbol(%struct.TYPE_14__* %326, i32* %328)
  store i32 %329, i32* %16, align 4
  %330 = load i32, i32* %16, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %338, label %332

332:                                              ; preds = %325
  %333 = load i32, i32* %16, align 4
  %334 = icmp sgt i32 %333, 60
  br i1 %334, label %338, label %335

335:                                              ; preds = %332
  %336 = load i32, i32* %16, align 4
  %337 = icmp sgt i32 %336, 60
  br i1 %337, label %338, label %340

338:                                              ; preds = %335, %332, %325
  %339 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %3, align 8
  br label %498

340:                                              ; preds = %335
  %341 = load i32, i32* %16, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [60 x i32], [60 x i32]* @rar_expand.offsetbases, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %9, align 4
  %346 = load i32, i32* %16, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [60 x i32], [60 x i32]* @rar_expand.offsetbits, i64 0, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %445

351:                                              ; preds = %340
  %352 = load i32, i32* %16, align 4
  %353 = icmp sgt i32 %352, 9
  br i1 %353, label %354, label %425

354:                                              ; preds = %351
  %355 = load i32, i32* %16, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [60 x i32], [60 x i32]* @rar_expand.offsetbits, i64 0, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = icmp sgt i32 %358, 4
  br i1 %359, label %360, label %382

360:                                              ; preds = %354
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %362 = load i32, i32* %16, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [60 x i32], [60 x i32]* @rar_expand.offsetbits, i64 0, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = sub nsw i32 %365, 4
  %367 = call i32 @br_check(%struct.TYPE_14__* %361, i32 %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %360
  store i64 -1, i64* %3, align 8
  br label %498

370:                                              ; preds = %360
  %371 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %372 = load i32, i32* %16, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [60 x i32], [60 x i32]* @rar_expand.offsetbits, i64 0, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = sub nsw i32 %375, 4
  %377 = call i64 @br_bits(%struct.TYPE_14__* %371, i32 %376)
  %378 = trunc i64 %377 to i32
  %379 = shl i32 %378, 4
  %380 = load i32, i32* %9, align 4
  %381 = add nsw i32 %380, %379
  store i32 %381, i32* %9, align 4
  br label %382

382:                                              ; preds = %370, %354
  %383 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %384 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 8
  %386 = icmp sgt i32 %385, 0
  br i1 %386, label %387, label %397

387:                                              ; preds = %382
  %388 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %389 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = add nsw i32 %390, -1
  store i32 %391, i32* %389, align 8
  %392 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %393 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* %9, align 4
  %396 = add nsw i32 %395, %394
  store i32 %396, i32* %9, align 4
  br label %424

397:                                              ; preds = %382
  %398 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %399 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %400 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %399, i32 0, i32 5
  %401 = call i32 @rar_read_next_symbol(%struct.TYPE_14__* %398, i32* %400)
  store i32 %401, i32* %17, align 4
  %402 = load i32, i32* %17, align 4
  %403 = icmp slt i32 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %397
  store i64 -1, i64* %3, align 8
  br label %498

405:                                              ; preds = %397
  %406 = load i32, i32* %17, align 4
  %407 = icmp eq i32 %406, 16
  br i1 %407, label %408, label %416

408:                                              ; preds = %405
  %409 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %410 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %409, i32 0, i32 3
  store i32 15, i32* %410, align 8
  %411 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %412 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %9, align 4
  %415 = add nsw i32 %414, %413
  store i32 %415, i32* %9, align 4
  br label %423

416:                                              ; preds = %405
  %417 = load i32, i32* %17, align 4
  %418 = load i32, i32* %9, align 4
  %419 = add nsw i32 %418, %417
  store i32 %419, i32* %9, align 4
  %420 = load i32, i32* %17, align 4
  %421 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %422 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %421, i32 0, i32 4
  store i32 %420, i32* %422, align 4
  br label %423

423:                                              ; preds = %416, %408
  br label %424

424:                                              ; preds = %423, %387
  br label %444

425:                                              ; preds = %351
  %426 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %427 = load i32, i32* %16, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [60 x i32], [60 x i32]* @rar_expand.offsetbits, i64 0, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @br_check(%struct.TYPE_14__* %426, i32 %430)
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %434, label %433

433:                                              ; preds = %425
  store i64 -1, i64* %3, align 8
  br label %498

434:                                              ; preds = %425
  %435 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %436 = load i32, i32* %16, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [60 x i32], [60 x i32]* @rar_expand.offsetbits, i64 0, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = call i64 @br_bits(%struct.TYPE_14__* %435, i32 %439)
  %441 = trunc i64 %440 to i32
  %442 = load i32, i32* %9, align 4
  %443 = add nsw i32 %442, %441
  store i32 %443, i32* %9, align 4
  br label %444

444:                                              ; preds = %434, %424
  br label %445

445:                                              ; preds = %444, %340
  %446 = load i32, i32* %9, align 4
  %447 = icmp sge i32 %446, 262144
  br i1 %447, label %448, label %451

448:                                              ; preds = %445
  %449 = load i32, i32* %10, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %10, align 4
  br label %451

451:                                              ; preds = %448, %445
  %452 = load i32, i32* %9, align 4
  %453 = icmp sge i32 %452, 8192
  br i1 %453, label %454, label %457

454:                                              ; preds = %451
  %455 = load i32, i32* %10, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %10, align 4
  br label %457

457:                                              ; preds = %454, %451
  store i32 3, i32* %11, align 4
  br label %458

458:                                              ; preds = %476, %457
  %459 = load i32, i32* %11, align 4
  %460 = icmp sgt i32 %459, 0
  br i1 %460, label %461, label %479

461:                                              ; preds = %458
  %462 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %463 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %462, i32 0, i32 2
  %464 = load i32*, i32** %463, align 8
  %465 = load i32, i32* %11, align 4
  %466 = sub nsw i32 %465, 1
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %464, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %471 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %470, i32 0, i32 2
  %472 = load i32*, i32** %471, align 8
  %473 = load i32, i32* %11, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %472, i64 %474
  store i32 %469, i32* %475, align 4
  br label %476

476:                                              ; preds = %461
  %477 = load i32, i32* %11, align 4
  %478 = add nsw i32 %477, -1
  store i32 %478, i32* %11, align 4
  br label %458

479:                                              ; preds = %458
  %480 = load i32, i32* %9, align 4
  %481 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %482 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %481, i32 0, i32 2
  %483 = load i32*, i32** %482, align 8
  %484 = getelementptr inbounds i32, i32* %483, i64 0
  store i32 %480, i32* %484, align 4
  br label %485

485:                                              ; preds = %479, %279
  br label %486

486:                                              ; preds = %485, %216
  br label %487

487:                                              ; preds = %486, %129
  %488 = load i32, i32* %9, align 4
  %489 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %490 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %489, i32 0, i32 1
  store i32 %488, i32* %490, align 4
  %491 = load i32, i32* %10, align 4
  %492 = load %struct.ar_archive_rar_uncomp_v3*, %struct.ar_archive_rar_uncomp_v3** %6, align 8
  %493 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v3, %struct.ar_archive_rar_uncomp_v3* %492, i32 0, i32 0
  store i32 %491, i32* %493, align 8
  %494 = load i32*, i32** %7, align 8
  %495 = load i32, i32* %9, align 4
  %496 = load i32, i32* %10, align 4
  %497 = call i32 @lzss_emit_match(i32* %494, i32 %495, i32 %496)
  br label %35

498:                                              ; preds = %433, %404, %369, %338, %314, %293, %246, %182, %161, %118, %108, %94, %93, %84, %69, %58, %51, %40, %30
  %499 = load i64, i64* %3, align 8
  ret i64 %499
}

declare dso_local i64 @rar_expand_v2(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @lzss_position(i32*) #1

declare dso_local i32 @rar_handle_ppmd_sequence(%struct.TYPE_14__*, i64*) #1

declare dso_local i32 @rar_read_next_symbol(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @lzss_emit_literal(i32*, i32) #1

declare dso_local i32 @br_check(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @br_bits(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @rar_parse_codes(%struct.TYPE_14__*) #1

declare dso_local i32 @rar_read_filter(%struct.TYPE_14__*, i32, i64*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @lzss_emit_match(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
