; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_expand_v2.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/rar/extr_uncompress-rar.c_rar_expand_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.ar_archive_rar_uncomp_v2 }
%struct.ar_archive_rar_uncomp_v2 = type { i64, i64, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, i32*, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@rar_expand_v2.lengthbases = internal constant [28 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 10, i32 12, i32 14, i32 16, i32 20, i32 24, i32 28, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224], align 16
@rar_expand_v2.lengthbits = internal constant [28 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 5, i32 5, i32 5, i32 5], align 16
@rar_expand_v2.offsetbases = internal constant [48 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6, i32 8, i32 12, i32 16, i32 24, i32 32, i32 48, i32 64, i32 96, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1536, i32 2048, i32 3072, i32 4096, i32 6144, i32 8192, i32 12288, i32 16384, i32 24576, i32 32768, i32 49152, i32 65536, i32 98304, i32 131072, i32 196608, i32 262144, i32 327680, i32 393216, i32 458752, i32 524288, i32 589824, i32 655360, i32 720896, i32 786432, i32 851968, i32 917504, i32 983040], align 16
@rar_expand_v2.offsetbits = internal constant [48 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 16
@rar_expand_v2.shortbases = internal constant [8 x i32] [i32 0, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 192], align 16
@rar_expand_v2.shortbits = internal constant [8 x i32] [i32 2, i32 2, i32 3, i32 4, i32 5, i32 6, i32 6, i32 6], align 16
@.str = private unnamed_addr constant [26 x i8] c"Invalid data in bitstream\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rar_expand_v2(%struct.TYPE_14__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ar_archive_rar_uncomp_v2*, align 8
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
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i64 %1, i64* %5, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store %struct.ar_archive_rar_uncomp_v2* %20, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  store i32* %23, i32** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %28, %32
  %34 = icmp sgt i64 %24, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %2
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %39, %43
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %35, %2
  br label %46

46:                                               ; preds = %362, %121, %106, %45
  %47 = load i32*, i32** %7, align 8
  %48 = call i64 @lzss_position(i32* %47)
  %49 = load i64, i64* %5, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i64, i64* %5, align 8
  store i64 %52, i64* %3, align 8
  br label %383

53:                                               ; preds = %46
  %54 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %55 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %54, i32 0, i32 12
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %110

58:                                               ; preds = %53
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %61 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %60, i32 0, i32 11
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %64 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = call i32 @rar_read_next_symbol(%struct.TYPE_14__* %59, i32* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  store i64 -1, i64* %3, align 8
  br label %383

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %72, 256
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = call i64 @lzss_position(i32* %78)
  store i64 %79, i64* %3, align 8
  br label %383

80:                                               ; preds = %71
  %81 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %82 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %81, i32 0, i32 10
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %85 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %89 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %88, i32 0, i32 9
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @rar_decode_audio(i32* %87, i32* %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %93 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %93, align 8
  %96 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %97 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %100 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %80
  %104 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %105 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %80
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @lzss_emit_literal(i32* %107, i32 %108)
  br label %46

110:                                              ; preds = %53
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %112 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %113 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %112, i32 0, i32 8
  %114 = call i32 @rar_read_next_symbol(%struct.TYPE_14__* %111, i32* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i64 -1, i64* %3, align 8
  br label %383

118:                                              ; preds = %110
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %119, 256
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @lzss_emit_literal(i32* %122, i32 %123)
  br label %46

125:                                              ; preds = %118
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %126, 256
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %130 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %9, align 4
  %132 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %133 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %10, align 4
  br label %362

135:                                              ; preds = %125
  %136 = load i32, i32* %8, align 4
  %137 = icmp sle i32 %136, 260
  br i1 %137, label %138, label %216

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = sub nsw i32 %139, 256
  store i32 %140, i32* %12, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %142 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %143 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %142, i32 0, i32 7
  %144 = call i32 @rar_read_next_symbol(%struct.TYPE_14__* %141, i32* %143)
  store i32 %144, i32* %13, align 4
  %145 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %146 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %149 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sub nsw i32 %150, %151
  %153 = and i32 %152, 3
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %147, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* %13, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %138
  %160 = load i32, i32* %13, align 4
  %161 = icmp sgt i32 %160, 28
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load i32, i32* %13, align 4
  %164 = icmp sgt i32 %163, 28
  br i1 %164, label %165, label %167

165:                                              ; preds = %162, %159, %138
  %166 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %3, align 8
  br label %383

167:                                              ; preds = %162
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand_v2.lengthbases, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 2
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand_v2.lengthbits, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %197

178:                                              ; preds = %167
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand_v2.lengthbits, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @br_check(%struct.TYPE_14__* %179, i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %178
  store i64 -1, i64* %3, align 8
  br label %383

187:                                              ; preds = %178
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand_v2.lengthbits, i64 0, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @br_bits(%struct.TYPE_14__* %188, i32 %192)
  %194 = trunc i64 %193 to i32
  %195 = load i32, i32* %10, align 4
  %196 = add nsw i32 %195, %194
  store i32 %196, i32* %10, align 4
  br label %197

197:                                              ; preds = %187, %167
  %198 = load i32, i32* %9, align 4
  %199 = icmp sge i32 %198, 262144
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %200, %197
  %204 = load i32, i32* %9, align 4
  %205 = icmp sge i32 %204, 8192
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* %10, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %10, align 4
  br label %209

209:                                              ; preds = %206, %203
  %210 = load i32, i32* %9, align 4
  %211 = icmp sge i32 %210, 257
  br i1 %211, label %212, label %215

212:                                              ; preds = %209
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %215

215:                                              ; preds = %212, %209
  br label %361

216:                                              ; preds = %135
  %217 = load i32, i32* %8, align 4
  %218 = icmp sle i32 %217, 268
  br i1 %218, label %219, label %252

219:                                              ; preds = %216
  %220 = load i32, i32* %8, align 4
  %221 = sub nsw i32 %220, 261
  store i32 %221, i32* %14, align 4
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [8 x i32], [8 x i32]* @rar_expand_v2.shortbases, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %14, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* @rar_expand_v2.shortbits, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %251

232:                                              ; preds = %219
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %234 = load i32, i32* %14, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [8 x i32], [8 x i32]* @rar_expand_v2.shortbits, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @br_check(%struct.TYPE_14__* %233, i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %241, label %240

240:                                              ; preds = %232
  store i64 -1, i64* %3, align 8
  br label %383

241:                                              ; preds = %232
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %243 = load i32, i32* %14, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [8 x i32], [8 x i32]* @rar_expand_v2.shortbits, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = call i64 @br_bits(%struct.TYPE_14__* %242, i32 %246)
  %248 = trunc i64 %247 to i32
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, %248
  store i32 %250, i32* %9, align 4
  br label %251

251:                                              ; preds = %241, %219
  store i32 2, i32* %10, align 4
  br label %360

252:                                              ; preds = %216
  %253 = load i32, i32* %8, align 4
  %254 = icmp eq i32 %253, 269
  br i1 %254, label %255, label %261

255:                                              ; preds = %252
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  store i32 1, i32* %258, align 8
  %259 = load i32*, i32** %7, align 8
  %260 = call i64 @lzss_position(i32* %259)
  store i64 %260, i64* %3, align 8
  br label %383

261:                                              ; preds = %252
  %262 = load i32, i32* %8, align 4
  %263 = sub nsw i32 %262, 270
  store i32 %263, i32* %15, align 4
  %264 = load i32, i32* %15, align 4
  %265 = icmp sgt i32 %264, 28
  br i1 %265, label %269, label %266

266:                                              ; preds = %261
  %267 = load i32, i32* %15, align 4
  %268 = icmp sgt i32 %267, 28
  br i1 %268, label %269, label %271

269:                                              ; preds = %266, %261
  %270 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %3, align 8
  br label %383

271:                                              ; preds = %266
  %272 = load i32, i32* %15, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand_v2.lengthbases, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 3
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %15, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand_v2.lengthbits, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %301

282:                                              ; preds = %271
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %284 = load i32, i32* %15, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand_v2.lengthbits, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @br_check(%struct.TYPE_14__* %283, i32 %287)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %282
  store i64 -1, i64* %3, align 8
  br label %383

291:                                              ; preds = %282
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %293 = load i32, i32* %15, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [28 x i32], [28 x i32]* @rar_expand_v2.lengthbits, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = call i64 @br_bits(%struct.TYPE_14__* %292, i32 %296)
  %298 = trunc i64 %297 to i32
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %10, align 4
  br label %301

301:                                              ; preds = %291, %271
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %303 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %304 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %303, i32 0, i32 6
  %305 = call i32 @rar_read_next_symbol(%struct.TYPE_14__* %302, i32* %304)
  store i32 %305, i32* %16, align 4
  %306 = load i32, i32* %16, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %301
  %309 = load i32, i32* %16, align 4
  %310 = icmp sgt i32 %309, 48
  br i1 %310, label %314, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* %16, align 4
  %313 = icmp sgt i32 %312, 48
  br i1 %313, label %314, label %316

314:                                              ; preds = %311, %308, %301
  %315 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 -1, i64* %3, align 8
  br label %383

316:                                              ; preds = %311
  %317 = load i32, i32* %16, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [48 x i32], [48 x i32]* @rar_expand_v2.offsetbases, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %9, align 4
  %322 = load i32, i32* %16, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [48 x i32], [48 x i32]* @rar_expand_v2.offsetbits, i64 0, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = icmp sgt i32 %325, 0
  br i1 %326, label %327, label %346

327:                                              ; preds = %316
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %329 = load i32, i32* %16, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [48 x i32], [48 x i32]* @rar_expand_v2.offsetbits, i64 0, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @br_check(%struct.TYPE_14__* %328, i32 %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %327
  store i64 -1, i64* %3, align 8
  br label %383

336:                                              ; preds = %327
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %338 = load i32, i32* %16, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [48 x i32], [48 x i32]* @rar_expand_v2.offsetbits, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = call i64 @br_bits(%struct.TYPE_14__* %337, i32 %341)
  %343 = trunc i64 %342 to i32
  %344 = load i32, i32* %9, align 4
  %345 = add nsw i32 %344, %343
  store i32 %345, i32* %9, align 4
  br label %346

346:                                              ; preds = %336, %316
  %347 = load i32, i32* %9, align 4
  %348 = icmp sge i32 %347, 262144
  br i1 %348, label %349, label %352

349:                                              ; preds = %346
  %350 = load i32, i32* %10, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %10, align 4
  br label %352

352:                                              ; preds = %349, %346
  %353 = load i32, i32* %9, align 4
  %354 = icmp sge i32 %353, 8192
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  %356 = load i32, i32* %10, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %10, align 4
  br label %358

358:                                              ; preds = %355, %352
  br label %359

359:                                              ; preds = %358
  br label %360

360:                                              ; preds = %359, %251
  br label %361

361:                                              ; preds = %360, %215
  br label %362

362:                                              ; preds = %361, %128
  %363 = load i32, i32* %9, align 4
  %364 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %365 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %364, i32 0, i32 4
  %366 = load i32*, i32** %365, align 8
  %367 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %368 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %367, i32 0, i32 5
  %369 = load i32, i32* %368, align 8
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %368, align 8
  %371 = and i32 %369, 3
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %366, i64 %372
  store i32 %363, i32* %373, align 4
  %374 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %375 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %374, i32 0, i32 2
  store i32 %363, i32* %375, align 8
  %376 = load i32, i32* %10, align 4
  %377 = load %struct.ar_archive_rar_uncomp_v2*, %struct.ar_archive_rar_uncomp_v2** %6, align 8
  %378 = getelementptr inbounds %struct.ar_archive_rar_uncomp_v2, %struct.ar_archive_rar_uncomp_v2* %377, i32 0, i32 3
  store i32 %376, i32* %378, align 4
  %379 = load i32*, i32** %7, align 8
  %380 = load i32, i32* %9, align 4
  %381 = load i32, i32* %10, align 4
  %382 = call i32 @lzss_emit_match(i32* %379, i32 %380, i32 %381)
  br label %46

383:                                              ; preds = %335, %314, %290, %269, %255, %240, %186, %165, %117, %74, %70, %51
  %384 = load i64, i64* %3, align 8
  ret i64 %384
}

declare dso_local i64 @lzss_position(i32*) #1

declare dso_local i32 @rar_read_next_symbol(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @rar_decode_audio(i32*, i32*, i32) #1

declare dso_local i32 @lzss_emit_literal(i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @br_check(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @br_bits(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @lzss_emit_match(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
