; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_palette.c_check_system_palette_entries.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_palette.c_check_system_palette_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32 }

@DEFAULT_PALETTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"wrong size %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"%u: wrong color %02x,%02x,%02x,%02x instead of %02x,%02x,%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"%u: wrong color %02x,%02x,%02x,%02x instead of 0,0,0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_system_palette_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_system_palette_entries(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [256 x %struct.TYPE_5__], align 16
  %4 = alloca [20 x %struct.TYPE_5__], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %11 = call i32 @memset(%struct.TYPE_5__* %10, i32 170, i32 640)
  %12 = load i32, i32* @DEFAULT_PALETTE, align 4
  %13 = call i32 @GetStockObject(i32 %12)
  %14 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 0
  %15 = call i32 @GetPaletteEntries(i32 %13, i32 0, i32 20, %struct.TYPE_5__* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 20
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i32, i8*, i32, ...) @ok(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %22 = call i32 @memset(%struct.TYPE_5__* %21, i32 85, i32 8192)
  %23 = load i32, i32* %2, align 4
  %24 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %25 = call i32 @GetSystemPaletteEntries(i32 %23, i32 0, i32 256, %struct.TYPE_5__* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i32, i8*, i32, ...) @ok(i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %118, %1
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %34, label %121

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 16
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 16
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %34
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %51, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %46
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 16
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 16
  %69 = icmp eq i64 %63, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %58
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %70, %58, %46, %34
  %79 = phi i1 [ false, %58 ], [ false, %46 ], [ false, %34 ], [ %77, %70 ]
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 16
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 16
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 16
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 16
  %117 = call i32 (i32, i8*, i32, ...) @ok(i32 %80, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %81, i64 %86, i64 %91, i64 %96, i32 %101, i64 %106, i64 %111, i64 %116)
  br label %118

118:                                              ; preds = %78
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %31

121:                                              ; preds = %31
  store i32 10, i32* %5, align 4
  br label %122

122:                                              ; preds = %179, %121
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 246
  br i1 %124, label %125, label %182

125:                                              ; preds = %122
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 16
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %154, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %154, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 16
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %154, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  br label %154

154:                                              ; preds = %146, %139, %132, %125
  %155 = phi i1 [ false, %139 ], [ false, %132 ], [ false, %125 ], [ %153, %146 ]
  %156 = zext i1 %155 to i32
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 16
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 16
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (i32, i8*, i32, ...) @ok(i32 %156, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %157, i64 %162, i64 %167, i64 %172, i32 %177)
  br label %179

179:                                              ; preds = %154
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %122

182:                                              ; preds = %122
  store i32 246, i32* %5, align 4
  br label %183

183:                                              ; preds = %273, %182
  %184 = load i32, i32* %5, align 4
  %185 = icmp slt i32 %184, 256
  br i1 %185, label %186, label %276

186:                                              ; preds = %183
  %187 = load i32, i32* %5, align 4
  %188 = sub nsw i32 %187, 246
  %189 = add nsw i32 %188, 10
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 16
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 16
  %200 = icmp eq i64 %194, %199
  br i1 %200, label %201, label %233

201:                                              ; preds = %186
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %206, %211
  br i1 %212, label %213, label %233

213:                                              ; preds = %201
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 16
  %219 = load i32, i32* %7, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 16
  %224 = icmp eq i64 %218, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %213
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  %232 = xor i1 %231, true
  br label %233

233:                                              ; preds = %225, %213, %201, %186
  %234 = phi i1 [ false, %213 ], [ false, %201 ], [ false, %186 ], [ %232, %225 ]
  %235 = zext i1 %234 to i32
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 16
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 2
  %251 = load i64, i64* %250, align 16
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 16
  %262 = load i32, i32* %7, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 16
  %272 = call i32 (i32, i8*, i32, ...) @ok(i32 %235, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %236, i64 %241, i64 %246, i64 %251, i32 %256, i64 %261, i64 %266, i64 %271)
  br label %273

273:                                              ; preds = %233
  %274 = load i32, i32* %5, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %5, align 4
  br label %183

276:                                              ; preds = %183
  %277 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %278 = call i32 @memset(%struct.TYPE_5__* %277, i32 85, i32 8192)
  %279 = load i32, i32* %2, align 4
  %280 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %281 = call i32 @GetSystemPaletteEntries(i32 %279, i32 0, i32 10, %struct.TYPE_5__* %280)
  store i32 %281, i32* %6, align 4
  %282 = load i32, i32* %6, align 4
  %283 = icmp eq i32 %282, 0
  %284 = zext i1 %283 to i32
  %285 = load i32, i32* %6, align 4
  %286 = call i32 (i32, i8*, i32, ...) @ok(i32 %284, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %285)
  store i32 0, i32* %5, align 4
  br label %287

287:                                              ; preds = %374, %276
  %288 = load i32, i32* %5, align 4
  %289 = icmp slt i32 %288, 10
  br i1 %289, label %290, label %377

290:                                              ; preds = %287
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 16
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 16
  %301 = icmp eq i64 %295, %300
  br i1 %301, label %302, label %334

302:                                              ; preds = %290
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = icmp eq i64 %307, %312
  br i1 %313, label %314, label %334

314:                                              ; preds = %302
  %315 = load i32, i32* %5, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %316
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 16
  %320 = load i32, i32* %5, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 2
  %324 = load i64, i64* %323, align 16
  %325 = icmp eq i64 %319, %324
  br i1 %325, label %326, label %334

326:                                              ; preds = %314
  %327 = load i32, i32* %5, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 8
  %332 = icmp ne i32 %331, 0
  %333 = xor i1 %332, true
  br label %334

334:                                              ; preds = %326, %314, %302, %290
  %335 = phi i1 [ false, %314 ], [ false, %302 ], [ false, %290 ], [ %333, %326 ]
  %336 = zext i1 %335 to i32
  %337 = load i32, i32* %5, align 4
  %338 = load i32, i32* %5, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 16
  %343 = load i32, i32* %5, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i32, i32* %5, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 2
  %352 = load i64, i64* %351, align 16
  %353 = load i32, i32* %5, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* %5, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 16
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %364
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load i32, i32* %5, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %369
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 2
  %372 = load i64, i64* %371, align 16
  %373 = call i32 (i32, i8*, i32, ...) @ok(i32 %336, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %337, i64 %342, i64 %347, i64 %352, i32 %357, i64 %362, i64 %367, i64 %372)
  br label %374

374:                                              ; preds = %334
  %375 = load i32, i32* %5, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %5, align 4
  br label %287

377:                                              ; preds = %287
  %378 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %379 = call i32 @memset(%struct.TYPE_5__* %378, i32 85, i32 8192)
  %380 = load i32, i32* %2, align 4
  %381 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %382 = call i32 @GetSystemPaletteEntries(i32 %380, i32 10, i32 246, %struct.TYPE_5__* %381)
  store i32 %382, i32* %6, align 4
  %383 = load i32, i32* %6, align 4
  %384 = icmp eq i32 %383, 0
  %385 = zext i1 %384 to i32
  %386 = load i32, i32* %6, align 4
  %387 = call i32 (i32, i8*, i32, ...) @ok(i32 %385, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %386)
  store i32 0, i32* %5, align 4
  br label %388

388:                                              ; preds = %445, %377
  %389 = load i32, i32* %5, align 4
  %390 = icmp slt i32 %389, 236
  br i1 %390, label %391, label %448

391:                                              ; preds = %388
  %392 = load i32, i32* %5, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 16
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %420, label %398

398:                                              ; preds = %391
  %399 = load i32, i32* %5, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %400
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 1
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %420, label %405

405:                                              ; preds = %398
  %406 = load i32, i32* %5, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 16
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %420, label %412

412:                                              ; preds = %405
  %413 = load i32, i32* %5, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 8
  %418 = icmp ne i32 %417, 0
  %419 = xor i1 %418, true
  br label %420

420:                                              ; preds = %412, %405, %398, %391
  %421 = phi i1 [ false, %405 ], [ false, %398 ], [ false, %391 ], [ %419, %412 ]
  %422 = zext i1 %421 to i32
  %423 = load i32, i32* %5, align 4
  %424 = load i32, i32* %5, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 16
  %429 = load i32, i32* %5, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %430
  %432 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = load i32, i32* %5, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %436, i32 0, i32 2
  %438 = load i64, i64* %437, align 16
  %439 = load i32, i32* %5, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 3
  %443 = load i32, i32* %442, align 8
  %444 = call i32 (i32, i8*, i32, ...) @ok(i32 %422, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %423, i64 %428, i64 %433, i64 %438, i32 %443)
  br label %445

445:                                              ; preds = %420
  %446 = load i32, i32* %5, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %5, align 4
  br label %388

448:                                              ; preds = %388
  store i32 236, i32* %5, align 4
  br label %449

449:                                              ; preds = %539, %448
  %450 = load i32, i32* %5, align 4
  %451 = icmp slt i32 %450, 246
  br i1 %451, label %452, label %542

452:                                              ; preds = %449
  %453 = load i32, i32* %5, align 4
  %454 = sub nsw i32 %453, 236
  %455 = add nsw i32 %454, 10
  store i32 %455, i32* %8, align 4
  %456 = load i32, i32* %5, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %458, i32 0, i32 0
  %460 = load i64, i64* %459, align 16
  %461 = load i32, i32* %8, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %462
  %464 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 16
  %466 = icmp eq i64 %460, %465
  br i1 %466, label %467, label %499

467:                                              ; preds = %452
  %468 = load i32, i32* %5, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 1
  %472 = load i64, i64* %471, align 8
  %473 = load i32, i32* %8, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %474
  %476 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = icmp eq i64 %472, %477
  br i1 %478, label %479, label %499

479:                                              ; preds = %467
  %480 = load i32, i32* %5, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 2
  %484 = load i64, i64* %483, align 16
  %485 = load i32, i32* %8, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %487, i32 0, i32 2
  %489 = load i64, i64* %488, align 16
  %490 = icmp eq i64 %484, %489
  br i1 %490, label %491, label %499

491:                                              ; preds = %479
  %492 = load i32, i32* %5, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %493
  %495 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %494, i32 0, i32 3
  %496 = load i32, i32* %495, align 8
  %497 = icmp ne i32 %496, 0
  %498 = xor i1 %497, true
  br label %499

499:                                              ; preds = %491, %479, %467, %452
  %500 = phi i1 [ false, %479 ], [ false, %467 ], [ false, %452 ], [ %498, %491 ]
  %501 = zext i1 %500 to i32
  %502 = load i32, i32* %5, align 4
  %503 = load i32, i32* %5, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %504
  %506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 16
  %508 = load i32, i32* %5, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %510, i32 0, i32 1
  %512 = load i64, i64* %511, align 8
  %513 = load i32, i32* %5, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %514
  %516 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %515, i32 0, i32 2
  %517 = load i64, i64* %516, align 16
  %518 = load i32, i32* %5, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %519
  %521 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %520, i32 0, i32 3
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* %8, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 0
  %527 = load i64, i64* %526, align 16
  %528 = load i32, i32* %8, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %530, i32 0, i32 1
  %532 = load i64, i64* %531, align 8
  %533 = load i32, i32* %8, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %534
  %536 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %535, i32 0, i32 2
  %537 = load i64, i64* %536, align 16
  %538 = call i32 (i32, i8*, i32, ...) @ok(i32 %501, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %502, i64 %507, i64 %512, i64 %517, i32 %522, i64 %527, i64 %532, i64 %537)
  br label %539

539:                                              ; preds = %499
  %540 = load i32, i32* %5, align 4
  %541 = add nsw i32 %540, 1
  store i32 %541, i32* %5, align 4
  br label %449

542:                                              ; preds = %449
  %543 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %544 = call i32 @memset(%struct.TYPE_5__* %543, i32 85, i32 8192)
  %545 = load i32, i32* %2, align 4
  %546 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %547 = call i32 @GetSystemPaletteEntries(i32 %545, i32 246, i32 10, %struct.TYPE_5__* %546)
  store i32 %547, i32* %6, align 4
  %548 = load i32, i32* %6, align 4
  %549 = icmp eq i32 %548, 0
  %550 = zext i1 %549 to i32
  %551 = load i32, i32* %6, align 4
  %552 = call i32 (i32, i8*, i32, ...) @ok(i32 %550, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %551)
  store i32 0, i32* %5, align 4
  br label %553

553:                                              ; preds = %642, %542
  %554 = load i32, i32* %5, align 4
  %555 = icmp slt i32 %554, 10
  br i1 %555, label %556, label %645

556:                                              ; preds = %553
  %557 = load i32, i32* %5, align 4
  %558 = add nsw i32 %557, 10
  store i32 %558, i32* %9, align 4
  %559 = load i32, i32* %5, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %560
  %562 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %561, i32 0, i32 0
  %563 = load i64, i64* %562, align 16
  %564 = load i32, i32* %9, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %565
  %567 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 16
  %569 = icmp eq i64 %563, %568
  br i1 %569, label %570, label %602

570:                                              ; preds = %556
  %571 = load i32, i32* %5, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %573, i32 0, i32 1
  %575 = load i64, i64* %574, align 8
  %576 = load i32, i32* %9, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %577
  %579 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %578, i32 0, i32 1
  %580 = load i64, i64* %579, align 8
  %581 = icmp eq i64 %575, %580
  br i1 %581, label %582, label %602

582:                                              ; preds = %570
  %583 = load i32, i32* %5, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %584
  %586 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %585, i32 0, i32 2
  %587 = load i64, i64* %586, align 16
  %588 = load i32, i32* %9, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %589
  %591 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %590, i32 0, i32 2
  %592 = load i64, i64* %591, align 16
  %593 = icmp eq i64 %587, %592
  br i1 %593, label %594, label %602

594:                                              ; preds = %582
  %595 = load i32, i32* %5, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %596
  %598 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %597, i32 0, i32 3
  %599 = load i32, i32* %598, align 8
  %600 = icmp ne i32 %599, 0
  %601 = xor i1 %600, true
  br label %602

602:                                              ; preds = %594, %582, %570, %556
  %603 = phi i1 [ false, %582 ], [ false, %570 ], [ false, %556 ], [ %601, %594 ]
  %604 = zext i1 %603 to i32
  %605 = load i32, i32* %5, align 4
  %606 = load i32, i32* %5, align 4
  %607 = sext i32 %606 to i64
  %608 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %607
  %609 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %608, i32 0, i32 0
  %610 = load i64, i64* %609, align 16
  %611 = load i32, i32* %5, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %612
  %614 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %613, i32 0, i32 1
  %615 = load i64, i64* %614, align 8
  %616 = load i32, i32* %5, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %617
  %619 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %618, i32 0, i32 2
  %620 = load i64, i64* %619, align 16
  %621 = load i32, i32* %5, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds [256 x %struct.TYPE_5__], [256 x %struct.TYPE_5__]* %3, i64 0, i64 %622
  %624 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %623, i32 0, i32 3
  %625 = load i32, i32* %624, align 8
  %626 = load i32, i32* %9, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %627
  %629 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %628, i32 0, i32 0
  %630 = load i64, i64* %629, align 16
  %631 = load i32, i32* %9, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %632
  %634 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %633, i32 0, i32 1
  %635 = load i64, i64* %634, align 8
  %636 = load i32, i32* %9, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [20 x %struct.TYPE_5__], [20 x %struct.TYPE_5__]* %4, i64 0, i64 %637
  %639 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %638, i32 0, i32 2
  %640 = load i64, i64* %639, align 16
  %641 = call i32 (i32, i8*, i32, ...) @ok(i32 %604, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %605, i64 %610, i64 %615, i64 %620, i32 %625, i64 %630, i64 %635, i64 %640)
  br label %642

642:                                              ; preds = %602
  %643 = load i32, i32* %5, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %5, align 4
  br label %553

645:                                              ; preds = %553
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @GetPaletteEntries(i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @GetStockObject(i32) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @GetSystemPaletteEntries(i32, i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
