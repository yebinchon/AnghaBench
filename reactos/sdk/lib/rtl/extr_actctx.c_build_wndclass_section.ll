; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_wndclass_section.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_wndclass_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.assembly* }
%struct.assembly = type { i32, %struct.dll_redirect* }
%struct.dll_redirect = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.entity* }
%struct.entity = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.strsection_header = type { i32, i32, i32, i32 }
%struct.wndclass_redirect_data = type { i32, i32, i32, i32, i32, i64 }
%struct.string_index = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i8*, i32, i32 }

@ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION = common dso_local global i64 0, align 8
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@STRSECTION_MAGIC = common dso_local global i32 0, align 4
@build_wndclass_section.exclW = internal constant [2 x i8] c"!\00", align 1
@TRUE = common dso_local global i32 0, align 4
@HASH_STRING_ALGORITHM_X65599 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.strsection_header**)* @build_wndclass_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_wndclass_section(%struct.TYPE_12__* %0, %struct.strsection_header** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.strsection_header**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wndclass_redirect_data*, align 8
  %12 = alloca %struct.strsection_header*, align 8
  %13 = alloca %struct.string_index*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.assembly*, align 8
  %16 = alloca %struct.dll_redirect*, align 8
  %17 = alloca %struct.entity*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.assembly*, align 8
  %21 = alloca %struct.dll_redirect*, align 8
  %22 = alloca %struct.entity*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_11__, align 8
  %26 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.strsection_header** %1, %struct.strsection_header*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %136, %2
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %139

33:                                               ; preds = %27
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load %struct.assembly*, %struct.assembly** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.assembly, %struct.assembly* %36, i64 %38
  store %struct.assembly* %39, %struct.assembly** %15, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %132, %33
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.assembly*, %struct.assembly** %15, align 8
  %43 = getelementptr inbounds %struct.assembly, %struct.assembly* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %46, label %135

46:                                               ; preds = %40
  %47 = load %struct.assembly*, %struct.assembly** %15, align 8
  %48 = getelementptr inbounds %struct.assembly, %struct.assembly* %47, i32 0, i32 1
  %49 = load %struct.dll_redirect*, %struct.dll_redirect** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %49, i64 %51
  store %struct.dll_redirect* %52, %struct.dll_redirect** %16, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %128, %46
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.dll_redirect*, %struct.dll_redirect** %16, align 8
  %56 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ult i32 %54, %58
  br i1 %59, label %60, label %131

60:                                               ; preds = %53
  %61 = load %struct.dll_redirect*, %struct.dll_redirect** %16, align 8
  %62 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load %struct.entity*, %struct.entity** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.entity, %struct.entity* %64, i64 %66
  store %struct.entity* %67, %struct.entity** %17, align 8
  %68 = load %struct.entity*, %struct.entity** %17, align 8
  %69 = getelementptr inbounds %struct.entity, %struct.entity* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %127

73:                                               ; preds = %60
  %74 = load %struct.entity*, %struct.entity** %17, align 8
  %75 = getelementptr inbounds %struct.entity, %struct.entity* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @strlenW(i8* %78)
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = add i64 %82, 24
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = add i64 %86, 32
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %18, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = call i32 @aligned_string_len(i32 %92)
  %94 = load i32, i32* %9, align 4
  %95 = add i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load %struct.entity*, %struct.entity** %17, align 8
  %97 = getelementptr inbounds %struct.entity, %struct.entity* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %73
  %103 = load %struct.assembly*, %struct.assembly** %15, align 8
  %104 = call i32 @get_assembly_version(%struct.assembly* %103, i8* null)
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %104, %105
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %19, align 4
  br label %110

108:                                              ; preds = %73
  %109 = load i32, i32* %18, align 4
  store i32 %109, i32* %19, align 4
  br label %110

110:                                              ; preds = %108, %102
  %111 = load %struct.dll_redirect*, %struct.dll_redirect** %16, align 8
  %112 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @strlenW(i8* %113)
  %115 = add nsw i32 %114, 1
  %116 = load i32, i32* %19, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 1
  %121 = trunc i64 %120 to i32
  %122 = call i32 @aligned_string_len(i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = add i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %110, %60
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %53

131:                                              ; preds = %53
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %7, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %40

135:                                              ; preds = %40
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %6, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %27

139:                                              ; preds = %27
  %140 = load i32, i32* %9, align 4
  %141 = zext i32 %140 to i64
  %142 = add i64 %141, 16
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %9, align 4
  %144 = call i32 (...) @RtlGetProcessHeap()
  %145 = load i32, i32* %9, align 4
  %146 = call %struct.strsection_header* @RtlAllocateHeap(i32 %144, i32 0, i32 %145)
  store %struct.strsection_header* %146, %struct.strsection_header** %12, align 8
  %147 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %148 = icmp ne %struct.strsection_header* %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %139
  %150 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %150, i32* %3, align 4
  br label %480

151:                                              ; preds = %139
  %152 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %153 = call i32 @memset(%struct.strsection_header* %152, i32 0, i32 16)
  %154 = load i32, i32* @STRSECTION_MAGIC, align 4
  %155 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %156 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %155, i32 0, i32 3
  store i32 %154, i32* %156, align 4
  %157 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %158 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %157, i32 0, i32 0
  store i32 16, i32* %158, align 4
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %161 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  %162 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %163 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %162, i32 0, i32 2
  store i32 16, i32* %163, align 4
  %164 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %165 = bitcast %struct.strsection_header* %164 to i32*
  %166 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %167 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  %171 = bitcast i32* %170 to %struct.string_index*
  store %struct.string_index* %171, %struct.string_index** %13, align 8
  %172 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %173 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %177 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = zext i32 %178 to i64
  %180 = mul i64 %179, 24
  %181 = add i64 %175, %180
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %14, align 4
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %473, %151
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ult i32 %184, %187
  br i1 %188, label %189, label %476

189:                                              ; preds = %183
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load %struct.assembly*, %struct.assembly** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.assembly, %struct.assembly* %192, i64 %194
  store %struct.assembly* %195, %struct.assembly** %20, align 8
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %469, %189
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.assembly*, %struct.assembly** %20, align 8
  %199 = getelementptr inbounds %struct.assembly, %struct.assembly* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ult i32 %197, %200
  br i1 %201, label %202, label %472

202:                                              ; preds = %196
  %203 = load %struct.assembly*, %struct.assembly** %20, align 8
  %204 = getelementptr inbounds %struct.assembly, %struct.assembly* %203, i32 0, i32 1
  %205 = load %struct.dll_redirect*, %struct.dll_redirect** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %205, i64 %207
  store %struct.dll_redirect* %208, %struct.dll_redirect** %21, align 8
  store i32 0, i32* %8, align 4
  br label %209

209:                                              ; preds = %465, %202
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.dll_redirect*, %struct.dll_redirect** %21, align 8
  %212 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ult i32 %210, %214
  br i1 %215, label %216, label %468

216:                                              ; preds = %209
  %217 = load %struct.dll_redirect*, %struct.dll_redirect** %21, align 8
  %218 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = load %struct.entity*, %struct.entity** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.entity, %struct.entity* %220, i64 %222
  store %struct.entity* %223, %struct.entity** %22, align 8
  %224 = load %struct.entity*, %struct.entity** %22, align 8
  %225 = getelementptr inbounds %struct.entity, %struct.entity* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @ACTIVATION_CONTEXT_SECTION_WINDOW_CLASS_REDIRECTION, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %464

229:                                              ; preds = %216
  %230 = load %struct.entity*, %struct.entity** %22, align 8
  %231 = getelementptr inbounds %struct.entity, %struct.entity* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i8* %234, i8** %235, align 8
  %236 = load %struct.entity*, %struct.entity** %22, align 8
  %237 = getelementptr inbounds %struct.entity, %struct.entity* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @strlenW(i8* %240)
  %242 = sext i32 %241 to i64
  %243 = mul i64 %242, 1
  %244 = trunc i64 %243 to i32
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  store i32 %244, i32* %245, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = add i64 %248, 1
  %250 = trunc i64 %249 to i32
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  store i32 %250, i32* %251, align 4
  %252 = load i32, i32* @TRUE, align 4
  %253 = load i32, i32* @HASH_STRING_ALGORITHM_X65599, align 4
  %254 = load %struct.string_index*, %struct.string_index** %13, align 8
  %255 = getelementptr inbounds %struct.string_index, %struct.string_index* %254, i32 0, i32 5
  %256 = call i32 @RtlHashUnicodeString(%struct.TYPE_11__* %25, i32 %252, i32 %253, i32* %255)
  %257 = load %struct.entity*, %struct.entity** %22, align 8
  %258 = getelementptr inbounds %struct.entity, %struct.entity* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %229
  %264 = load %struct.assembly*, %struct.assembly** %20, align 8
  %265 = call i32 @get_assembly_version(%struct.assembly* %264, i8* null)
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = mul i64 %267, 1
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = add i64 %268, %271
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %23, align 4
  br label %277

274:                                              ; preds = %229
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  store i32 %276, i32* %23, align 4
  br label %277

277:                                              ; preds = %274, %263
  %278 = load %struct.dll_redirect*, %struct.dll_redirect** %21, align 8
  %279 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @strlenW(i8* %280)
  %282 = sext i32 %281 to i64
  %283 = mul i64 %282, 1
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %24, align 4
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.string_index*, %struct.string_index** %13, align 8
  %287 = getelementptr inbounds %struct.string_index, %struct.string_index* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 4
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.string_index*, %struct.string_index** %13, align 8
  %291 = getelementptr inbounds %struct.string_index, %struct.string_index* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  %292 = load %struct.string_index*, %struct.string_index** %13, align 8
  %293 = getelementptr inbounds %struct.string_index, %struct.string_index* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @aligned_string_len(i32 %296)
  %298 = add nsw i32 %294, %297
  %299 = load %struct.string_index*, %struct.string_index** %13, align 8
  %300 = getelementptr inbounds %struct.string_index, %struct.string_index* %299, i32 0, i32 2
  store i32 %298, i32* %300, align 4
  %301 = load i32, i32* %23, align 4
  %302 = sext i32 %301 to i64
  %303 = add i64 32, %302
  %304 = load i32, i32* %24, align 4
  %305 = sext i32 %304 to i64
  %306 = add i64 %303, %305
  %307 = add i64 %306, 2
  %308 = trunc i64 %307 to i32
  %309 = load %struct.string_index*, %struct.string_index** %13, align 8
  %310 = getelementptr inbounds %struct.string_index, %struct.string_index* %309, i32 0, i32 3
  store i32 %308, i32* %310, align 4
  %311 = load i32, i32* %6, align 4
  %312 = add i32 %311, 1
  %313 = load %struct.string_index*, %struct.string_index** %13, align 8
  %314 = getelementptr inbounds %struct.string_index, %struct.string_index* %313, i32 0, i32 4
  store i32 %312, i32* %314, align 4
  %315 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %316 = bitcast %struct.strsection_header* %315 to i32*
  %317 = load %struct.string_index*, %struct.string_index** %13, align 8
  %318 = getelementptr inbounds %struct.string_index, %struct.string_index* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %316, i64 %320
  %322 = bitcast i32* %321 to %struct.wndclass_redirect_data*
  store %struct.wndclass_redirect_data* %322, %struct.wndclass_redirect_data** %11, align 8
  %323 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %324 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %323, i32 0, i32 0
  store i32 32, i32* %324, align 8
  %325 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %326 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %325, i32 0, i32 5
  store i64 0, i64* %326, align 8
  %327 = load i32, i32* %23, align 4
  %328 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %329 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %328, i32 0, i32 1
  store i32 %327, i32* %329, align 4
  %330 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %331 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %330, i32 0, i32 2
  store i32 32, i32* %331, align 8
  %332 = load i32, i32* %24, align 4
  %333 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %334 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %333, i32 0, i32 3
  store i32 %332, i32* %334, align 4
  %335 = load %struct.string_index*, %struct.string_index** %13, align 8
  %336 = getelementptr inbounds %struct.string_index, %struct.string_index* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %339 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = add nsw i32 %337, %340
  %342 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %343 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %341, %344
  %346 = sext i32 %345 to i64
  %347 = add i64 %346, 1
  %348 = trunc i64 %347 to i32
  %349 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %350 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %349, i32 0, i32 4
  store i32 %348, i32* %350, align 8
  %351 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %352 = bitcast %struct.strsection_header* %351 to i32*
  %353 = load %struct.string_index*, %struct.string_index** %13, align 8
  %354 = getelementptr inbounds %struct.string_index, %struct.string_index* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %352, i64 %356
  %358 = bitcast i32* %357 to i8*
  store i8* %358, i8** %26, align 8
  %359 = load i8*, i8** %26, align 8
  %360 = load %struct.entity*, %struct.entity** %22, align 8
  %361 = getelementptr inbounds %struct.entity, %struct.entity* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 0
  %364 = load i8*, i8** %363, align 8
  %365 = load %struct.string_index*, %struct.string_index** %13, align 8
  %366 = getelementptr inbounds %struct.string_index, %struct.string_index* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @memcpy(i8* %359, i8* %364, i32 %367)
  %369 = load i8*, i8** %26, align 8
  %370 = load %struct.string_index*, %struct.string_index** %13, align 8
  %371 = getelementptr inbounds %struct.string_index, %struct.string_index* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = sext i32 %372 to i64
  %374 = udiv i64 %373, 1
  %375 = getelementptr inbounds i8, i8* %369, i64 %374
  store i8 0, i8* %375, align 1
  %376 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %377 = bitcast %struct.strsection_header* %376 to i32*
  %378 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %379 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %377, i64 %381
  %383 = bitcast i32* %382 to i8*
  store i8* %383, i8** %26, align 8
  %384 = load i8*, i8** %26, align 8
  %385 = load %struct.dll_redirect*, %struct.dll_redirect** %21, align 8
  %386 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %385, i32 0, i32 0
  %387 = load i8*, i8** %386, align 8
  %388 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %389 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 4
  %391 = call i32 @memcpy(i8* %384, i8* %387, i32 %390)
  %392 = load i8*, i8** %26, align 8
  %393 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %394 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %393, i32 0, i32 3
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  %397 = udiv i64 %396, 1
  %398 = getelementptr inbounds i8, i8* %392, i64 %397
  store i8 0, i8* %398, align 1
  %399 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %400 = bitcast %struct.wndclass_redirect_data* %399 to i32*
  %401 = load %struct.wndclass_redirect_data*, %struct.wndclass_redirect_data** %11, align 8
  %402 = getelementptr inbounds %struct.wndclass_redirect_data, %struct.wndclass_redirect_data* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %400, i64 %404
  %406 = bitcast i32* %405 to i8*
  store i8* %406, i8** %26, align 8
  %407 = load %struct.entity*, %struct.entity** %22, align 8
  %408 = getelementptr inbounds %struct.entity, %struct.entity* %407, i32 0, i32 1
  %409 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 1
  %411 = load i64, i64* %410, align 8
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %426

413:                                              ; preds = %277
  %414 = load %struct.assembly*, %struct.assembly** %20, align 8
  %415 = load i8*, i8** %26, align 8
  %416 = call i32 @get_assembly_version(%struct.assembly* %414, i8* %415)
  %417 = load i8*, i8** %26, align 8
  %418 = call i32 @strcatW(i8* %417, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @build_wndclass_section.exclW, i64 0, i64 0))
  %419 = load i8*, i8** %26, align 8
  %420 = load %struct.entity*, %struct.entity** %22, align 8
  %421 = getelementptr inbounds %struct.entity, %struct.entity* %420, i32 0, i32 1
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %422, i32 0, i32 0
  %424 = load i8*, i8** %423, align 8
  %425 = call i32 @strcatW(i8* %419, i8* %424)
  br label %444

426:                                              ; preds = %277
  %427 = load i8*, i8** %26, align 8
  %428 = load %struct.entity*, %struct.entity** %22, align 8
  %429 = getelementptr inbounds %struct.entity, %struct.entity* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 0
  %432 = load i8*, i8** %431, align 8
  %433 = load %struct.string_index*, %struct.string_index** %13, align 8
  %434 = getelementptr inbounds %struct.string_index, %struct.string_index* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @memcpy(i8* %427, i8* %432, i32 %435)
  %437 = load i8*, i8** %26, align 8
  %438 = load %struct.string_index*, %struct.string_index** %13, align 8
  %439 = getelementptr inbounds %struct.string_index, %struct.string_index* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = sext i32 %440 to i64
  %442 = udiv i64 %441, 1
  %443 = getelementptr inbounds i8, i8* %437, i64 %442
  store i8 0, i8* %443, align 1
  br label %444

444:                                              ; preds = %426, %413
  %445 = load i32, i32* %14, align 4
  %446 = sext i32 %445 to i64
  %447 = add i64 %446, 32
  %448 = trunc i64 %447 to i32
  store i32 %448, i32* %14, align 4
  %449 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @aligned_string_len(i32 %450)
  %452 = load i32, i32* %23, align 4
  %453 = load i32, i32* %24, align 4
  %454 = add nsw i32 %452, %453
  %455 = sext i32 %454 to i64
  %456 = add i64 %455, 2
  %457 = trunc i64 %456 to i32
  %458 = call i32 @aligned_string_len(i32 %457)
  %459 = add nsw i32 %451, %458
  %460 = load i32, i32* %14, align 4
  %461 = add nsw i32 %460, %459
  store i32 %461, i32* %14, align 4
  %462 = load %struct.string_index*, %struct.string_index** %13, align 8
  %463 = getelementptr inbounds %struct.string_index, %struct.string_index* %462, i32 1
  store %struct.string_index* %463, %struct.string_index** %13, align 8
  br label %464

464:                                              ; preds = %444, %216
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %8, align 4
  %467 = add i32 %466, 1
  store i32 %467, i32* %8, align 4
  br label %209

468:                                              ; preds = %209
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %7, align 4
  %471 = add i32 %470, 1
  store i32 %471, i32* %7, align 4
  br label %196

472:                                              ; preds = %196
  br label %473

473:                                              ; preds = %472
  %474 = load i32, i32* %6, align 4
  %475 = add i32 %474, 1
  store i32 %475, i32* %6, align 4
  br label %183

476:                                              ; preds = %183
  %477 = load %struct.strsection_header*, %struct.strsection_header** %12, align 8
  %478 = load %struct.strsection_header**, %struct.strsection_header*** %5, align 8
  store %struct.strsection_header* %477, %struct.strsection_header** %478, align 8
  %479 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %479, i32* %3, align 4
  br label %480

480:                                              ; preds = %476, %149
  %481 = load i32, i32* %3, align 4
  ret i32 %481
}

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @aligned_string_len(i32) #1

declare dso_local i32 @get_assembly_version(%struct.assembly*, i8*) #1

declare dso_local %struct.strsection_header* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @memset(%struct.strsection_header*, i32, i32) #1

declare dso_local i32 @RtlHashUnicodeString(%struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
