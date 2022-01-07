; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_icrlo_write_handler.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_icrlo_write_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i64, i64, i32, %struct.LAPIC* }
%struct.LAPIC = type { i32, i64 }
%struct.vm_exit = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@APIC_DELSTAT_PEND = common dso_local global i64 0, align 8
@APIC_VECTOR_MASK = common dso_local global i32 0, align 4
@APIC_DELMODE_MASK = common dso_local global i32 0, align 4
@APIC_DELMODE_FIXED = common dso_local global i32 0, align 4
@APIC_ESR_SEND_ILLEGAL_VECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Ignoring invalid IPI %d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"icrlo 0x%016llx triggered ipi %d\00", align 1
@APIC_DELMODE_NMI = common dso_local global i32 0, align 4
@APIC_DEST_MASK = common dso_local global i32 0, align 4
@APIC_DESTMODE_LOG = common dso_local global i32 0, align 4
@IPIS_SENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"vlapic sending ipi %d to vcpuid %d\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"vlapic sending ipi nmi to vcpuid %d\00", align 1
@APIC_DELMODE_INIT = common dso_local global i32 0, align 4
@APIC_LEVEL_MASK = common dso_local global i32 0, align 4
@APIC_LEVEL_DEASSERT = common dso_local global i32 0, align 4
@VM_MAXCPU = common dso_local global i32 0, align 4
@BS_INIT = common dso_local global i64 0, align 8
@BS_SIPI = common dso_local global i64 0, align 8
@APIC_DELMODE_STARTUP = common dso_local global i32 0, align 4
@BS_RUNNING = common dso_local global i64 0, align 8
@VM_EXITCODE_SPINUP_AP = common dso_local global i32 0, align 4
@XHYVE_PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlapic_icrlo_write_handler(%struct.vlapic* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vlapic*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vlapic*, align 8
  %14 = alloca %struct.vm_exit*, align 8
  %15 = alloca %struct.LAPIC*, align 8
  store %struct.vlapic* %0, %struct.vlapic** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %17 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %16, i32 0, i32 3
  %18 = load %struct.LAPIC*, %struct.LAPIC** %17, align 8
  store %struct.LAPIC* %18, %struct.LAPIC** %15, align 8
  %19 = load i64, i64* @APIC_DELSTAT_PEND, align 8
  %20 = trunc i64 %19 to i32
  %21 = xor i32 %20, -1
  %22 = load %struct.LAPIC*, %struct.LAPIC** %15, align 8
  %23 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.LAPIC*, %struct.LAPIC** %15, align 8
  %27 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 %29, 32
  %31 = load %struct.LAPIC*, %struct.LAPIC** %15, align 8
  %32 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %36 = call i64 @x2apic(%struct.vlapic* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  %40 = ashr i32 %39, 32
  store i32 %40, i32* %10, align 4
  br label %44

41:                                               ; preds = %2
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 56
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @APIC_VECTOR_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @APIC_DELMODE_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @APIC_DELMODE_FIXED, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 16
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %59 = load i32, i32* @APIC_ESR_SEND_ILLEGAL_VECTOR, align 4
  %60 = call i32 @vlapic_set_error(%struct.vlapic* %58, i32 %59)
  %61 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @VLAPIC_CTR1(%struct.vlapic* %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %62)
  store i32 0, i32* %3, align 4
  br label %257

64:                                               ; preds = %54, %44
  %65 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @VLAPIC_CTR2(%struct.vlapic* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @APIC_DELMODE_FIXED, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @APIC_DELMODE_NMI, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %160

76:                                               ; preds = %72, %64
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @APIC_DEST_MASK, align 4
  %79 = and i32 %77, %78
  switch i32 %79, label %115 [
    i32 129, label %80
    i32 128, label %94
    i32 130, label %100
    i32 131, label %105
  ]

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @APIC_DESTMODE_LOG, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %7, align 4
  %86 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %87 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %92 = call i64 @x2apic(%struct.vlapic* %91)
  %93 = call i32 @vlapic_calcdest(i32 %88, i32* %8, i32 %89, i32 %90, i32 0, i64 %92)
  br label %117

94:                                               ; preds = %76
  %95 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %96 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @CPU_SETOF(i32 %98, i32* %8)
  br label %117

100:                                              ; preds = %76
  %101 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %102 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @vm_active_cpus(i32 %103)
  store i32 %104, i32* %8, align 4
  br label %117

105:                                              ; preds = %76
  %106 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %107 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @vm_active_cpus(i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %111 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @CPU_CLR(i32 %113, i32* %8)
  br label %117

115:                                              ; preds = %76
  %116 = call i32 @CPU_ZERO(i32* %8)
  br label %117

117:                                              ; preds = %115, %105, %100, %94, %80
  br label %118

118:                                              ; preds = %158, %117
  %119 = call i32 @CPU_FFS(i32* %8)
  store i32 %119, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %159

121:                                              ; preds = %118
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @CPU_CLR(i32 %124, i32* %8)
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @APIC_DELMODE_FIXED, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %121
  %130 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %131 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @lapic_intr_edge(i32 %132, i32 %133, i32 %134)
  %136 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %137 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %140 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @IPIS_SENT, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @vmm_stat_array_incr(i32 %138, i64 %141, i32 %142, i32 %143, i32 1)
  %145 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @VLAPIC_CTR2(%struct.vlapic* %145, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %147)
  br label %158

149:                                              ; preds = %121
  %150 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %151 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @vm_inject_nmi(i32 %152, i32 %153)
  %155 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %156 = load i32, i32* %6, align 4
  %157 = call i32 @VLAPIC_CTR1(%struct.vlapic* %155, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %149, %129
  br label %118

159:                                              ; preds = %118
  store i32 0, i32* %3, align 4
  br label %257

160:                                              ; preds = %72
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @APIC_DELMODE_INIT, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %200

164:                                              ; preds = %160
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @APIC_LEVEL_MASK, align 4
  %167 = and i32 %165, %166
  %168 = load i32, i32* @APIC_LEVEL_DEASSERT, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store i32 0, i32* %3, align 4
  br label %257

171:                                              ; preds = %164
  %172 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %173 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %199

176:                                              ; preds = %171
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %199

179:                                              ; preds = %176
  %180 = load i32, i32* %10, align 4
  %181 = load i32, i32* @VM_MAXCPU, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %179
  %184 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %185 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call %struct.vlapic* @vm_lapic(i32 %186, i32 %187)
  store %struct.vlapic* %188, %struct.vlapic** %13, align 8
  %189 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %190 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @BS_INIT, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %198

194:                                              ; preds = %183
  %195 = load i64, i64* @BS_SIPI, align 8
  %196 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %197 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %196, i32 0, i32 1
  store i64 %195, i64* %197, align 8
  br label %198

198:                                              ; preds = %194, %183
  store i32 0, i32* %3, align 4
  br label %257

199:                                              ; preds = %179, %176, %171
  br label %200

200:                                              ; preds = %199, %160
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* @APIC_DELMODE_STARTUP, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %256

204:                                              ; preds = %200
  %205 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %206 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %255

209:                                              ; preds = %204
  %210 = load i32, i32* %10, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %255

212:                                              ; preds = %209
  %213 = load i32, i32* %10, align 4
  %214 = load i32, i32* @VM_MAXCPU, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %255

216:                                              ; preds = %212
  %217 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %218 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %10, align 4
  %221 = call %struct.vlapic* @vm_lapic(i32 %219, i32 %220)
  store %struct.vlapic* %221, %struct.vlapic** %13, align 8
  %222 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %223 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @BS_SIPI, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %216
  store i32 0, i32* %3, align 4
  br label %257

228:                                              ; preds = %216
  %229 = load i64, i64* @BS_RUNNING, align 8
  %230 = load %struct.vlapic*, %struct.vlapic** %13, align 8
  %231 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %230, i32 0, i32 1
  store i64 %229, i64* %231, align 8
  %232 = load i32*, i32** %5, align 8
  store i32 1, i32* %232, align 4
  %233 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %234 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.vlapic*, %struct.vlapic** %4, align 8
  %237 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call %struct.vm_exit* @vm_exitinfo(i32 %235, i64 %238)
  store %struct.vm_exit* %239, %struct.vm_exit** %14, align 8
  %240 = load i32, i32* @VM_EXITCODE_SPINUP_AP, align 4
  %241 = load %struct.vm_exit*, %struct.vm_exit** %14, align 8
  %242 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %10, align 4
  %244 = load %struct.vm_exit*, %struct.vm_exit** %14, align 8
  %245 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 0
  store i32 %243, i32* %247, align 4
  %248 = load i32, i32* %11, align 4
  %249 = load i32, i32* @XHYVE_PAGE_SHIFT, align 4
  %250 = shl i32 %248, %249
  %251 = load %struct.vm_exit*, %struct.vm_exit** %14, align 8
  %252 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  store i32 %250, i32* %254, align 4
  store i32 0, i32* %3, align 4
  br label %257

255:                                              ; preds = %212, %209, %204
  br label %256

256:                                              ; preds = %255, %200
  store i32 1, i32* %3, align 4
  br label %257

257:                                              ; preds = %256, %228, %227, %198, %170, %159, %57
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i64 @x2apic(%struct.vlapic*) #1

declare dso_local i32 @vlapic_set_error(%struct.vlapic*, i32) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

declare dso_local i32 @VLAPIC_CTR2(%struct.vlapic*, i8*, i32, i32) #1

declare dso_local i32 @vlapic_calcdest(i32, i32*, i32, i32, i32, i64) #1

declare dso_local i32 @CPU_SETOF(i32, i32*) #1

declare dso_local i32 @vm_active_cpus(i32) #1

declare dso_local i32 @CPU_CLR(i32, i32*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_FFS(i32*) #1

declare dso_local i32 @lapic_intr_edge(i32, i32, i32) #1

declare dso_local i32 @vmm_stat_array_incr(i32, i64, i32, i32, i32) #1

declare dso_local i32 @vm_inject_nmi(i32, i32) #1

declare dso_local %struct.vlapic* @vm_lapic(i32, i32) #1

declare dso_local %struct.vm_exit* @vm_exitinfo(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
