; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_DwExecIntruction.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/rsym/extr_rsym64.c_DwExecIntruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i8, i8, i8, i32, i64, i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i8, i8, i8, i8, i64 }

@DW_CFA_advance_loc = common dso_local global i8 0, align 1
@DW_CFA_offset = common dso_local global i8 0, align 1
@DW_CFA_restore = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [48 x i8] c"Warning, DW_CFA_GNU_args_size is unimplemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"WTF? Trylevel of 20 exceeded...\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Ooops, end of SEH with trylevel at 0!\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Found unknow PSEH code 0x%lx\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"unknown instruction 0x%x at 0x%p\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"@%p: code=%x, Loc=%lx, offset=%lx, reg=0x%lx:%s\0A\00", align 1
@g_ehframep = common dso_local global i64 0, align 8
@regs = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DwExecIntruction(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 0, i32* %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %5, align 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i8 %19, i8* %21, align 8
  store i64 1, i64* %6, align 8
  %22 = load i8, i8* %5, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 192
  %25 = load i8, i8* @DW_CFA_advance_loc, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %2
  %29 = load i8, i8* @DW_CFA_advance_loc, align 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  store i8 %29, i8* %31, align 8
  %32 = load i8, i8* %5, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 63
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 4
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = add nsw i32 %38, %34
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  br label %431

41:                                               ; preds = %2
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 192
  %45 = load i8, i8* @DW_CFA_offset, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %41
  %49 = load i8, i8* @DW_CFA_offset, align 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store i8 %49, i8* %51, align 8
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 63
  %55 = trunc i32 %54 to i8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 5
  store i8 %55, i8* %57, align 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 6
  %60 = bitcast i32* %59 to i64*
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = call i64 @DwDecodeUleb128(i64* %60, i8* %62)
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %6, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 8
  store i32 %69, i32* %67, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  store i32 1, i32* %71, align 4
  br label %430

72:                                               ; preds = %41
  %73 = load i8, i8* %5, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 192
  %76 = load i8, i8* @DW_CFA_restore, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load i8, i8* @DW_CFA_restore, align 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i8 %80, i8* %82, align 8
  %83 = load i8, i8* %5, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 63
  %86 = trunc i32 %85 to i8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 5
  store i8 %86, i8* %88, align 2
  br label %429

89:                                               ; preds = %72
  %90 = load i8, i8* %5, align 1
  %91 = zext i8 %90 to i32
  switch i32 %91, label %422 [
    i32 137, label %92
    i32 129, label %93
    i32 144, label %99
    i32 143, label %110
    i32 142, label %121
    i32 136, label %132
    i32 135, label %153
    i32 132, label %174
    i32 128, label %184
    i32 130, label %194
    i32 134, label %204
    i32 133, label %222
    i32 131, label %223
    i32 141, label %224
    i32 139, label %244
    i32 140, label %254
    i32 138, label %265
    i32 145, label %289
    i32 33, label %297
  ]

92:                                               ; preds = %89
  br label %428

93:                                               ; preds = %89
  store i64 9, i64* %6, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  store i8 %96, i8* %98, align 1
  br label %428

99:                                               ; preds = %89
  store i64 2, i64* %6, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 4
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %107, %103
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %105, align 1
  br label %428

110:                                              ; preds = %89
  store i64 3, i64* %6, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %118, %114
  %120 = trunc i32 %119 to i8
  store i8 %120, i8* %116, align 1
  br label %428

121:                                              ; preds = %89
  store i64 5, i64* %6, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 4
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = add nsw i32 %129, %125
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %127, align 1
  br label %428

132:                                              ; preds = %89
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 5
  %135 = bitcast i8* %134 to i64*
  %136 = load i8*, i8** %4, align 8
  %137 = load i64, i64* %6, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = call i64 @DwDecodeUleb128(i64* %135, i8* %138)
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, %139
  store i64 %141, i64* %6, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 6
  %144 = bitcast i32* %143 to i64*
  %145 = load i8*, i8** %4, align 8
  %146 = load i64, i64* %6, align 8
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  %148 = call i64 @DwDecodeUleb128(i64* %144, i8* %147)
  %149 = load i64, i64* %6, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %6, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store i32 1, i32* %152, align 4
  br label %428

153:                                              ; preds = %89
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 5
  %156 = bitcast i8* %155 to i64*
  %157 = load i8*, i8** %4, align 8
  %158 = load i64, i64* %6, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  %160 = call i64 @DwDecodeUleb128(i64* %156, i8* %159)
  %161 = load i64, i64* %6, align 8
  %162 = add i64 %161, %160
  store i64 %162, i64* %6, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 6
  %165 = bitcast i32* %164 to i64*
  %166 = load i8*, i8** %4, align 8
  %167 = load i64, i64* %6, align 8
  %168 = getelementptr inbounds i8, i8* %166, i64 %167
  %169 = call i64 @DwDecodeSleb128(i64* %165, i8* %168)
  %170 = load i64, i64* %6, align 8
  %171 = add i64 %170, %169
  store i64 %171, i64* %6, align 8
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 2
  store i32 1, i32* %173, align 4
  br label %428

174:                                              ; preds = %89
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 5
  %177 = bitcast i8* %176 to i64*
  %178 = load i8*, i8** %4, align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  %181 = call i64 @DwDecodeUleb128(i64* %177, i8* %180)
  %182 = load i64, i64* %6, align 8
  %183 = add i64 %182, %181
  store i64 %183, i64* %6, align 8
  br label %428

184:                                              ; preds = %89
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 5
  %187 = bitcast i8* %186 to i64*
  %188 = load i8*, i8** %4, align 8
  %189 = load i64, i64* %6, align 8
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  %191 = call i64 @DwDecodeUleb128(i64* %187, i8* %190)
  %192 = load i64, i64* %6, align 8
  %193 = add i64 %192, %191
  store i64 %193, i64* %6, align 8
  br label %428

194:                                              ; preds = %89
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 5
  %197 = bitcast i8* %196 to i64*
  %198 = load i8*, i8** %4, align 8
  %199 = load i64, i64* %6, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = call i64 @DwDecodeUleb128(i64* %197, i8* %200)
  %202 = load i64, i64* %6, align 8
  %203 = add i64 %202, %201
  store i64 %203, i64* %6, align 8
  br label %428

204:                                              ; preds = %89
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 5
  %207 = bitcast i8* %206 to i64*
  %208 = load i8*, i8** %4, align 8
  %209 = load i64, i64* %6, align 8
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  %211 = call i64 @DwDecodeUleb128(i64* %207, i8* %210)
  %212 = load i64, i64* %6, align 8
  %213 = add i64 %212, %211
  store i64 %213, i64* %6, align 8
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 7
  %216 = load i8*, i8** %4, align 8
  %217 = load i64, i64* %6, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  %219 = call i64 @DwDecodeUleb128(i64* %215, i8* %218)
  %220 = load i64, i64* %6, align 8
  %221 = add i64 %220, %219
  store i64 %221, i64* %6, align 8
  br label %428

222:                                              ; preds = %89
  br label %428

223:                                              ; preds = %89
  br label %428

224:                                              ; preds = %89
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 5
  %227 = bitcast i8* %226 to i64*
  %228 = load i8*, i8** %4, align 8
  %229 = load i64, i64* %6, align 8
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  %231 = call i64 @DwDecodeUleb128(i64* %227, i8* %230)
  %232 = load i64, i64* %6, align 8
  %233 = add i64 %232, %231
  store i64 %233, i64* %6, align 8
  %234 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i8*, i8** %4, align 8
  %237 = load i64, i64* %6, align 8
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  %239 = call i64 @DwDecodeUleb128(i64* %235, i8* %238)
  %240 = load i64, i64* %6, align 8
  %241 = add i64 %240, %239
  store i64 %241, i64* %6, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 2
  store i32 1, i32* %243, align 4
  br label %428

244:                                              ; preds = %89
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 5
  %247 = bitcast i8* %246 to i64*
  %248 = load i8*, i8** %4, align 8
  %249 = load i64, i64* %6, align 8
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  %251 = call i64 @DwDecodeUleb128(i64* %247, i8* %250)
  %252 = load i64, i64* %6, align 8
  %253 = add i64 %252, %251
  store i64 %253, i64* %6, align 8
  br label %428

254:                                              ; preds = %89
  %255 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i8*, i8** %4, align 8
  %258 = load i64, i64* %6, align 8
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  %260 = call i64 @DwDecodeUleb128(i64* %256, i8* %259)
  %261 = load i64, i64* %6, align 8
  %262 = add i64 %261, %260
  store i64 %262, i64* %6, align 8
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 2
  store i32 1, i32* %264, align 4
  br label %428

265:                                              ; preds = %89
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 5
  %268 = bitcast i8* %267 to i64*
  %269 = load i8*, i8** %4, align 8
  %270 = load i64, i64* %6, align 8
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  %272 = call i64 @DwDecodeUleb128(i64* %268, i8* %271)
  %273 = load i64, i64* %6, align 8
  %274 = add i64 %273, %272
  store i64 %274, i64* %6, align 8
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 0
  %277 = load i8*, i8** %4, align 8
  %278 = load i64, i64* %6, align 8
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  %280 = call i64 @DwDecodeSleb128(i64* %276, i8* %279)
  %281 = load i64, i64* %6, align 8
  %282 = add i64 %281, %280
  store i64 %282, i64* %6, align 8
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = mul i64 %285, 8
  store i64 %286, i64* %284, align 8
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 2
  store i32 1, i32* %288, align 4
  br label %428

289:                                              ; preds = %89
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %291 = load i8*, i8** %4, align 8
  %292 = load i64, i64* %6, align 8
  %293 = getelementptr inbounds i8, i8* %291, i64 %292
  %294 = call i64 @DwDecodeUleb128(i64* %8, i8* %293)
  %295 = load i64, i64* %6, align 8
  %296 = add i64 %295, %294
  store i64 %296, i64* %6, align 8
  br label %428

297:                                              ; preds = %89
  %298 = load i8*, i8** %4, align 8
  %299 = load i64, i64* %6, align 8
  %300 = getelementptr inbounds i8, i8* %298, i64 %299
  %301 = call i64 @DwDecodeUleb128(i64* %9, i8* %300)
  %302 = load i64, i64* %6, align 8
  %303 = add i64 %302, %301
  store i64 %303, i64* %6, align 8
  %304 = load i64, i64* %9, align 8
  switch i64 %304, label %417 [
    i64 1, label %305
    i64 2, label %333
    i64 3, label %349
    i64 4, label %365
    i64 5, label %397
    i64 6, label %415
    i64 7, label %416
  ]

305:                                              ; preds = %297
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 8
  %308 = load i32, i32* %307, align 8
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %307, align 8
  %310 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 8
  %312 = load i32, i32* %311, align 8
  %313 = icmp sge i32 %312, 20
  br i1 %313, label %314, label %317

314:                                              ; preds = %305
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %316 = call i32 @exit(i32 1) #3
  unreachable

317:                                              ; preds = %305
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 4
  %320 = load i8, i8* %319, align 1
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 10
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %322, align 8
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 8
  %326 = load i32, i32* %325, align 8
  %327 = sub nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 0
  store i8 %320, i8* %330, align 8
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 1
  store i32 1, i32* %332, align 8
  br label %421

333:                                              ; preds = %297
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 4
  %336 = load i8, i8* %335, align 1
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i32 0, i32 10
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %338, align 8
  %340 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 8
  %342 = load i32, i32* %341, align 8
  %343 = sub nsw i32 %342, 1
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 1
  store i8 %336, i8* %346, align 1
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 1
  store i32 2, i32* %348, align 8
  br label %421

349:                                              ; preds = %297
  %350 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 4
  %352 = load i8, i8* %351, align 1
  %353 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 10
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %354, align 8
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 8
  %358 = load i32, i32* %357, align 8
  %359 = sub nsw i32 %358, 1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 2
  store i8 %352, i8* %362, align 2
  %363 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 1
  store i32 3, i32* %364, align 8
  br label %421

365:                                              ; preds = %297
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %366, i32 0, i32 8
  %368 = load i32, i32* %367, align 8
  %369 = icmp eq i32 %368, 20
  br i1 %369, label %370, label %373

370:                                              ; preds = %365
  %371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %372 = call i32 @exit(i32 1) #3
  unreachable

373:                                              ; preds = %365
  %374 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %374, i32 0, i32 4
  %376 = load i8, i8* %375, align 1
  %377 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %378 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %377, i32 0, i32 10
  %379 = load %struct.TYPE_5__*, %struct.TYPE_5__** %378, align 8
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 8
  %382 = load i32, i32* %381, align 8
  %383 = sub nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %379, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 3
  store i8 %376, i8* %386, align 1
  %387 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %387, i32 0, i32 8
  %389 = load i32, i32* %388, align 8
  %390 = add nsw i32 %389, -1
  store i32 %390, i32* %388, align 8
  %391 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %391, i32 0, i32 11
  %393 = load i32, i32* %392, align 8
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %392, align 8
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 1
  store i32 0, i32* %396, align 8
  br label %421

397:                                              ; preds = %297
  %398 = load i8*, i8** %4, align 8
  %399 = load i64, i64* %6, align 8
  %400 = getelementptr inbounds i8, i8* %398, i64 %399
  %401 = call i64 @DwDecodeUleb128(i64* %10, i8* %400)
  %402 = load i64, i64* %6, align 8
  %403 = add i64 %402, %401
  store i64 %403, i64* %6, align 8
  %404 = load i64, i64* %10, align 8
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i32 0, i32 10
  %407 = load %struct.TYPE_5__*, %struct.TYPE_5__** %406, align 8
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 8
  %410 = load i32, i32* %409, align 8
  %411 = sub nsw i32 %410, 1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %407, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 4
  store i64 %404, i64* %414, align 8
  br label %421

415:                                              ; preds = %297
  br label %421

416:                                              ; preds = %297
  br label %421

417:                                              ; preds = %297
  %418 = load i64, i64* %9, align 8
  %419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %418)
  %420 = call i32 @exit(i32 1) #3
  unreachable

