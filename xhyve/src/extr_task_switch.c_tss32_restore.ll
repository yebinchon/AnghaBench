; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_tss32_restore.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_task_switch.c_tss32_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_task_switch = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.tss32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iovec = type { i32 }
%struct.seg_desc = type { i32 }

@TSR_IRET = common dso_local global i64 0, align 8
@TSR_JMP = common dso_local global i64 0, align 8
@PSL_NT = common dso_local global i32 0, align 4
@VM_REG_GUEST_LDTR = common dso_local global i32 0, align 4
@PAGING_MODE_FLAT = common dso_local global i64 0, align 8
@PAGING_MODE_PAE = common dso_local global i64 0, align 8
@VM_REG_GUEST_PDPTE0 = common dso_local global i32 0, align 4
@VM_REG_GUEST_PDPTE1 = common dso_local global i32 0, align 4
@VM_REG_GUEST_PDPTE2 = common dso_local global i32 0, align 4
@VM_REG_GUEST_PDPTE3 = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR3 = common dso_local global i32 0, align 4
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@VM_REG_GUEST_RAX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RCX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSP = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBP = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSI = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDI = common dso_local global i32 0, align 4
@VM_REG_GUEST_ES = common dso_local global i32 0, align 4
@VM_REG_GUEST_CS = common dso_local global i32 0, align 4
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@VM_REG_GUEST_DS = common dso_local global i32 0, align 4
@VM_REG_GUEST_FS = common dso_local global i32 0, align 4
@VM_REG_GUEST_GS = common dso_local global i32 0, align 4
@SEL_RPL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vm_task_switch*, i32, %struct.tss32*, %struct.iovec*, i32*)* @tss32_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tss32_restore(i32 %0, %struct.vm_task_switch* %1, i32 %2, %struct.tss32* %3, %struct.iovec* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vm_task_switch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tss32*, align 8
  %12 = alloca %struct.iovec*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.seg_desc, align 4
  %15 = alloca %struct.seg_desc, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.vm_task_switch* %1, %struct.vm_task_switch** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.tss32* %3, %struct.tss32** %11, align 8
  store %struct.iovec* %4, %struct.iovec** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %24 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TSR_IRET, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %6
  %29 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %30 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TSR_JMP, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.tss32*, %struct.tss32** %11, align 8
  %37 = getelementptr inbounds %struct.tss32, %struct.tss32* %36, i32 0, i32 18
  store i32 %35, i32* %37, align 4
  store i32 1, i32* %22, align 4
  br label %38

38:                                               ; preds = %34, %28, %6
  %39 = load %struct.tss32*, %struct.tss32** %11, align 8
  %40 = getelementptr inbounds %struct.tss32, %struct.tss32* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %22, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @PSL_NT, align 4
  %46 = load i32, i32* %19, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %19, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %51 = load %struct.tss32*, %struct.tss32** %11, align 8
  %52 = getelementptr inbounds %struct.tss32, %struct.tss32* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SETREG(i32 %49, i32 %50, i32 %53)
  %55 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %56 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PAGING_MODE_FLAT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %143

61:                                               ; preds = %48
  %62 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %63 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @PAGING_MODE_PAE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %130

68:                                               ; preds = %61
  store i32 -1, i32* %17, align 4
  %69 = load %struct.tss32*, %struct.tss32** %11, align 8
  %70 = getelementptr inbounds %struct.tss32, %struct.tss32* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, -32
  %73 = call i32* @paddr_guest2host(i32 %72, i32 32)
  store i32* %73, i32** %16, align 8
  store i32 0, i32* %21, align 4
  br label %74

74:                                               ; preds = %102, %68
  %75 = load i32, i32* %21, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %105

77:                                               ; preds = %74
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  br label %102

86:                                               ; preds = %77
  %87 = load i32, i32* %17, align 4
  %88 = xor i32 %87, -1
  %89 = or i32 %88, 486
  store i32 %89, i32* %18, align 4
  %90 = load i32*, i32** %16, align 8
  %91 = load i32, i32* %21, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %18, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %86
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @vm_inject_gp(i32 %99)
  store i32 1, i32* %7, align 4
  br label %372

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101, %85
  %103 = load i32, i32* %21, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %21, align 4
  br label %74

105:                                              ; preds = %74
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @VM_REG_GUEST_PDPTE0, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @SETREG(i32 %106, i32 %107, i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @VM_REG_GUEST_PDPTE1, align 4
  %114 = load i32*, i32** %16, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SETREG(i32 %112, i32 %113, i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @VM_REG_GUEST_PDPTE2, align 4
  %120 = load i32*, i32** %16, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @SETREG(i32 %118, i32 %119, i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @VM_REG_GUEST_PDPTE3, align 4
  %126 = load i32*, i32** %16, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @SETREG(i32 %124, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %105, %61
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @VM_REG_GUEST_CR3, align 4
  %133 = load %struct.tss32*, %struct.tss32** %11, align 8
  %134 = getelementptr inbounds %struct.tss32, %struct.tss32* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @SETREG(i32 %131, i32 %132, i32 %135)
  %137 = load %struct.tss32*, %struct.tss32** %11, align 8
  %138 = getelementptr inbounds %struct.tss32, %struct.tss32* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %141 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  store i32 %139, i32* %142, align 8
  br label %143

143:                                              ; preds = %130, %48
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %146 = load i32, i32* %19, align 4
  %147 = call i32 @SETREG(i32 %144, i32 %145, i32 %146)
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %150 = load %struct.tss32*, %struct.tss32** %11, align 8
  %151 = getelementptr inbounds %struct.tss32, %struct.tss32* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @SETREG(i32 %148, i32 %149, i32 %152)
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @VM_REG_GUEST_RAX, align 4
  %156 = load %struct.tss32*, %struct.tss32** %11, align 8
  %157 = getelementptr inbounds %struct.tss32, %struct.tss32* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @SETREG(i32 %154, i32 %155, i32 %158)
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @VM_REG_GUEST_RCX, align 4
  %162 = load %struct.tss32*, %struct.tss32** %11, align 8
  %163 = getelementptr inbounds %struct.tss32, %struct.tss32* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @SETREG(i32 %160, i32 %161, i32 %164)
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @VM_REG_GUEST_RDX, align 4
  %168 = load %struct.tss32*, %struct.tss32** %11, align 8
  %169 = getelementptr inbounds %struct.tss32, %struct.tss32* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @SETREG(i32 %166, i32 %167, i32 %170)
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @VM_REG_GUEST_RBX, align 4
  %174 = load %struct.tss32*, %struct.tss32** %11, align 8
  %175 = getelementptr inbounds %struct.tss32, %struct.tss32* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @SETREG(i32 %172, i32 %173, i32 %176)
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %180 = load %struct.tss32*, %struct.tss32** %11, align 8
  %181 = getelementptr inbounds %struct.tss32, %struct.tss32* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @SETREG(i32 %178, i32 %179, i32 %182)
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @VM_REG_GUEST_RBP, align 4
  %186 = load %struct.tss32*, %struct.tss32** %11, align 8
  %187 = getelementptr inbounds %struct.tss32, %struct.tss32* %186, i32 0, i32 9
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @SETREG(i32 %184, i32 %185, i32 %188)
  %190 = load i32, i32* %8, align 4
  %191 = load i32, i32* @VM_REG_GUEST_RSI, align 4
  %192 = load %struct.tss32*, %struct.tss32** %11, align 8
  %193 = getelementptr inbounds %struct.tss32, %struct.tss32* %192, i32 0, i32 10
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @SETREG(i32 %190, i32 %191, i32 %194)
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @VM_REG_GUEST_RDI, align 4
  %198 = load %struct.tss32*, %struct.tss32** %11, align 8
  %199 = getelementptr inbounds %struct.tss32, %struct.tss32* %198, i32 0, i32 11
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @SETREG(i32 %196, i32 %197, i32 %200)
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %204 = load %struct.tss32*, %struct.tss32** %11, align 8
  %205 = getelementptr inbounds %struct.tss32, %struct.tss32* %204, i32 0, i32 12
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @SETREG(i32 %202, i32 %203, i32 %206)
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %210 = load %struct.tss32*, %struct.tss32** %11, align 8
  %211 = getelementptr inbounds %struct.tss32, %struct.tss32* %210, i32 0, i32 13
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @SETREG(i32 %208, i32 %209, i32 %212)
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %216 = load %struct.tss32*, %struct.tss32** %11, align 8
  %217 = getelementptr inbounds %struct.tss32, %struct.tss32* %216, i32 0, i32 14
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @SETREG(i32 %214, i32 %215, i32 %218)
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %222 = load %struct.tss32*, %struct.tss32** %11, align 8
  %223 = getelementptr inbounds %struct.tss32, %struct.tss32* %222, i32 0, i32 15
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @SETREG(i32 %220, i32 %221, i32 %224)
  %226 = load i32, i32* %8, align 4
  %227 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %228 = load %struct.tss32*, %struct.tss32** %11, align 8
  %229 = getelementptr inbounds %struct.tss32, %struct.tss32* %228, i32 0, i32 16
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @SETREG(i32 %226, i32 %227, i32 %230)
  %232 = load i32, i32* %8, align 4
  %233 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %234 = load %struct.tss32*, %struct.tss32** %11, align 8
  %235 = getelementptr inbounds %struct.tss32, %struct.tss32* %234, i32 0, i32 17
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @SETREG(i32 %232, i32 %233, i32 %236)
  %238 = load i32, i32* %22, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %143
  %241 = load %struct.tss32*, %struct.tss32** %11, align 8
  %242 = load %struct.iovec*, %struct.iovec** %12, align 8
  %243 = call i32 @xh_vm_copyout(%struct.tss32* %241, %struct.iovec* %242, i32 76)
  br label %244

244:                                              ; preds = %240, %143
  %245 = load i32, i32* %8, align 4
  %246 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %247 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %248 = load i32*, i32** %13, align 8
  %249 = call i32 @validate_seg_desc(i32 %245, %struct.vm_task_switch* %246, i32 %247, %struct.seg_desc* %14, i32* %248)
  store i32 %249, i32* %20, align 4
  %250 = load i32, i32* %20, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %256, label %252

252:                                              ; preds = %244
  %253 = load i32*, i32** %13, align 8
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %252, %244
  %257 = load i32, i32* %20, align 4
  store i32 %257, i32* %7, align 4
  br label %372

258:                                              ; preds = %252
  %259 = load i32, i32* %8, align 4
  %260 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %261 = call i32 @update_seg_desc(i32 %259, i32 %260, %struct.seg_desc* %14)
  %262 = load i32, i32* %8, align 4
  %263 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %264 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %265 = load i32*, i32** %13, align 8
  %266 = call i32 @validate_seg_desc(i32 %262, %struct.vm_task_switch* %263, i32 %264, %struct.seg_desc* %14, i32* %265)
  store i32 %266, i32* %20, align 4
  %267 = load i32, i32* %20, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %273, label %269

269:                                              ; preds = %258
  %270 = load i32*, i32** %13, align 8
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %269, %258
  %274 = load i32, i32* %20, align 4
  store i32 %274, i32* %7, align 4
  br label %372

275:                                              ; preds = %269
  %276 = load i32, i32* %8, align 4
  %277 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %278 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %279 = load i32*, i32** %13, align 8
  %280 = call i32 @validate_seg_desc(i32 %276, %struct.vm_task_switch* %277, i32 %278, %struct.seg_desc* %15, i32* %279)
  store i32 %280, i32* %20, align 4
  %281 = load i32, i32* %20, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %287, label %283

283:                                              ; preds = %275
  %284 = load i32*, i32** %13, align 8
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %283, %275
  %288 = load i32, i32* %20, align 4
  store i32 %288, i32* %7, align 4
  br label %372

289:                                              ; preds = %283
  %290 = load i32, i32* %8, align 4
  %291 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %292 = call i32 @update_seg_desc(i32 %290, i32 %291, %struct.seg_desc* %14)
  %293 = load i32, i32* %8, align 4
  %294 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %295 = call i32 @update_seg_desc(i32 %293, i32 %294, %struct.seg_desc* %15)
  %296 = load %struct.tss32*, %struct.tss32** %11, align 8
  %297 = getelementptr inbounds %struct.tss32, %struct.tss32* %296, i32 0, i32 13
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @SEL_RPL_MASK, align 4
  %300 = and i32 %298, %299
  %301 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %302 = getelementptr inbounds %struct.vm_task_switch, %struct.vm_task_switch* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %302, i32 0, i32 2
  store i32 %300, i32* %303, align 4
  %304 = load i32, i32* %8, align 4
  %305 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %306 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %307 = load i32*, i32** %13, align 8
  %308 = call i32 @validate_seg_desc(i32 %304, %struct.vm_task_switch* %305, i32 %306, %struct.seg_desc* %14, i32* %307)
  store i32 %308, i32* %20, align 4
  %309 = load i32, i32* %20, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %315, label %311

311:                                              ; preds = %289
  %312 = load i32*, i32** %13, align 8
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %311, %289
  %316 = load i32, i32* %20, align 4
  store i32 %316, i32* %7, align 4
  br label %372

317:                                              ; preds = %311
  %318 = load i32, i32* %8, align 4
  %319 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %320 = call i32 @update_seg_desc(i32 %318, i32 %319, %struct.seg_desc* %14)
  %321 = load i32, i32* %8, align 4
  %322 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %323 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %324 = load i32*, i32** %13, align 8
  %325 = call i32 @validate_seg_desc(i32 %321, %struct.vm_task_switch* %322, i32 %323, %struct.seg_desc* %14, i32* %324)
  store i32 %325, i32* %20, align 4
  %326 = load i32, i32* %20, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %332, label %328

328:                                              ; preds = %317
  %329 = load i32*, i32** %13, align 8
  %330 = load i32, i32* %329, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %328, %317
  %333 = load i32, i32* %20, align 4
  store i32 %333, i32* %7, align 4
  br label %372

334:                                              ; preds = %328
  %335 = load i32, i32* %8, align 4
  %336 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %337 = call i32 @update_seg_desc(i32 %335, i32 %336, %struct.seg_desc* %14)
  %338 = load i32, i32* %8, align 4
  %339 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %340 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %341 = load i32*, i32** %13, align 8
  %342 = call i32 @validate_seg_desc(i32 %338, %struct.vm_task_switch* %339, i32 %340, %struct.seg_desc* %14, i32* %341)
  store i32 %342, i32* %20, align 4
  %343 = load i32, i32* %20, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %349, label %345

345:                                              ; preds = %334
  %346 = load i32*, i32** %13, align 8
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %345, %334
  %350 = load i32, i32* %20, align 4
  store i32 %350, i32* %7, align 4
  br label %372

351:                                              ; preds = %345
  %352 = load i32, i32* %8, align 4
  %353 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %354 = call i32 @update_seg_desc(i32 %352, i32 %353, %struct.seg_desc* %14)
  %355 = load i32, i32* %8, align 4
  %356 = load %struct.vm_task_switch*, %struct.vm_task_switch** %9, align 8
  %357 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %358 = load i32*, i32** %13, align 8
  %359 = call i32 @validate_seg_desc(i32 %355, %struct.vm_task_switch* %356, i32 %357, %struct.seg_desc* %14, i32* %358)
  store i32 %359, i32* %20, align 4
  %360 = load i32, i32* %20, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %366, label %362

362:                                              ; preds = %351
  %363 = load i32*, i32** %13, align 8
  %364 = load i32, i32* %363, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %362, %351
  %367 = load i32, i32* %20, align 4
  store i32 %367, i32* %7, align 4
  br label %372

368:                                              ; preds = %362
  %369 = load i32, i32* %8, align 4
  %370 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %371 = call i32 @update_seg_desc(i32 %369, i32 %370, %struct.seg_desc* %14)
  store i32 0, i32* %7, align 4
  br label %372

372:                                              ; preds = %368, %366, %349, %332, %315, %287, %273, %256, %98
  %373 = load i32, i32* %7, align 4
  ret i32 %373
}

declare dso_local i32 @SETREG(i32, i32, i32) #1

declare dso_local i32* @paddr_guest2host(i32, i32) #1

declare dso_local i32 @vm_inject_gp(i32) #1

declare dso_local i32 @xh_vm_copyout(%struct.tss32*, %struct.iovec*, i32) #1

declare dso_local i32 @validate_seg_desc(i32, %struct.vm_task_switch*, i32, %struct.seg_desc*, i32*) #1

declare dso_local i32 @update_seg_desc(i32, i32, %struct.seg_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
