; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_clr_surrogate_section.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_clr_surrogate_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.assembly* }
%struct.assembly = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.entity* }
%struct.entity = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.guidsection_header = type { i32, i32, i32, i32 }
%struct.clrsurrogate_data = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.guid_index = type { i32, i32, i32, i64 }

@ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES = common dso_local global i64 0, align 8
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@GUIDSECTION_MAGIC = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.guidsection_header**)* @build_clr_surrogate_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_clr_surrogate_section(%struct.TYPE_9__* %0, %struct.guidsection_header** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.guidsection_header**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.guidsection_header*, align 8
  %11 = alloca %struct.clrsurrogate_data*, align 8
  %12 = alloca %struct.guid_index*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.assembly*, align 8
  %15 = alloca %struct.entity*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.assembly*, align 8
  %18 = alloca %struct.entity*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.guidsection_header** %1, %struct.guidsection_header*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %101, %2
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %104

29:                                               ; preds = %23
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load %struct.assembly*, %struct.assembly** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.assembly, %struct.assembly* %32, i64 %34
  store %struct.assembly* %35, %struct.assembly** %14, align 8
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %97, %29
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.assembly*, %struct.assembly** %14, align 8
  %39 = getelementptr inbounds %struct.assembly, %struct.assembly* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %37, %41
  br i1 %42, label %43, label %100

43:                                               ; preds = %36
  %44 = load %struct.assembly*, %struct.assembly** %14, align 8
  %45 = getelementptr inbounds %struct.assembly, %struct.assembly* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.entity*, %struct.entity** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.entity, %struct.entity* %47, i64 %49
  store %struct.entity* %50, %struct.entity** %15, align 8
  %51 = load %struct.entity*, %struct.entity** %15, align 8
  %52 = getelementptr inbounds %struct.entity, %struct.entity* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %96

56:                                               ; preds = %43
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = add i64 %58, 56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  %61 = load %struct.entity*, %struct.entity** %15, align 8
  %62 = getelementptr inbounds %struct.entity, %struct.entity* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @strlenW(i64 %65)
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  %68 = load %struct.entity*, %struct.entity** %15, align 8
  %69 = getelementptr inbounds %struct.entity, %struct.entity* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %56
  %75 = load %struct.entity*, %struct.entity** %15, align 8
  %76 = getelementptr inbounds %struct.entity, %struct.entity* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @strlenW(i64 %79)
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %74, %56
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 8
  %88 = trunc i64 %87 to i32
  %89 = call i64 @aligned_string_len(i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = add nsw i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %84, %43
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %36

100:                                              ; preds = %36
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %23

104:                                              ; preds = %23
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = add i64 %106, 16
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %8, align 4
  %109 = call i32 (...) @RtlGetProcessHeap()
  %110 = load i32, i32* %8, align 4
  %111 = call %struct.guidsection_header* @RtlAllocateHeap(i32 %109, i32 0, i32 %110)
  store %struct.guidsection_header* %111, %struct.guidsection_header** %10, align 8
  %112 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %113 = icmp ne %struct.guidsection_header* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %104
  %115 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %115, i32* %3, align 4
  br label %367

116:                                              ; preds = %104
  %117 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %118 = call i32 @memset(%struct.guidsection_header* %117, i32 0, i32 16)
  %119 = load i32, i32* @GUIDSECTION_MAGIC, align 4
  %120 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %121 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %120, i32 0, i32 3
  store i32 %119, i32* %121, align 4
  %122 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %123 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %122, i32 0, i32 0
  store i32 16, i32* %123, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %126 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %128 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %127, i32 0, i32 2
  store i32 16, i32* %128, align 4
  %129 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %130 = bitcast %struct.guidsection_header* %129 to i32*
  %131 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %132 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %130, i64 %134
  %136 = bitcast i32* %135 to %struct.guid_index*
  store %struct.guid_index* %136, %struct.guid_index** %12, align 8
  %137 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %138 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = load i32, i32* %9, align 4
  %142 = zext i32 %141 to i64
  %143 = mul i64 %142, 24
  %144 = add i64 %140, %143
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %360, %116
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ult i32 %147, %150
  br i1 %151, label %152, label %363

152:                                              ; preds = %146
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load %struct.assembly*, %struct.assembly** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.assembly, %struct.assembly* %155, i64 %157
  store %struct.assembly* %158, %struct.assembly** %17, align 8
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %356, %152
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.assembly*, %struct.assembly** %17, align 8
  %162 = getelementptr inbounds %struct.assembly, %struct.assembly* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp ult i32 %160, %164
  br i1 %165, label %166, label %359

166:                                              ; preds = %159
  %167 = load %struct.assembly*, %struct.assembly** %17, align 8
  %168 = getelementptr inbounds %struct.assembly, %struct.assembly* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load %struct.entity*, %struct.entity** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.entity, %struct.entity* %170, i64 %172
  store %struct.entity* %173, %struct.entity** %18, align 8
  %174 = load %struct.entity*, %struct.entity** %18, align 8
  %175 = getelementptr inbounds %struct.entity, %struct.entity* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @ACTIVATION_CONTEXT_SECTION_CLR_SURROGATES, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %355

179:                                              ; preds = %166
  %180 = load %struct.entity*, %struct.entity** %18, align 8
  %181 = getelementptr inbounds %struct.entity, %struct.entity* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %179
  %187 = load %struct.entity*, %struct.entity** %18, align 8
  %188 = getelementptr inbounds %struct.entity, %struct.entity* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @strlenW(i64 %191)
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %19, align 4
  br label %197

196:                                              ; preds = %179
  store i32 0, i32* %19, align 4
  br label %197

197:                                              ; preds = %196, %186
  %198 = load %struct.entity*, %struct.entity** %18, align 8
  %199 = getelementptr inbounds %struct.entity, %struct.entity* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @strlenW(i64 %202)
  %204 = sext i32 %203 to i64
  %205 = mul i64 %204, 8
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %20, align 4
  %207 = load %struct.entity*, %struct.entity** %18, align 8
  %208 = getelementptr inbounds %struct.entity, %struct.entity* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @RtlInitUnicodeString(i32* %21, i32 %211)
  %213 = load %struct.guid_index*, %struct.guid_index** %12, align 8
  %214 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %213, i32 0, i32 2
  %215 = call i32 @RtlGUIDFromString(i32* %21, i32* %214)
  %216 = load i32, i32* %13, align 4
  %217 = load %struct.guid_index*, %struct.guid_index** %12, align 8
  %218 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %20, align 4
  %220 = sext i32 %219 to i64
  %221 = add i64 %220, 8
  %222 = load i32, i32* %19, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %197
  %225 = load i32, i32* %19, align 4
  %226 = sext i32 %225 to i64
  %227 = add i64 %226, 8
  br label %229

228:                                              ; preds = %197
  br label %229

229:                                              ; preds = %228, %224
  %230 = phi i64 [ %227, %224 ], [ 0, %228 ]
  %231 = add i64 %221, %230
  %232 = trunc i64 %231 to i32
  %233 = call i64 @aligned_string_len(i32 %232)
  %234 = add i64 32, %233
  %235 = load %struct.guid_index*, %struct.guid_index** %12, align 8
  %236 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %235, i32 0, i32 3
  store i64 %234, i64* %236, align 8
  %237 = load i32, i32* %6, align 4
  %238 = add i32 %237, 1
  %239 = load %struct.guid_index*, %struct.guid_index** %12, align 8
  %240 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %242 = bitcast %struct.guidsection_header* %241 to i32*
  %243 = load %struct.guid_index*, %struct.guid_index** %12, align 8
  %244 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  %248 = bitcast i32* %247 to %struct.clrsurrogate_data*
  store %struct.clrsurrogate_data* %248, %struct.clrsurrogate_data** %11, align 8
  %249 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %250 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %249, i32 0, i32 0
  store i32 32, i32* %250, align 8
  %251 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %252 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %251, i32 0, i32 6
  store i64 0, i64* %252, align 8
  %253 = load %struct.guid_index*, %struct.guid_index** %12, align 8
  %254 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %257 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %256, i32 0, i32 5
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* %19, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %229
  %261 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %262 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  br label %265

264:                                              ; preds = %229
  br label %265

265:                                              ; preds = %264, %260
  %266 = phi i32 [ %263, %260 ], [ 0, %264 ]
  %267 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %268 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* %19, align 4
  %270 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %271 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  %272 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %273 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %19, align 4
  %276 = add nsw i32 %274, %275
  %277 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %278 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %277, i32 0, i32 3
  store i32 %276, i32* %278, align 4
  %279 = load i32, i32* %19, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %288

281:                                              ; preds = %265
  %282 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %283 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = add i64 %285, 8
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %283, align 4
  br label %288

288:                                              ; preds = %281, %265
  %289 = load i32, i32* %20, align 4
  %290 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %291 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %290, i32 0, i32 4
  store i32 %289, i32* %291, align 8
  %292 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %293 = bitcast %struct.clrsurrogate_data* %292 to i32*
  %294 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %295 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %293, i64 %297
  %299 = bitcast i32* %298 to i64*
  store i64* %299, i64** %22, align 8
  %300 = load i64*, i64** %22, align 8
  %301 = load %struct.entity*, %struct.entity** %18, align 8
  %302 = getelementptr inbounds %struct.entity, %struct.entity* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %307 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @memcpy(i64* %300, i64 %305, i32 %308)
  %310 = load i64*, i64** %22, align 8
  %311 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %312 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 8
  %314 = sext i32 %313 to i64
  %315 = udiv i64 %314, 8
  %316 = getelementptr inbounds i64, i64* %310, i64 %315
  store i64 0, i64* %316, align 8
  %317 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %318 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %347

321:                                              ; preds = %288
  %322 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %323 = bitcast %struct.clrsurrogate_data* %322 to i32*
  %324 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %325 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %323, i64 %327
  %329 = bitcast i32* %328 to i64*
  store i64* %329, i64** %22, align 8
  %330 = load i64*, i64** %22, align 8
  %331 = load %struct.entity*, %struct.entity** %18, align 8
  %332 = getelementptr inbounds %struct.entity, %struct.entity* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %337 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %336, i32 0, i32 2
  %338 = load i32, i32* %337, align 8
  %339 = call i32 @memcpy(i64* %330, i64 %335, i32 %338)
  %340 = load i64*, i64** %22, align 8
  %341 = load %struct.clrsurrogate_data*, %struct.clrsurrogate_data** %11, align 8
  %342 = getelementptr inbounds %struct.clrsurrogate_data, %struct.clrsurrogate_data* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = udiv i64 %344, 8
  %346 = getelementptr inbounds i64, i64* %340, i64 %345
  store i64 0, i64* %346, align 8
  br label %347

347:                                              ; preds = %321, %288
  %348 = load %struct.guid_index*, %struct.guid_index** %12, align 8
  %349 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* %13, align 4
  %352 = add nsw i32 %351, %350
  store i32 %352, i32* %13, align 4
  %353 = load %struct.guid_index*, %struct.guid_index** %12, align 8
  %354 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %353, i32 1
  store %struct.guid_index* %354, %struct.guid_index** %12, align 8
  br label %355

355:                                              ; preds = %347, %166
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %7, align 4
  %358 = add i32 %357, 1
  store i32 %358, i32* %7, align 4
  br label %159

359:                                              ; preds = %159
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %6, align 4
  %362 = add i32 %361, 1
  store i32 %362, i32* %6, align 4
  br label %146

363:                                              ; preds = %146
  %364 = load %struct.guidsection_header*, %struct.guidsection_header** %10, align 8
  %365 = load %struct.guidsection_header**, %struct.guidsection_header*** %5, align 8
  store %struct.guidsection_header* %364, %struct.guidsection_header** %365, align 8
  %366 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %366, i32* %3, align 4
  br label %367

367:                                              ; preds = %363, %114
  %368 = load i32, i32* %3, align 4
  ret i32 %368
}

declare dso_local i32 @strlenW(i64) #1

declare dso_local i64 @aligned_string_len(i32) #1

declare dso_local %struct.guidsection_header* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @memset(%struct.guidsection_header*, i32, i32) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @RtlGUIDFromString(i32*, i32*) #1

declare dso_local i32 @memcpy(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
