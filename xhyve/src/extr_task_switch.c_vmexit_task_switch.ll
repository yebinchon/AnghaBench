; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_vmexit_task_switch.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_vmexit_task_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_exit = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vm_task_switch }
%struct.vm_task_switch = type { i32, i32, i32, i32, %struct.vm_guest_paging, i64 }
%struct.vm_guest_paging = type { i64, i64 }
%struct.seg_desc = type { i64, i64, i32 }
%struct.tss32 = type { i32 }
%struct.user_segment_descriptor = type { i32 }
%struct.iovec = type { i32 }

@CPU_MODE_PROTECTED = common dso_local global i64 0, align 8
@SDT_SYS386BSY = common dso_local global i32 0, align 4
@SDT_SYS386TSS = common dso_local global i32 0, align 4
@SDT_SYS286BSY = common dso_local global i32 0, align 4
@SDT_SYS286TSS = common dso_local global i32 0, align 4
@IDT_TS = common dso_local global i32 0, align 4
@IDT_NP = common dso_local global i32 0, align 4
@TSR_IRET = common dso_local global i32 0, align 4
@IDT_GP = common dso_local global i32 0, align 4
@XHYVE_PROT_READ = common dso_local global i32 0, align 4
@XHYVE_PROT_WRITE = common dso_local global i32 0, align 4
@VM_REG_GUEST_TR = common dso_local global i32 0, align 4
@TSR_JMP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Task switch to 16-bit TSS not supported\0A\00", align 1
@VMEXIT_ABORT = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR0 = common dso_local global i32 0, align 4
@CR0_TS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@TSR_IDT_GATE = common dso_local global i64 0, align 8
@VMEXIT_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmexit_task_switch(%struct.vm_exit* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_exit*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.seg_desc, align 8
  %7 = alloca %struct.tss32, align 4
  %8 = alloca %struct.tss32, align 4
  %9 = alloca %struct.vm_task_switch*, align 8
  %10 = alloca %struct.vm_guest_paging*, align 8
  %11 = alloca %struct.vm_guest_paging, align 8
  %12 = alloca %struct.user_segment_descriptor, align 4
  %13 = alloca %struct.user_segment_descriptor, align 4
  %14 = alloca [2 x %struct.iovec], align 4
  %15 = alloca [2 x %struct.iovec], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.seg_desc, align 8
  %32 = alloca %struct.seg_desc, align 8
  store %struct.vm_exit* %0, %struct.vm_exit** %4, align 8
  store i32* %1, i32** %5, align 8
  %33 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %34 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.vm_task_switch* %35, %struct.vm_task_switch** %9, align 8
  %36 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %37 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %29, align 4
  %39 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %40 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %22, align 4
  %44 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %45 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %28, align 4
  %49 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %50 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %51, i32 0, i32 4
  store %struct.vm_guest_paging* %52, %struct.vm_guest_paging** %10, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %27, align 4
  %55 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %10, align 8
  %56 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @CPU_MODE_PROTECTED, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %63 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.vm_exit*, %struct.vm_exit** %4, align 8
  %66 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = add nsw i32 %64, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %18, align 8
  %71 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %10, align 8
  %72 = bitcast %struct.vm_guest_paging* %11 to i8*
  %73 = bitcast %struct.vm_guest_paging* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 16, i1 false)
  %74 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %11, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* %27, align 4
  %76 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %77 = load i32, i32* %29, align 4
  %78 = call i32 @read_tss_descriptor(i32 %75, %struct.vm_task_switch* %76, i32 %77, %struct.user_segment_descriptor* %12, i32* %23)
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %23, align 4
  %81 = call i32 @CHKERR(i32 %79, i32 %80)
  call void @usd_to_seg_desc(%struct.seg_desc* sret %31, %struct.user_segment_descriptor* %12)
  %82 = bitcast %struct.seg_desc* %6 to i8*
  %83 = bitcast %struct.seg_desc* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 24, i1 false)
  %84 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %6, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @SEG_DESC_TYPE(i64 %85)
  store i32 %86, i32* %25, align 4
  %87 = load i32, i32* %25, align 4
  %88 = load i32, i32* @SDT_SYS386BSY, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %2
  %91 = load i32, i32* %25, align 4
  %92 = load i32, i32* @SDT_SYS386TSS, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i32, i32* %25, align 4
  %96 = load i32, i32* @SDT_SYS286BSY, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* @SDT_SYS286TSS, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32, i32* %27, align 4
  %104 = load i32, i32* @IDT_TS, align 4
  %105 = load i32, i32* %29, align 4
  %106 = load i32, i32* %22, align 4
  %107 = call i32 @sel_exception(i32 %103, i32 %104, i32 %105, i32 %106)
  br label %409