421:                                              ; preds = %416, %415, %397, %373, %349, %333, %317
  br label %428

422:                                              ; preds = %89
  %423 = load i32, i32* @stderr, align 4
  %424 = load i8, i8* %5, align 1
  %425 = load i8*, i8** %4, align 8
  %426 = call i32 @fprintf(i32 %423, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i8 zeroext %424, i8* %425)
  %427 = call i32 @exit(i32 1) #3
  unreachable

428:                                              ; preds = %421, %289, %265, %254, %244, %224, %223, %222, %204, %194, %184, %174, %153, %132, %121, %110, %99, %93, %92
  br label %429

429:                                              ; preds = %428, %79
  br label %430

430:                                              ; preds = %429, %48
  br label %431

431:                                              ; preds = %430, %28
  %432 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* %7, align 8
  %436 = sub i64 %434, %435
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 9
  store i64 %436, i64* %438, align 8
  %439 = load i8*, i8** %4, align 8
  %440 = ptrtoint i8* %439 to i64
  %441 = load i64, i64* @g_ehframep, align 8
  %442 = sub nsw i64 %440, %441
  %443 = inttoptr i64 %442 to i8*
  %444 = load i8, i8* %5, align 1
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 4
  %447 = load i8, i8* %446, align 1
  %448 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %448, i32 0, i32 6
  %450 = load i32, i32* %449, align 4
  %451 = sext i32 %450 to i64
  %452 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %452, i32 0, i32 5
  %454 = load i8, i8* %453, align 2
  %455 = zext i8 %454 to i64
  %456 = load %struct.TYPE_7__*, %struct.TYPE_7__** @regs, align 8
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 5
  %459 = load i8, i8* %458, align 2
  %460 = zext i8 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @DPRINT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i8* %443, i8 zeroext %444, i8 zeroext %447, i64 %451, i64 %455, i32 %463)
  %465 = load i64, i64* %6, align 8
  ret i64 %465
}

declare dso_local i64 @DwDecodeUleb128(i64*, i8*) #1

declare dso_local i64 @DwDecodeSleb128(i64*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8 zeroext, i8*) #1

declare dso_local i32 @DPRINT(i8*, i8*, i8 zeroext, i8 zeroext, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
