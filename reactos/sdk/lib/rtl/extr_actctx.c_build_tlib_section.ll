; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_tlib_section.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_tlib_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.assembly* }
%struct.assembly = type { i32, %struct.dll_redirect* }
%struct.dll_redirect = type { i64*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.entity* }
%struct.entity = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64*, i32, i32, i32, i32 }
%struct.guidsection_header = type { i32, i32, i32, i32 }
%struct.tlibredirect_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.guid_index = type { i32, i32, i32, i32 }

@ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION = common dso_local global i64 0, align 8
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@GUIDSECTION_MAGIC = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.guidsection_header**)* @build_tlib_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_tlib_section(%struct.TYPE_9__* %0, %struct.guidsection_header** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.guidsection_header**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.guidsection_header*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tlibredirect_data*, align 8
  %16 = alloca %struct.guid_index*, align 8
  %17 = alloca %struct.assembly*, align 8
  %18 = alloca %struct.dll_redirect*, align 8
  %19 = alloca %struct.entity*, align 8
  %20 = alloca %struct.assembly*, align 8
  %21 = alloca %struct.dll_redirect*, align 8
  %22 = alloca %struct.entity*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.guidsection_header** %1, %struct.guidsection_header*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %126, %2
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %129

33:                                               ; preds = %27
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load %struct.assembly*, %struct.assembly** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.assembly, %struct.assembly* %36, i64 %38
  store %struct.assembly* %39, %struct.assembly** %17, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %122, %33
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.assembly*, %struct.assembly** %17, align 8
  %43 = getelementptr inbounds %struct.assembly, %struct.assembly* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %125

46:                                               ; preds = %40
  %47 = load %struct.assembly*, %struct.assembly** %17, align 8
  %48 = getelementptr inbounds %struct.assembly, %struct.assembly* %47, i32 0, i32 1
  %49 = load %struct.dll_redirect*, %struct.dll_redirect** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %49, i64 %51
  store %struct.dll_redirect* %52, %struct.dll_redirect** %18, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %118, %46
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.dll_redirect*, %struct.dll_redirect** %18, align 8
  %56 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %54, %58
  br i1 %59, label %60, label %121

60:                                               ; preds = %53
  %61 = load %struct.dll_redirect*, %struct.dll_redirect** %18, align 8
  %62 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load %struct.entity*, %struct.entity** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.entity, %struct.entity* %64, i64 %66
  store %struct.entity* %67, %struct.entity** %19, align 8
  %68 = load %struct.entity*, %struct.entity** %19, align 8
  %69 = getelementptr inbounds %struct.entity, %struct.entity* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %117

73:                                               ; preds = %60
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = add i64 %75, 16
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = add i64 %79, 48
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %9, align 4
  %82 = load %struct.entity*, %struct.entity** %19, align 8
  %83 = getelementptr inbounds %struct.entity, %struct.entity* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %73
  %90 = load %struct.entity*, %struct.entity** %19, align 8
  %91 = getelementptr inbounds %struct.entity, %struct.entity* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 @strlenW(i64* %94)
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 8
  %99 = trunc i64 %98 to i32
  %100 = call i32 @aligned_string_len(i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %89, %73
  %104 = load %struct.dll_redirect*, %struct.dll_redirect** %18, align 8
  %105 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = call i32 @strlenW(i64* %106)
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 8
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = add i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %103, %60
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %8, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %53

121:                                              ; preds = %53
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %40

125:                                              ; preds = %40
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %27

129:                                              ; preds = %27
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @aligned_string_len(i32 %130)
  %132 = load i32, i32* %9, align 4
  %133 = add i32 %132, %131
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = zext i32 %134 to i64
  %136 = add i64 %135, 16
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %9, align 4
  %138 = call i32 (...) @RtlGetProcessHeap()
  %139 = load i32, i32* %9, align 4
  %140 = call %struct.guidsection_header* @RtlAllocateHeap(i32 %138, i32 0, i32 %139)
  store %struct.guidsection_header* %140, %struct.guidsection_header** %12, align 8
  %141 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %142 = icmp ne %struct.guidsection_header* %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %129
  %144 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %144, i32* %3, align 4
  br label %416

145:                                              ; preds = %129
  %146 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %147 = call i32 @memset(%struct.guidsection_header* %146, i32 0, i32 16)
  %148 = load i32, i32* @GUIDSECTION_MAGIC, align 4
  %149 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %150 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %152 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %151, i32 0, i32 0
  store i32 16, i32* %152, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %155 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @aligned_string_len(i32 %156)
  %158 = sext i32 %157 to i64
  %159 = add i64 16, %158
  %160 = trunc i64 %159 to i32
  %161 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %162 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %164 = bitcast %struct.guidsection_header* %163 to i32*
  %165 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %166 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = bitcast i32* %169 to %struct.guid_index*
  store %struct.guid_index* %170, %struct.guid_index** %16, align 8
  store i32 16, i32* %13, align 4
  %171 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %172 = getelementptr inbounds %struct.guidsection_header, %struct.guidsection_header* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = load i32, i32* %10, align 4
  %176 = zext i32 %175 to i64
  %177 = mul i64 %176, 16
  %178 = add i64 %174, %177
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %180

180:                                              ; preds = %409, %145
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ult i32 %181, %184
  br i1 %185, label %186, label %412

186:                                              ; preds = %180
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i32 0, i32 1
  %189 = load %struct.assembly*, %struct.assembly** %188, align 8
  %190 = load i32, i32* %6, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.assembly, %struct.assembly* %189, i64 %191
  store %struct.assembly* %192, %struct.assembly** %20, align 8
  store i32 0, i32* %7, align 4
  br label %193

193:                                              ; preds = %405, %186
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.assembly*, %struct.assembly** %20, align 8
  %196 = getelementptr inbounds %struct.assembly, %struct.assembly* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %408

199:                                              ; preds = %193
  %200 = load %struct.assembly*, %struct.assembly** %20, align 8
  %201 = getelementptr inbounds %struct.assembly, %struct.assembly* %200, i32 0, i32 1
  %202 = load %struct.dll_redirect*, %struct.dll_redirect** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %202, i64 %204
  store %struct.dll_redirect* %205, %struct.dll_redirect** %21, align 8
  store i32 0, i32* %8, align 4
  br label %206

206:                                              ; preds = %401, %199
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.dll_redirect*, %struct.dll_redirect** %21, align 8
  %209 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = icmp ult i32 %207, %211
  br i1 %212, label %213, label %404

213:                                              ; preds = %206
  %214 = load %struct.dll_redirect*, %struct.dll_redirect** %21, align 8
  %215 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load %struct.entity*, %struct.entity** %216, align 8
  %218 = load i32, i32* %8, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds %struct.entity, %struct.entity* %217, i64 %219
  store %struct.entity* %220, %struct.entity** %22, align 8
  %221 = load %struct.entity*, %struct.entity** %22, align 8
  %222 = getelementptr inbounds %struct.entity, %struct.entity* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @ACTIVATION_CONTEXT_SECTION_COM_TYPE_LIBRARY_REDIRECTION, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %400

226:                                              ; preds = %213
  %227 = load %struct.entity*, %struct.entity** %22, align 8
  %228 = getelementptr inbounds %struct.entity, %struct.entity* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i64*, i64** %230, align 8
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %244

234:                                              ; preds = %226
  %235 = load %struct.entity*, %struct.entity** %22, align 8
  %236 = getelementptr inbounds %struct.entity, %struct.entity* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i64*, i64** %238, align 8
  %240 = call i32 @strlenW(i64* %239)
  %241 = sext i32 %240 to i64
  %242 = mul i64 %241, 8
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %24, align 4
  br label %245

244:                                              ; preds = %226
  store i32 0, i32* %24, align 4
  br label %245

245:                                              ; preds = %244, %234
  %246 = load %struct.dll_redirect*, %struct.dll_redirect** %21, align 8
  %247 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %246, i32 0, i32 0
  %248 = load i64*, i64** %247, align 8
  %249 = call i32 @strlenW(i64* %248)
  %250 = sext i32 %249 to i64
  %251 = mul i64 %250, 8
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %23, align 4
  %253 = load %struct.entity*, %struct.entity** %22, align 8
  %254 = getelementptr inbounds %struct.entity, %struct.entity* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @RtlInitUnicodeString(i32* %25, i32 %257)
  %259 = load %struct.guid_index*, %struct.guid_index** %16, align 8
  %260 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %259, i32 0, i32 3
  %261 = call i32 @RtlGUIDFromString(i32* %25, i32* %260)
  %262 = load i32, i32* %14, align 4
  %263 = load %struct.guid_index*, %struct.guid_index** %16, align 8
  %264 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* %24, align 4
  %266 = call i32 @aligned_string_len(i32 %265)
  %267 = sext i32 %266 to i64
  %268 = add i64 48, %267
  %269 = trunc i64 %268 to i32
  %270 = load %struct.guid_index*, %struct.guid_index** %16, align 8
  %271 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* %6, align 4
  %273 = add i32 %272, 1
  %274 = load %struct.guid_index*, %struct.guid_index** %16, align 8
  %275 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 4
  %276 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %277 = bitcast %struct.guidsection_header* %276 to i32*
  %278 = load %struct.guid_index*, %struct.guid_index** %16, align 8
  %279 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %277, i64 %281
  %283 = bitcast i32* %282 to %struct.tlibredirect_data*
  store %struct.tlibredirect_data* %283, %struct.tlibredirect_data** %15, align 8
  %284 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %285 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %284, i32 0, i32 0
  store i32 48, i32* %285, align 8
  %286 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %287 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %286, i32 0, i32 9
  store i64 0, i64* %287, align 8
  %288 = load i32, i32* %23, align 4
  %289 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %290 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  %291 = load i32, i32* %13, align 4
  %292 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %293 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %292, i32 0, i32 2
  store i32 %291, i32* %293, align 8
  %294 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %295 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %294, i32 0, i32 8
  store i64 0, i64* %295, align 8
  %296 = load %struct.entity*, %struct.entity** %22, align 8
  %297 = getelementptr inbounds %struct.entity, %struct.entity* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %302 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %301, i32 0, i32 7
  store i32 %300, i32* %302, align 4
  %303 = load i32, i32* %24, align 4
  %304 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %305 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %304, i32 0, i32 3
  store i32 %303, i32* %305, align 4
  %306 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %307 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %306, i32 0, i32 4
  store i32 48, i32* %307, align 8
  %308 = load %struct.entity*, %struct.entity** %22, align 8
  %309 = getelementptr inbounds %struct.entity, %struct.entity* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %314 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %313, i32 0, i32 6
  store i32 %312, i32* %314, align 8
  %315 = load %struct.entity*, %struct.entity** %22, align 8
  %316 = getelementptr inbounds %struct.entity, %struct.entity* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %321 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %320, i32 0, i32 5
  store i32 %319, i32* %321, align 4
  %322 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %323 = bitcast %struct.guidsection_header* %322 to i32*
  %324 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %325 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %323, i64 %327
  %329 = bitcast i32* %328 to i64*
  store i64* %329, i64** %26, align 8
  %330 = load i64*, i64** %26, align 8
  %331 = load %struct.dll_redirect*, %struct.dll_redirect** %21, align 8
  %332 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %331, i32 0, i32 0
  %333 = load i64*, i64** %332, align 8
  %334 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %335 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = call i32 @memcpy(i64* %330, i64* %333, i32 %336)
  %338 = load i64*, i64** %26, align 8
  %339 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %340 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = udiv i64 %342, 8
  %344 = getelementptr inbounds i64, i64* %338, i64 %343
  store i64 0, i64* %344, align 8
  %345 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %346 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %375

349:                                              ; preds = %245
  %350 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %351 = bitcast %struct.tlibredirect_data* %350 to i32*
  %352 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %353 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32, i32* %351, i64 %355
  %357 = bitcast i32* %356 to i64*
  store i64* %357, i64** %26, align 8
  %358 = load i64*, i64** %26, align 8
  %359 = load %struct.entity*, %struct.entity** %22, align 8
  %360 = getelementptr inbounds %struct.entity, %struct.entity* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i32 0, i32 0
  %363 = load i64*, i64** %362, align 8
  %364 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %365 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = call i32 @memcpy(i64* %358, i64* %363, i32 %366)
  %368 = load i64*, i64** %26, align 8
  %369 = load %struct.tlibredirect_data*, %struct.tlibredirect_data** %15, align 8
  %370 = getelementptr inbounds %struct.tlibredirect_data, %struct.tlibredirect_data* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = udiv i64 %372, 8
  %374 = getelementptr inbounds i64, i64* %368, i64 %373
  store i64 0, i64* %374, align 8
  br label %375

375:                                              ; preds = %349, %245
  %376 = load i32, i32* %14, align 4
  %377 = sext i32 %376 to i64
  %378 = add i64 %377, 48
  %379 = trunc i64 %378 to i32
  store i32 %379, i32* %14, align 4
  %380 = load i32, i32* %24, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %390

382:                                              ; preds = %375
  %383 = load i32, i32* %24, align 4
  %384 = sext i32 %383 to i64
  %385 = add i64 %384, 8
  %386 = trunc i64 %385 to i32
  %387 = call i32 @aligned_string_len(i32 %386)
  %388 = load i32, i32* %14, align 4
  %389 = add nsw i32 %388, %387
  store i32 %389, i32* %14, align 4
  br label %390

390:                                              ; preds = %382, %375
  %391 = load i32, i32* %23, align 4
  %392 = sext i32 %391 to i64
  %393 = add i64 %392, 8
  %394 = load i32, i32* %13, align 4
  %395 = sext i32 %394 to i64
  %396 = add i64 %395, %393
  %397 = trunc i64 %396 to i32
  store i32 %397, i32* %13, align 4
  %398 = load %struct.guid_index*, %struct.guid_index** %16, align 8
  %399 = getelementptr inbounds %struct.guid_index, %struct.guid_index* %398, i32 1
  store %struct.guid_index* %399, %struct.guid_index** %16, align 8
  br label %400

400:                                              ; preds = %390, %213
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %8, align 4
  %403 = add i32 %402, 1
  store i32 %403, i32* %8, align 4
  br label %206

404:                                              ; preds = %206
  br label %405

405:                                              ; preds = %404
  %406 = load i32, i32* %7, align 4
  %407 = add i32 %406, 1
  store i32 %407, i32* %7, align 4
  br label %193

408:                                              ; preds = %193
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %6, align 4
  %411 = add i32 %410, 1
  store i32 %411, i32* %6, align 4
  br label %180

412:                                              ; preds = %180
  %413 = load %struct.guidsection_header*, %struct.guidsection_header** %12, align 8
  %414 = load %struct.guidsection_header**, %struct.guidsection_header*** %5, align 8
  store %struct.guidsection_header* %413, %struct.guidsection_header** %414, align 8
  %415 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %415, i32* %3, align 4
  br label %416

416:                                              ; preds = %412, %143
  %417 = load i32, i32* %3, align 4
  ret i32 %417
}

declare dso_local i32 @aligned_string_len(i32) #1

declare dso_local i32 @strlenW(i64*) #1

declare dso_local %struct.guidsection_header* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @memset(%struct.guidsection_header*, i32, i32) #1

declare dso_local i32 @RtlInitUnicodeString(i32*, i32) #1

declare dso_local i32 @RtlGUIDFromString(i32*, i32*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