108:                                              ; preds = %98, %94, %90, %2
  %109 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %6, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @SEG_DESC_PRESENT(i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* @IDT_NP, align 4
  %116 = load i32, i32* %29, align 4
  %117 = load i32, i32* %22, align 4
  %118 = call i32 @sel_exception(i32 %114, i32 %115, i32 %116, i32 %117)
  br label %409

119:                                              ; preds = %108
  %120 = load i32, i32* %25, align 4
  %121 = load i32, i32* @SDT_SYS386BSY, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %25, align 4
  %125 = load i32, i32* @SDT_SYS386TSS, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123, %119
  store i32 103, i32* %24, align 4
  br label %139

128:                                              ; preds = %123
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* @SDT_SYS286BSY, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* @SDT_SYS286TSS, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132, %128
  store i32 43, i32* %24, align 4
  br label %138

137:                                              ; preds = %132
  store i32 0, i32* %24, align 4
  br label %138

138:                                              ; preds = %137, %136
  br label %139

139:                                              ; preds = %138, %127
  %140 = load i32, i32* %24, align 4
  %141 = icmp sgt i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %6, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %24, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %139
  %150 = load i32, i32* %27, align 4
  %151 = load i32, i32* @IDT_TS, align 4
  %152 = load i32, i32* %29, align 4
  %153 = load i32, i32* %22, align 4
  %154 = call i32 @sel_exception(i32 %150, i32 %151, i32 %152, i32 %153)
  br label %409

155:                                              ; preds = %139
  %156 = load i32, i32* %28, align 4
  %157 = load i32, i32* @TSR_IRET, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i32, i32* %25, align 4
  %161 = call i64 @TSS_BUSY(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %27, align 4
  %165 = load i32, i32* @IDT_TS, align 4
  %166 = load i32, i32* %29, align 4
  %167 = load i32, i32* %22, align 4
  %168 = call i32 @sel_exception(i32 %164, i32 %165, i32 %166, i32 %167)
  br label %409

169:                                              ; preds = %159, %155
  %170 = load i32, i32* %28, align 4
  %171 = load i32, i32* @TSR_IRET, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %169
  %174 = load i32, i32* %25, align 4
  %175 = call i64 @TSS_BUSY(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32, i32* %27, align 4
  %179 = load i32, i32* @IDT_GP, align 4
  %180 = load i32, i32* %29, align 4
  %181 = load i32, i32* %22, align 4
  %182 = call i32 @sel_exception(i32 %178, i32 %179, i32 %180, i32 %181)
  br label %409

183:                                              ; preds = %173, %169
  %184 = load i32, i32* %27, align 4
  %185 = getelementptr inbounds %struct.seg_desc, %struct.seg_desc* %6, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %24, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = load i32, i32* @XHYVE_PROT_READ, align 4
  %191 = load i32, i32* @XHYVE_PROT_WRITE, align 4
  %192 = or i32 %190, %191
  %193 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %194 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %195 = call i32 @nitems(%struct.iovec* %194)
  %196 = call i32 @xh_vm_copy_setup(i32 %184, %struct.vm_guest_paging* %11, i32 %186, i64 %189, i32 %192, %struct.iovec* %193, i32 %195, i32* %23)
  store i32 %196, i32* %21, align 4
  %197 = load i32, i32* %21, align 4
  %198 = load i32, i32* %23, align 4
  %199 = call i32 @CHKERR(i32 %197, i32 %198)
  %200 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %201 = load i32, i32* %24, align 4
  %202 = add nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = call i32 @xh_vm_copyin(%struct.iovec* %200, %struct.tss32* %8, i64 %203)
  %205 = load i32, i32* %27, align 4
  %206 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %207 = call i32 @GETREG(i32 %205, i32 %206)
  store i32 %207, i32* %30, align 4
  %208 = load i32, i32* %30, align 4
  %209 = call i64 @ISLDT(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %183
  %212 = load i32, i32* %30, align 4
  %213 = call i64 @IDXSEL(i32 %212)
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %211, %183
  %216 = load i32, i32* %27, align 4
  %217 = load i32, i32* @IDT_TS, align 4
  %218 = load i32, i32* %30, align 4
  %219 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %220 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @sel_exception(i32 %216, i32 %217, i32 %218, i32 %221)
  br label %409

223:                                              ; preds = %211
  %224 = load i32, i32* %27, align 4
  %225 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %226 = call i32 @xh_vm_get_desc(i32 %224, i32 %225, i32* %17, i64* %19, i64* %20)
  store i32 %226, i32* %21, align 4
  %227 = load i32, i32* %21, align 4
  %228 = icmp eq i32 %227, 0
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = load i64, i64* %20, align 8
  %232 = call i32 @SEG_DESC_UNUSABLE(i64 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %223
  %235 = load i64, i64* %20, align 8
  %236 = call i64 @SEG_DESC_PRESENT(i64 %235)
  %237 = icmp ne i64 %236, 0
  br label %238

238:                                              ; preds = %234, %223
  %239 = phi i1 [ false, %223 ], [ %237, %234 ]
  %240 = zext i1 %239 to i32
  %241 = call i32 @assert(i32 %240)
  %242 = load i64, i64* %20, align 8
  %243 = call i32 @SEG_DESC_TYPE(i64 %242)
  store i32 %243, i32* %26, align 4
  %244 = load i32, i32* %26, align 4
  %245 = load i32, i32* @SDT_SYS386BSY, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %251, label %247

247:                                              ; preds = %238
  %248 = load i32, i32* %26, align 4
  %249 = load i32, i32* @SDT_SYS286BSY, align 4
  %250 = icmp eq i32 %248, %249
  br label %251

251:                                              ; preds = %247, %238
  %252 = phi i1 [ true, %238 ], [ %250, %247 ]
  %253 = zext i1 %252 to i32
  %254 = call i32 @assert(i32 %253)
  %255 = load i32, i32* %27, align 4
  %256 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %257 = load i32, i32* %30, align 4
  %258 = call i32 @read_tss_descriptor(i32 %255, %struct.vm_task_switch* %256, i32 %257, %struct.user_segment_descriptor* %13, i32* %23)
  store i32 %258, i32* %21, align 4
  %259 = load i32, i32* %21, align 4
  %260 = load i32, i32* %23, align 4
  %261 = call i32 @CHKERR(i32 %259, i32 %260)
  %262 = load i32, i32* %27, align 4
  %263 = load i32, i32* %17, align 4
  %264 = load i32, i32* %24, align 4
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = load i32, i32* @XHYVE_PROT_READ, align 4
  %268 = load i32, i32* @XHYVE_PROT_WRITE, align 4
  %269 = or i32 %267, %268
  %270 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %15, i64 0, i64 0
  %271 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %15, i64 0, i64 0
  %272 = call i32 @nitems(%struct.iovec* %271)
  %273 = call i32 @xh_vm_copy_setup(i32 %262, %struct.vm_guest_paging* %11, i32 %263, i64 %266, i32 %269, %struct.iovec* %270, i32 %272, i32* %23)
  store i32 %273, i32* %21, align 4
  %274 = load i32, i32* %21, align 4
  %275 = load i32, i32* %23, align 4
  %276 = call i32 @CHKERR(i32 %274, i32 %275)
  %277 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %15, i64 0, i64 0
  %278 = load i32, i32* %24, align 4
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = call i32 @xh_vm_copyin(%struct.iovec* %277, %struct.tss32* %7, i64 %280)
  %282 = load i32, i32* %28, align 4
  %283 = load i32, i32* @TSR_IRET, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %289, label %285

285:                                              ; preds = %251
  %286 = load i32, i32* %28, align 4
  %287 = load i32, i32* @TSR_JMP, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %299

289:                                              ; preds = %285, %251
  %290 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %13, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, -3
  store i32 %292, i32* %290, align 4
  %293 = load i32, i32* %27, align 4
  %294 = load i32, i32* %30, align 4
  %295 = call i32 @desc_table_write(i32 %293, %struct.vm_guest_paging* %11, i32 %294, %struct.user_segment_descriptor* %13, i32* %23)
  store i32 %295, i32* %21, align 4
  %296 = load i32, i32* %21, align 4
  %297 = load i32, i32* %23, align 4
  %298 = call i32 @CHKERR(i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %289, %285
  %300 = load i32, i32* %25, align 4
  %301 = load i32, i32* @SDT_SYS286BSY, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %307, label %303

303:                                              ; preds = %299
  %304 = load i32, i32* %25, align 4
  %305 = load i32, i32* @SDT_SYS286TSS, align 4
  %306 = icmp eq i32 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %303, %299
  %308 = load i32, i32* @stderr, align 4
  %309 = call i32 @fprintf(i32 %308, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %310 = load i32, i32* @VMEXIT_ABORT, align 4
  store i32 %310, i32* %3, align 4
  br label %411

311:                                              ; preds = %303
  %312 = load i32, i32* %27, align 4
  %313 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %314 = load i64, i64* %18, align 8
  %315 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %15, i64 0, i64 0
  %316 = call i32 @tss32_save(i32 %312, %struct.vm_task_switch* %313, i64 %314, %struct.tss32* %7, %struct.iovec* %315)
  %317 = load i32, i32* %28, align 4
  %318 = load i32, i32* @TSR_IRET, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %330

320:                                              ; preds = %311
  %321 = getelementptr inbounds %struct.user_segment_descriptor, %struct.user_segment_descriptor* %12, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, 2
  store i32 %323, i32* %321, align 4
  %324 = load i32, i32* %27, align 4
  %325 = load i32, i32* %29, align 4
  %326 = call i32 @desc_table_write(i32 %324, %struct.vm_guest_paging* %11, i32 %325, %struct.user_segment_descriptor* %12, i32* %23)
  store i32 %326, i32* %21, align 4
  %327 = load i32, i32* %21, align 4
  %328 = load i32, i32* %23, align 4
  %329 = call i32 @CHKERR(i32 %327, i32 %328)
  br label %330

330:                                              ; preds = %320, %311
  %331 = load i32, i32* %27, align 4
  %332 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %333 = load i32, i32* %29, align 4
  %334 = call i32 @SETREG(i32 %331, i32 %332, i32 %333)
  call void @usd_to_seg_desc(%struct.seg_desc* sret %32, %struct.user_segment_descriptor* %12)
  %335 = bitcast %struct.seg_desc* %6 to i8*
  %336 = bitcast %struct.seg_desc* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %335, i8* align 8 %336, i64 24, i1 false)
  %337 = load i32, i32* %27, align 4
  %338 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %339 = call i32 @update_seg_desc(i32 %337, i32 %338, %struct.seg_desc* %6)
  %340 = load i32, i32* %27, align 4
  %341 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %342 = call i32 @GETREG(i32 %340, i32 %341)
  store i32 %342, i32* %16, align 4
  %343 = load i32, i32* %27, align 4
  %344 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %345 = load i32, i32* %16, align 4
  %346 = load i32, i32* @CR0_TS, align 4
  %347 = or i32 %345, %346
  %348 = call i32 @SETREG(i32 %343, i32 %344, i32 %347)
  %349 = load i32, i32* %27, align 4
  %350 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %351 = getelementptr inbounds %struct.tss32, %struct.tss32* %8, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @xh_vm_set_register(i32 %349, i32 %350, i32 %352)
  store i32 %353, i32* %21, align 4
  %354 = load i32, i32* %21, align 4
  %355 = icmp eq i32 %354, 0
  %356 = zext i1 %355 to i32
  %357 = call i32 @assert(i32 %356)
  %358 = load i32, i32* %27, align 4
  %359 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %360 = load i32, i32* %30, align 4
  %361 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %14, i64 0, i64 0
  %362 = call i32 @tss32_restore(i32 %358, %struct.vm_task_switch* %359, i32 %360, %struct.tss32* %8, %struct.iovec* %361, i32* %23)
  store i32 %362, i32* %21, align 4
  %363 = load i32, i32* %21, align 4
  %364 = load i32, i32* %23, align 4
  %365 = call i32 @CHKERR(i32 %363, i32 %364)
  %366 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %367 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %366, i32 0, i32 5
  %368 = load i64, i64* %367, align 8
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %394

370:                                              ; preds = %330
  %371 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %372 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @assert(i32 %373)
  %375 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %376 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = sext i32 %377 to i64
  %379 = load i64, i64* @TSR_IDT_GATE, align 8
  %380 = icmp eq i64 %378, %379
  %381 = zext i1 %380 to i32
  %382 = call i32 @assert(i32 %381)
  %383 = load i32, i32* %27, align 4
  %384 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %385 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %384, i32 0, i32 4
  %386 = load i32, i32* %25, align 4
  %387 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %388 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @push_errcode(i32 %383, %struct.vm_guest_paging* %385, i32 %386, i32 %389, i32* %23)
  store i32 %390, i32* %21, align 4
  %391 = load i32, i32* %21, align 4
  %392 = load i32, i32* %23, align 4
  %393 = call i32 @CHKERR(i32 %391, i32 %392)
  br label %394

394:                                              ; preds = %370, %330
  %395 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %396 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = sext i32 %397 to i64
  %399 = load i64, i64* @TSR_IDT_GATE, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %408

401:                                              ; preds = %394
  %402 = load i32, i32* %27, align 4
  %403 = call i32 @xh_vm_set_intinfo(i32 %402, i32 0)
  store i32 %403, i32* %21, align 4
  %404 = load i32, i32* %21, align 4
  %405 = icmp eq i32 %404, 0
  %406 = zext i1 %405 to i32
  %407 = call i32 @assert(i32 %406)
  br label %408

408:                                              ; preds = %401, %394
  br label %409

409:                                              ; preds = %408, %215, %177, %163, %149, %113, %102
  %410 = load i32, i32* @VMEXIT_CONTINUE, align 4
  store i32 %410, i32* %3, align 4
  br label %411

411:                                              ; preds = %409, %307
  %412 = load i32, i32* %3, align 4
  ret i32 %412
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @read_tss_descriptor(i32, %struct.vm_task_switch*, i32, %struct.user_segment_descriptor*, i32*) #1

declare dso_local i32 @CHKERR(i32, i32) #1

declare dso_local void @usd_to_seg_desc(%struct.seg_desc* sret, %struct.user_segment_descriptor*) #1

declare dso_local i32 @SEG_DESC_TYPE(i64) #1

declare dso_local i32 @sel_exception(i32, i32, i32, i32) #1

declare dso_local i64 @SEG_DESC_PRESENT(i64) #1

declare dso_local i64 @TSS_BUSY(i32) #1

declare dso_local i32 @xh_vm_copy_setup(i32, %struct.vm_guest_paging*, i32, i64, i32, %struct.iovec*, i32, i32*) #1

declare dso_local i32 @nitems(%struct.iovec*) #1

declare dso_local i32 @xh_vm_copyin(%struct.iovec*, %struct.tss32*, i64) #1

declare dso_local i32 @GETREG(i32, i32) #1

declare dso_local i64 @ISLDT(i32) #1

declare dso_local i64 @IDXSEL(i32) #1

declare dso_local i32 @xh_vm_get_desc(i32, i32, i32*, i64*, i64*) #1

declare dso_local i32 @SEG_DESC_UNUSABLE(i64) #1

declare dso_local i32 @desc_table_write(i32, %struct.vm_guest_paging*, i32, %struct.user_segment_descriptor*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @tss32_save(i32, %struct.vm_task_switch*, i64, %struct.tss32*, %struct.iovec*) #1

declare dso_local i32 @SETREG(i32, i32, i32) #1

declare dso_local i32 @update_seg_desc(i32, i32, %struct.seg_desc*) #1

declare dso_local i32 @xh_vm_set_register(i32, i32, i32) #1

declare dso_local i32 @tss32_restore(i32, %struct.vm_task_switch*, i32, %struct.tss32*, %struct.iovec*, i32*) #1

declare dso_local i32 @push_errcode(i32, %struct.vm_guest_paging*, i32, i32, i32*) #1

declare dso_local i32 @xh_vm_set_intinfo(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
