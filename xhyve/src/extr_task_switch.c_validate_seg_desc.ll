; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_validate_seg_desc.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_validate_seg_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_task_switch = type { i32, %struct.vm_guest_paging }
%struct.vm_guest_paging = type { i32 }
%struct.seg_desc = type { i32, i64, i64 }
%struct.user_segment_descriptor = type { i32, i32, i32 }

@IDT_TS = common dso_local global i32 0, align 4
@IDT_SS = common dso_local global i32 0, align 4
@IDT_NP = common dso_local global i32 0, align 4
@SEL_RPL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vm_task_switch*, i32, %struct.seg_desc*, i32*)* @validate_seg_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_seg_desc(i32 %0, %struct.vm_task_switch* %1, i32 %2, %struct.seg_desc* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vm_task_switch*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.seg_desc*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vm_guest_paging, align 4
  %13 = alloca %struct.user_segment_descriptor, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.seg_desc, align 8
  store i32 %0, i32* %7, align 4
  store %struct.vm_task_switch* %1, %struct.vm_task_switch** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.seg_desc* %3, %struct.seg_desc** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %27 = load i32, i32* %9, align 4
  switch i32 %27, label %32 [
    i32 129, label %28
    i32 134, label %29
    i32 128, label %30
    i32 133, label %31
    i32 132, label %31
    i32 131, label %31
    i32 130, label %31
  ]

28:                                               ; preds = %5
  store i32 1, i32* %21, align 4
  br label %34

29:                                               ; preds = %5
  store i32 1, i32* %22, align 4
  br label %34

30:                                               ; preds = %5
  store i32 1, i32* %23, align 4
  br label %34

31:                                               ; preds = %5, %5, %5, %5
  store i32 1, i32* %24, align 4
  br label %34

32:                                               ; preds = %5
  %33 = call i32 @assert(i32 0)
  br label %34

34:                                               ; preds = %32, %31, %30, %29, %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @GETREG(i32 %35, i32 %36)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %21, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %34
  %42 = load i32, i32* %19, align 4
  %43 = call i64 @ISLDT(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IDT_TS, align 4
  %48 = load i32, i32* %19, align 4
  %49 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %50 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sel_exception(i32 %46, i32 %47, i32 %48, i32 %51)
  store i32 1, i32* %6, align 4
  br label %275

53:                                               ; preds = %41, %34
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %19, align 4
  %56 = call i64 @desc_table_limit_check(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @IDT_TS, align 4
  %61 = load i32, i32* %19, align 4
  %62 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %63 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sel_exception(i32 %59, i32 %60, i32 %61, i32 %64)
  store i32 1, i32* %6, align 4
  br label %275

66:                                               ; preds = %53
  %67 = load i32, i32* %19, align 4
  %68 = call i64 @IDXSEL(i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load i32, i32* %22, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %23, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @IDT_TS, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %81 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @sel_exception(i32 %77, i32 %78, i32 %79, i32 %82)
  store i32 1, i32* %6, align 4
  br label %275

84:                                               ; preds = %73
  %85 = load %struct.seg_desc*, %struct.seg_desc** %10, align 8
  %86 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.seg_desc*, %struct.seg_desc** %10, align 8
  %88 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.seg_desc*, %struct.seg_desc** %10, align 8
  %90 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %89, i32 0, i32 0
  store i32 65536, i32* %90, align 8
  store i32 0, i32* %6, align 4
  br label %275

91:                                               ; preds = %66
  %92 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %93 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %92, i32 0, i32 1
  %94 = bitcast %struct.vm_guest_paging* %12 to i8*
  %95 = bitcast %struct.vm_guest_paging* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 4, i1 false)
  %96 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %12, i32 0, i32 0
  store i32 0, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @desc_table_read(i32 %97, %struct.vm_guest_paging* %12, i32 %98, %struct.user_segment_descriptor* %13, i32* %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %91
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %103, %91
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %6, align 4
  br label %275

109:                                              ; preds = %103
  %110 = load i32, i32* %21, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %13, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ldt_desc(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %112, %109
  %118 = load i32, i32* %22, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %13, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @code_desc(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %141

125:                                              ; preds = %120, %117
  %126 = load i32, i32* %24, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %13, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @data_desc(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128, %125
  %134 = load i32, i32* %23, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %13, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @stack_desc(i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %136, %128, %120, %112
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @IDT_TS, align 4
  %144 = load i32, i32* %19, align 4
  %145 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %146 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @sel_exception(i32 %142, i32 %143, i32 %144, i32 %147)
  store i32 1, i32* %6, align 4
  br label %275

149:                                              ; preds = %136, %133
  %150 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %13, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %174, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %21, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153
  %157 = load i32, i32* @IDT_TS, align 4
  store i32 %157, i32* %15, align 4
  br label %166

158:                                              ; preds = %153
  %159 = load i32, i32* %23, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load i32, i32* @IDT_SS, align 4
  store i32 %162, i32* %15, align 4
  br label %165

163:                                              ; preds = %158
  %164 = load i32, i32* @IDT_NP, align 4
  store i32 %164, i32* %15, align 4
  br label %165

165:                                              ; preds = %163, %161
  br label %166

166:                                              ; preds = %165, %156
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %19, align 4
  %170 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %171 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @sel_exception(i32 %167, i32 %168, i32 %169, i32 %172)
  store i32 1, i32* %6, align 4
  br label %275

174:                                              ; preds = %149
  %175 = load i32, i32* %7, align 4
  %176 = call i64 @GETREG(i32 %175, i32 134)
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* %20, align 4
  %179 = load i32, i32* @SEL_RPL_MASK, align 4
  %180 = and i32 %178, %179
  store i32 %180, i32* %16, align 4
  %181 = load i32, i32* %19, align 4
  %182 = load i32, i32* @SEL_RPL_MASK, align 4
  %183 = and i32 %181, %182
  store i32 %183, i32* %18, align 4
  %184 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %13, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  store i32 %185, i32* %17, align 4
  %186 = load i32, i32* %23, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %174
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %16, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %196, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %16, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %192, %188
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @IDT_TS, align 4
  %199 = load i32, i32* %19, align 4
  %200 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %201 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @sel_exception(i32 %197, i32 %198, i32 %199, i32 %202)
  store i32 1, i32* %6, align 4
  br label %275

204:                                              ; preds = %192, %174
  %205 = load i32, i32* %22, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %236

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %13, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = and i32 %209, 4
  %211 = icmp ne i32 %210, 0
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 1, i32 0
  store i32 %213, i32* %25, align 4
  %214 = load i32, i32* %25, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %207
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %17, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %227, label %220

220:                                              ; preds = %216, %207
  %221 = load i32, i32* %25, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %235, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %16, align 4
  %225 = load i32, i32* %17, align 4
  %226 = icmp ne i32 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %223, %216
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* @IDT_TS, align 4
  %230 = load i32, i32* %19, align 4
  %231 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %232 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @sel_exception(i32 %228, i32 %229, i32 %230, i32 %233)
  store i32 1, i32* %6, align 4
  br label %275

235:                                              ; preds = %223, %220
  br label %236

236:                                              ; preds = %235, %204
  %237 = load i32, i32* %24, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %271

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %13, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @code_desc(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %13, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  store i32 1, i32* %25, align 4
  br label %251

250:                                              ; preds = %244, %239
  store i32 0, i32* %25, align 4
  br label %251

251:                                              ; preds = %250, %249
  %252 = load i32, i32* %25, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %270, label %254

254:                                              ; preds = %251
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %17, align 4
  %257 = icmp sgt i32 %255, %256
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* %17, align 4
  %261 = icmp sgt i32 %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %258, %254
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* @IDT_TS, align 4
  %265 = load i32, i32* %19, align 4
  %266 = load %struct.vm_task_switch*, %struct.vm_task_switch** %8, align 8
  %267 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @sel_exception(i32 %263, i32 %264, i32 %265, i32 %268)
  store i32 1, i32* %6, align 4
  br label %275

270:                                              ; preds = %258, %251
  br label %271

271:                                              ; preds = %270, %236
  %272 = load %struct.seg_desc*, %struct.seg_desc** %10, align 8
  call void @usd_to_seg_desc(%struct.seg_desc* sret %26, %struct.user_segment_descriptor* %13)
  %273 = bitcast %struct.seg_desc* %272 to i8*
  %274 = bitcast %struct.seg_desc* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %273, i8* align 8 %274, i64 24, i1 false)
  store i32 0, i32* %6, align 4
  br label %275

275:                                              ; preds = %271, %262, %227, %196, %166, %141, %107, %84, %76, %58, %45
  %276 = load i32, i32* %6, align 4
  ret i32 %276
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @GETREG(i32, i32) #1

declare dso_local i64 @ISLDT(i32) #1

declare dso_local i32 @sel_exception(i32, i32, i32, i32) #1

declare dso_local i64 @desc_table_limit_check(i32, i32) #1

declare dso_local i64 @IDXSEL(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @desc_table_read(i32, %struct.vm_guest_paging*, i32, %struct.user_segment_descriptor*, i32*) #1

declare dso_local i32 @ldt_desc(i32) #1

declare dso_local i64 @code_desc(i32) #1

declare dso_local i32 @data_desc(i32) #1

declare dso_local i32 @stack_desc(i32) #1

declare dso_local void @usd_to_seg_desc(%struct.seg_desc* sret, %struct.user_segment_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
