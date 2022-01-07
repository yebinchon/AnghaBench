; ModuleID = '/home/carl/AnghaBench/xhyve/src/firmware/extr_fbsd.c_fbsd_set_regs.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/firmware/extr_fbsd.c_fbsd_set_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CR0_PE = common dso_local global i32 0, align 4
@CR0_PG = common dso_local global i32 0, align 4
@CR0_NE = common dso_local global i32 0, align 4
@BSP = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR0 = common dso_local global i32 0, align 4
@CR4_PAE = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR4 = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@VM_REG_GUEST_EFER = common dso_local global i32 0, align 4
@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@VM_REG_GUEST_CS = common dso_local global i32 0, align 4
@VM_REG_GUEST_DS = common dso_local global i32 0, align 4
@VM_REG_GUEST_ES = common dso_local global i32 0, align 4
@VM_REG_GUEST_FS = common dso_local global i32 0, align 4
@VM_REG_GUEST_GS = common dso_local global i32 0, align 4
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@VM_REG_GUEST_TR = common dso_local global i32 0, align 4
@VM_REG_GUEST_LDTR = common dso_local global i32 0, align 4
@DESC_UNUSABLE = common dso_local global i32 0, align 4
@GUEST_CODE_SEL = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@GUEST_DATA_SEL = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR3 = common dso_local global i32 0, align 4
@GUEST_GDTR_LIMIT64 = common dso_local global i32 0, align 4
@VM_REG_GUEST_GDTR = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @fbsd_set_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbsd_set_regs(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* @CR0_PE, align 4
  %19 = load i32, i32* @CR0_PG, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CR0_NE, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @BSP, align 4
  %24 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @xh_vm_set_register(i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %224

29:                                               ; preds = %4
  %30 = load i32, i32* @CR4_PAE, align 4
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @BSP, align 4
  %32 = load i32, i32* @VM_REG_GUEST_CR4, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @xh_vm_set_register(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %224

37:                                               ; preds = %29
  %38 = load i32, i32* @EFER_LME, align 4
  %39 = load i32, i32* @EFER_LMA, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @BSP, align 4
  %42 = load i32, i32* @VM_REG_GUEST_EFER, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @xh_vm_set_register(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %224

47:                                               ; preds = %37
  store i32 2, i32* %13, align 4
  %48 = load i32, i32* @BSP, align 4
  %49 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @xh_vm_set_register(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %224

55:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 8347, i32* %15, align 4
  %56 = load i32, i32* @BSP, align 4
  %57 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @xh_vm_set_desc(i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %224

65:                                               ; preds = %55
  store i32 147, i32* %15, align 4
  %66 = load i32, i32* @BSP, align 4
  %67 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @xh_vm_set_desc(i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %224

75:                                               ; preds = %65
  %76 = load i32, i32* @BSP, align 4
  %77 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @xh_vm_set_desc(i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %224

85:                                               ; preds = %75
  %86 = load i32, i32* @BSP, align 4
  %87 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @xh_vm_set_desc(i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %224

95:                                               ; preds = %85
  %96 = load i32, i32* @BSP, align 4
  %97 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @xh_vm_set_desc(i32 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %224

105:                                              ; preds = %95
  %106 = load i32, i32* @BSP, align 4
  %107 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @xh_vm_set_desc(i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %224

115:                                              ; preds = %105
  store i32 139, i32* %15, align 4
  %116 = load i32, i32* @BSP, align 4
  %117 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @xh_vm_set_desc(i32 %116, i32 %117, i32 0, i32 0, i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %224

123:                                              ; preds = %115
  %124 = load i32, i32* @BSP, align 4
  %125 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %126 = load i32, i32* @DESC_UNUSABLE, align 4
  %127 = call i32 @xh_vm_set_desc(i32 %124, i32 %125, i32 0, i32 0, i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %224

131:                                              ; preds = %123
  %132 = load i32, i32* @GUEST_CODE_SEL, align 4
  %133 = load i32, i32* @SEL_KPL, align 4
  %134 = call i32 @GSEL(i32 %132, i32 %133)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* @BSP, align 4
  %136 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %137 = load i32, i32* %17, align 4
  %138 = call i32 @xh_vm_set_register(i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  br label %224

141:                                              ; preds = %131
  %142 = load i32, i32* @GUEST_DATA_SEL, align 4
  %143 = load i32, i32* @SEL_KPL, align 4
  %144 = call i32 @GSEL(i32 %142, i32 %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* @BSP, align 4
  %146 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %147 = load i32, i32* %17, align 4
  %148 = call i32 @xh_vm_set_register(i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %141
  br label %224

151:                                              ; preds = %141
  %152 = load i32, i32* @BSP, align 4
  %153 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @xh_vm_set_register(i32 %152, i32 %153, i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %224

158:                                              ; preds = %151
  %159 = load i32, i32* @BSP, align 4
  %160 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @xh_vm_set_register(i32 %159, i32 %160, i32 %161)
  store i32 %162, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %224

165:                                              ; preds = %158
  %166 = load i32, i32* @BSP, align 4
  %167 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %168 = load i32, i32* %17, align 4
  %169 = call i32 @xh_vm_set_register(i32 %166, i32 %167, i32 %168)
  store i32 %169, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %224

172:                                              ; preds = %165
  %173 = load i32, i32* @BSP, align 4
  %174 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %175 = load i32, i32* %17, align 4
  %176 = call i32 @xh_vm_set_register(i32 %173, i32 %174, i32 %175)
  store i32 %176, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  br label %224

179:                                              ; preds = %172
  %180 = load i32, i32* @BSP, align 4
  %181 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %182 = call i32 @xh_vm_set_register(i32 %180, i32 %181, i32 0)
  store i32 %182, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %179
  br label %224

185:                                              ; preds = %179
  %186 = load i32, i32* @BSP, align 4
  %187 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %188 = call i32 @xh_vm_set_register(i32 %186, i32 %187, i32 0)
  store i32 %188, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %224

191:                                              ; preds = %185
  %192 = load i32, i32* @BSP, align 4
  %193 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @xh_vm_set_register(i32 %192, i32 %193, i32 %194)
  store i32 %195, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %224

198:                                              ; preds = %191
  %199 = load i32, i32* @BSP, align 4
  %200 = load i32, i32* @VM_REG_GUEST_CR3, align 4
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @xh_vm_set_register(i32 %199, i32 %200, i32 %201)
  store i32 %202, i32* %9, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %224

205:                                              ; preds = %198
  %206 = load i32, i32* %7, align 4
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* @GUEST_GDTR_LIMIT64, align 4
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* @BSP, align 4
  %209 = load i32, i32* @VM_REG_GUEST_GDTR, align 4
  %210 = load i32, i32* %14, align 4
  %211 = load i32, i32* %16, align 4
  %212 = call i32 @xh_vm_set_desc(i32 %208, i32 %209, i32 %210, i32 %211, i32 0)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %205
  br label %224

216:                                              ; preds = %205
  %217 = load i32, i32* @BSP, align 4
  %218 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @xh_vm_set_register(i32 %217, i32 %218, i32 %219)
  store i32 %220, i32* %9, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %224

223:                                              ; preds = %216
  store i32 0, i32* %9, align 4
  br label %224

224:                                              ; preds = %223, %222, %215, %204, %197, %190, %184, %178, %171, %164, %157, %150, %140, %130, %122, %114, %104, %94, %84, %74, %64, %54, %46, %36, %28
  %225 = load i32, i32* %9, align 4
  ret i32 %225
}

declare dso_local i32 @xh_vm_set_register(i32, i32, i32) #1

declare dso_local i32 @xh_vm_set_desc(i32, i32, i32, i32, i32) #1

declare dso_local i32 @GSEL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
