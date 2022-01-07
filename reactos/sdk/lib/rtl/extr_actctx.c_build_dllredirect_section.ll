; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_dllredirect_section.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_build_dllredirect_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.assembly* }
%struct.assembly = type { i32, %struct.dll_redirect* }
%struct.dll_redirect = type { i32 }
%struct.strsection_header = type { i32, i32, i32, i32 }
%struct.dllredirect_data = type { i32, i32, %struct.strsection_header* }
%struct.string_index = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"actctx %p, num_assemblies %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"assembly %d (%p), dll %d: dll name %S\0A\00", align 1
@STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@STRSECTION_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"assembly->num_dlls %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"%d: dll name %S\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@HASH_STRING_ALGORITHM_X65599 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.strsection_header**)* @build_dllredirect_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_dllredirect_section(%struct.TYPE_6__* %0, %struct.strsection_header** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.strsection_header**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.strsection_header*, align 8
  %11 = alloca %struct.dllredirect_data*, align 8
  %12 = alloca %struct.string_index*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.assembly*, align 8
  %15 = alloca %struct.dll_redirect*, align 8
  %16 = alloca %struct.assembly*, align 8
  %17 = alloca %struct.dll_redirect*, align 8
  %18 = alloca %struct.TYPE_5__, align 4
  %19 = alloca i64*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.strsection_header** %1, %struct.strsection_header*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %20, i32 %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %86, %2
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.assembly*, %struct.assembly** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.assembly, %struct.assembly* %34, i64 %36
  store %struct.assembly* %37, %struct.assembly** %14, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %77, %31
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.assembly*, %struct.assembly** %14, align 8
  %41 = getelementptr inbounds %struct.assembly, %struct.assembly* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %38
  %45 = load %struct.assembly*, %struct.assembly** %14, align 8
  %46 = getelementptr inbounds %struct.assembly, %struct.assembly* %45, i32 0, i32 1
  %47 = load %struct.dll_redirect*, %struct.dll_redirect** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %47, i64 %49
  store %struct.dll_redirect* %50, %struct.dll_redirect** %15, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = add i64 %52, 24
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = add i64 %56, 16
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %8, align 4
  %59 = load %struct.dll_redirect*, %struct.dll_redirect** %15, align 8
  %60 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strlenW(i32 %61)
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @aligned_string_len(i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = add i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.assembly*, %struct.assembly** %14, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.dll_redirect*, %struct.dll_redirect** %15, align 8
  %74 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %70, %struct.assembly* %71, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %44
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %38

80:                                               ; preds = %38
  %81 = load %struct.assembly*, %struct.assembly** %14, align 8
  %82 = getelementptr inbounds %struct.assembly, %struct.assembly* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %25

89:                                               ; preds = %25
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = add i64 %91, 16
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %8, align 4
  %94 = call i32 (...) @RtlGetProcessHeap()
  %95 = load i32, i32* %8, align 4
  %96 = call %struct.strsection_header* @RtlAllocateHeap(i32 %94, i32 0, i32 %95)
  store %struct.strsection_header* %96, %struct.strsection_header** %10, align 8
  %97 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %98 = icmp ne %struct.strsection_header* %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %89
  %100 = load i32, i32* @STATUS_NO_MEMORY, align 4
  store i32 %100, i32* %3, align 4
  br label %274

101:                                              ; preds = %89
  %102 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %103 = call i32 @memset(%struct.strsection_header* %102, i32 0, i32 16)
  %104 = load i32, i32* @STRSECTION_MAGIC, align 4
  %105 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %106 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %108 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %107, i32 0, i32 0
  store i32 16, i32* %108, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %111 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %113 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %112, i32 0, i32 2
  store i32 16, i32* %113, align 4
  %114 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %115 = bitcast %struct.strsection_header* %114 to i32*
  %116 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %117 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = bitcast i32* %120 to %struct.string_index*
  store %struct.string_index* %121, %struct.string_index** %12, align 8
  %122 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %123 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %127 = getelementptr inbounds %struct.strsection_header, %struct.strsection_header* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  %130 = mul i64 %129, 24
  %131 = add i64 %125, %130
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %133

133:                                              ; preds = %267, %101
  %134 = load i32, i32* %6, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ult i32 %134, %137
  br i1 %138, label %139, label %270

139:                                              ; preds = %133
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load %struct.assembly*, %struct.assembly** %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.assembly, %struct.assembly* %142, i64 %144
  store %struct.assembly* %145, %struct.assembly** %16, align 8
  %146 = load %struct.assembly*, %struct.assembly** %16, align 8
  %147 = getelementptr inbounds %struct.assembly, %struct.assembly* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %148)
  store i32 0, i32* %7, align 4
  br label %150

150:                                              ; preds = %263, %139
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.assembly*, %struct.assembly** %16, align 8
  %153 = getelementptr inbounds %struct.assembly, %struct.assembly* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ult i32 %151, %154
  br i1 %155, label %156, label %266

156:                                              ; preds = %150
  %157 = load %struct.assembly*, %struct.assembly** %16, align 8
  %158 = getelementptr inbounds %struct.assembly, %struct.assembly* %157, i32 0, i32 1
  %159 = load %struct.dll_redirect*, %struct.dll_redirect** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %159, i64 %161
  store %struct.dll_redirect* %162, %struct.dll_redirect** %17, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.dll_redirect*, %struct.dll_redirect** %17, align 8
  %165 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %163, i32 %166)
  %168 = load %struct.dll_redirect*, %struct.dll_redirect** %17, align 8
  %169 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i32 %170, i32* %171, align 4
  %172 = load %struct.dll_redirect*, %struct.dll_redirect** %17, align 8
  %173 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @strlenW(i32 %174)
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 8
  %178 = trunc i64 %177 to i32
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %178, i32* %179, align 4
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %182, 8
  %184 = trunc i64 %183 to i32
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  store i32 %184, i32* %185, align 4
  %186 = load i32, i32* @TRUE, align 4
  %187 = load i32, i32* @HASH_STRING_ALGORITHM_X65599, align 4
  %188 = load %struct.string_index*, %struct.string_index** %12, align 8
  %189 = getelementptr inbounds %struct.string_index, %struct.string_index* %188, i32 0, i32 5
  %190 = call i32 @RtlHashUnicodeString(%struct.TYPE_5__* %18, i32 %186, i32 %187, i32* %189)
  %191 = load i32, i32* %13, align 4
  %192 = load %struct.string_index*, %struct.string_index** %12, align 8
  %193 = getelementptr inbounds %struct.string_index, %struct.string_index* %192, i32 0, i32 0
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.string_index*, %struct.string_index** %12, align 8
  %197 = getelementptr inbounds %struct.string_index, %struct.string_index* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.string_index*, %struct.string_index** %12, align 8
  %199 = getelementptr inbounds %struct.string_index, %struct.string_index* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @aligned_string_len(i32 %202)
  %204 = add nsw i32 %200, %203
  %205 = load %struct.string_index*, %struct.string_index** %12, align 8
  %206 = getelementptr inbounds %struct.string_index, %struct.string_index* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  %207 = load %struct.string_index*, %struct.string_index** %12, align 8
  %208 = getelementptr inbounds %struct.string_index, %struct.string_index* %207, i32 0, i32 3
  store i32 16, i32* %208, align 4
  %209 = load i32, i32* %6, align 4
  %210 = add i32 %209, 1
  %211 = load %struct.string_index*, %struct.string_index** %12, align 8
  %212 = getelementptr inbounds %struct.string_index, %struct.string_index* %211, i32 0, i32 4
  store i32 %210, i32* %212, align 4
  %213 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %214 = bitcast %struct.strsection_header* %213 to i32*
  %215 = load %struct.string_index*, %struct.string_index** %12, align 8
  %216 = getelementptr inbounds %struct.string_index, %struct.string_index* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %214, i64 %218
  %220 = bitcast i32* %219 to %struct.dllredirect_data*
  store %struct.dllredirect_data* %220, %struct.dllredirect_data** %11, align 8
  %221 = load %struct.dllredirect_data*, %struct.dllredirect_data** %11, align 8
  %222 = getelementptr inbounds %struct.dllredirect_data, %struct.dllredirect_data* %221, i32 0, i32 0
  store i32 16, i32* %222, align 8
  %223 = load %struct.dllredirect_data*, %struct.dllredirect_data** %11, align 8
  %224 = getelementptr inbounds %struct.dllredirect_data, %struct.dllredirect_data* %223, i32 0, i32 1
  store i32 2, i32* %224, align 4
  %225 = load %struct.dllredirect_data*, %struct.dllredirect_data** %11, align 8
  %226 = getelementptr inbounds %struct.dllredirect_data, %struct.dllredirect_data* %225, i32 0, i32 2
  %227 = load %struct.strsection_header*, %struct.strsection_header** %226, align 8
  %228 = call i32 @memset(%struct.strsection_header* %227, i32 0, i32 8)
  %229 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %230 = bitcast %struct.strsection_header* %229 to i32*
  %231 = load %struct.string_index*, %struct.string_index** %12, align 8
  %232 = getelementptr inbounds %struct.string_index, %struct.string_index* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %230, i64 %234
  %236 = bitcast i32* %235 to i64*
  store i64* %236, i64** %19, align 8
  %237 = load i64*, i64** %19, align 8
  %238 = load %struct.dll_redirect*, %struct.dll_redirect** %17, align 8
  %239 = getelementptr inbounds %struct.dll_redirect, %struct.dll_redirect* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.string_index*, %struct.string_index** %12, align 8
  %242 = getelementptr inbounds %struct.string_index, %struct.string_index* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @memcpy(i64* %237, i32 %240, i32 %243)
  %245 = load i64*, i64** %19, align 8
  %246 = load %struct.string_index*, %struct.string_index** %12, align 8
  %247 = getelementptr inbounds %struct.string_index, %struct.string_index* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = udiv i64 %249, 8
  %251 = getelementptr inbounds i64, i64* %245, i64 %250
  store i64 0, i64* %251, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @aligned_string_len(i32 %253)
  %255 = sext i32 %254 to i64
  %256 = add i64 16, %255
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = add i64 %258, %256
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %13, align 4
  %261 = load %struct.string_index*, %struct.string_index** %12, align 8
  %262 = getelementptr inbounds %struct.string_index, %struct.string_index* %261, i32 1
  store %struct.string_index* %262, %struct.string_index** %12, align 8
  br label %263

263:                                              ; preds = %156
  %264 = load i32, i32* %7, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %7, align 4
  br label %150

266:                                              ; preds = %150
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %6, align 4
  %269 = add i32 %268, 1
  store i32 %269, i32* %6, align 4
  br label %133

270:                                              ; preds = %133
  %271 = load %struct.strsection_header*, %struct.strsection_header** %10, align 8
  %272 = load %struct.strsection_header**, %struct.strsection_header*** %5, align 8
  store %struct.strsection_header* %271, %struct.strsection_header** %272, align 8
  %273 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %273, i32* %3, align 4
  br label %274

274:                                              ; preds = %270, %99
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @aligned_string_len(i32) #1

declare dso_local i32 @strlenW(i32) #1

declare dso_local %struct.strsection_header* @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i32 @memset(%struct.strsection_header*, i32, i32) #1

declare dso_local i32 @RtlHashUnicodeString(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
