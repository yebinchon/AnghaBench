; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_text2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_text2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_6__, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [124 x i8] c"TEXT2(x=%d,y=%d,cl=%d,ct=%d,cr=%d,cb=%d,bl=%d,bt=%d,br=%d,bb=%d,bs=%d,bg=0x%x,fg=0x%x,font=%d,fl=0x%x,op=0x%x,mix=%d,n=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Text: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_5__*, i32, i32)* @process_text2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_text2(i32* %0, i32 %1, %struct.TYPE_5__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @in_uint8(i32 %16, i32 %19)
  br label %21

21:                                               ; preds = %15, %5
  %22 = load i32, i32* %9, align 4
  %23 = and i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @in_uint8(i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @in_uint8(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @in_uint8(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %45, %41
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 16
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 6
  %59 = call i32 @rdp_in_colour(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 7
  %68 = call i32 @rdp_in_colour(i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, 64
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 15
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @in_uint16_le(i32 %74, i64 %77)
  br label %79

79:                                               ; preds = %73, %69
  %80 = load i32, i32* %9, align 4
  %81 = and i32 %80, 128
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 13
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @in_uint16_le(i32 %84, i64 %87)
  br label %89

89:                                               ; preds = %83, %79
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %90, 256
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 16
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @in_uint16_le(i32 %94, i64 %97)
  br label %99

99:                                               ; preds = %93, %89
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, 512
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 14
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @in_uint16_le(i32 %104, i64 %107)
  br label %109

109:                                              ; preds = %103, %99
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, 1024
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 11
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @in_uint16_le(i32 %114, i64 %117)
  br label %119

119:                                              ; preds = %113, %109
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, 2048
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 9
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @in_uint16_le(i32 %124, i64 %127)
  br label %129

129:                                              ; preds = %123, %119
  %130 = load i32, i32* %9, align 4
  %131 = and i32 %130, 4096
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 12
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @in_uint16_le(i32 %134, i64 %137)
  br label %139

139:                                              ; preds = %133, %129
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %140, 8192
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 10
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @in_uint16_le(i32 %144, i64 %147)
  br label %149

149:                                              ; preds = %143, %139
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 8
  %153 = load i32, i32* %9, align 4
  %154 = ashr i32 %153, 14
  %155 = call i32 @rdp_parse_brush(i32 %150, %struct.TYPE_6__* %152, i32 %154)
  %156 = load i32, i32* %9, align 4
  %157 = and i32 %156, 524288
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %149
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 18
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @in_uint16_le(i32 %160, i64 %163)
  br label %165

165:                                              ; preds = %159, %149
  %166 = load i32, i32* %9, align 4
  %167 = and i32 %166, 1048576
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 17
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @in_uint16_le(i32 %170, i64 %173)
  br label %175

175:                                              ; preds = %169, %165
  %176 = load i32, i32* %9, align 4
  %177 = and i32 %176, 2097152
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %175
  %180 = load i32, i32* %7, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @in_uint8(i32 %180, i32 %183)
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 5
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @in_uint8a(i32 %185, i32* %188, i32 %191)
  br label %193

193:                                              ; preds = %179, %175
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 18
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 17
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 15
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 13
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 16
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 14
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 11
  %214 = load i64, i64* %213, align 8
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 9
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 12
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 10
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = call i32 @DEBUG(i8* %250)
  %252 = call i32 @DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %253

253:                                              ; preds = %270, %193
  %254 = load i32, i32* %11, align 4
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 8
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %273

259:                                              ; preds = %253
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 5
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = inttoptr i64 %267 to i8*
  %269 = call i32 @DEBUG(i8* %268)
  br label %270

270:                                              ; preds = %259
  %271 = load i32, i32* %11, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %11, align 4
  br label %253

273:                                              ; preds = %253
  %274 = call i32 @DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %275 = load i32*, i32** %6, align 8
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 18
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 17
  %293 = load i64, i64* %292, align 8
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 15
  %296 = load i64, i64* %295, align 8
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 13
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 16
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 15
  %305 = load i64, i64* %304, align 8
  %306 = sub nsw i64 %302, %305
  %307 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %307, i32 0, i32 14
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 13
  %312 = load i64, i64* %311, align 8
  %313 = sub nsw i64 %309, %312
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 11
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 9
  %319 = load i64, i64* %318, align 8
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 12
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 11
  %325 = load i64, i64* %324, align 8
  %326 = sub nsw i64 %322, %325
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 10
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 9
  %332 = load i64, i64* %331, align 8
  %333 = sub nsw i64 %329, %332
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 8
  %336 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 5
  %344 = load i32*, i32** %343, align 8
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @ui_draw_text(i32* %275, i32 %278, i32 %281, i32 %284, i32 %287, i64 %290, i64 %293, i64 %296, i64 %299, i64 %306, i64 %313, i64 %316, i64 %319, i64 %326, i64 %333, %struct.TYPE_6__* %335, i32 %338, i32 %341, i32* %344, i32 %347)
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @rdp_in_colour(i32, i32*) #1

declare dso_local i32 @in_uint16_le(i32, i64) #1

declare dso_local i32 @rdp_parse_brush(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @in_uint8a(i32, i32*, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @ui_draw_text(i32*, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_6__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
