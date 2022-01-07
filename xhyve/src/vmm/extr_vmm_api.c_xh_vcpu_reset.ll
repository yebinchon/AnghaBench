; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vcpu_reset.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm_api.c_xh_vcpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_REG_GUEST_RFLAGS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RIP = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR0 = common dso_local global i32 0, align 4
@CR0_NE = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR3 = common dso_local global i32 0, align 4
@VM_REG_GUEST_CR4 = common dso_local global i32 0, align 4
@VM_REG_GUEST_CS = common dso_local global i32 0, align 4
@VM_REG_GUEST_SS = common dso_local global i32 0, align 4
@VM_REG_GUEST_DS = common dso_local global i32 0, align 4
@VM_REG_GUEST_ES = common dso_local global i32 0, align 4
@VM_REG_GUEST_FS = common dso_local global i32 0, align 4
@VM_REG_GUEST_GS = common dso_local global i32 0, align 4
@VM_REG_GUEST_RAX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RCX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDX = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSI = common dso_local global i32 0, align 4
@VM_REG_GUEST_RDI = common dso_local global i32 0, align 4
@VM_REG_GUEST_RBP = common dso_local global i32 0, align 4
@VM_REG_GUEST_RSP = common dso_local global i32 0, align 4
@VM_REG_GUEST_TR = common dso_local global i32 0, align 4
@VM_REG_GUEST_LDTR = common dso_local global i32 0, align 4
@VM_REG_GUEST_GDTR = common dso_local global i32 0, align 4
@VM_REG_GUEST_IDTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xh_vcpu_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @VM_REG_GUEST_RFLAGS, align 4
  %7 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %5, i32 %6, i32 2)
  store i32 %7, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %160, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @VM_REG_GUEST_RIP, align 4
  %12 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %10, i32 %11, i32 65520)
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %160, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @VM_REG_GUEST_CR0, align 4
  %17 = load i32, i32* @CR0_NE, align 4
  %18 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %160, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @VM_REG_GUEST_CR3, align 4
  %23 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %160, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @VM_REG_GUEST_CR4, align 4
  %28 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %26, i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %160, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %33 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %31, i32 %32, i32 61440)
  store i32 %33, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %160, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %38 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %160, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %43 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %41, i32 %42, i32 0)
  store i32 %43, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %160, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %48 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %46, i32 %47, i32 0)
  store i32 %48, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %160, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %53 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %51, i32 %52, i32 0)
  store i32 %53, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %160, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %58 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %56, i32 %57, i32 0)
  store i32 %58, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %160, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @VM_REG_GUEST_RAX, align 4
  %63 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %160, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @VM_REG_GUEST_RBX, align 4
  %68 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %66, i32 %67, i32 0)
  store i32 %68, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %160, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @VM_REG_GUEST_RCX, align 4
  %73 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %71, i32 %72, i32 0)
  store i32 %73, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %160, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @VM_REG_GUEST_RDX, align 4
  %78 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %76, i32 %77, i32 3840)
  store i32 %78, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %160, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @VM_REG_GUEST_RSI, align 4
  %83 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %81, i32 %82, i32 0)
  store i32 %83, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %160, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @VM_REG_GUEST_RDI, align 4
  %88 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %86, i32 %87, i32 0)
  store i32 %88, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %160, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @VM_REG_GUEST_RBP, align 4
  %93 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %91, i32 %92, i32 0)
  store i32 %93, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %160, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @VM_REG_GUEST_RSP, align 4
  %98 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %96, i32 %97, i32 0)
  store i32 %98, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %160, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %103 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %101, i32 %102, i32 0)
  store i32 %103, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %160, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %108 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_register to i32 (i32, i32, i32, ...)*)(i32 %106, i32 %107, i32 0)
  store i32 %108, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %160, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* @VM_REG_GUEST_CS, align 4
  %113 = call i32 (i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_desc to i32 (i32, i32, i32, i32, i32, ...)*)(i32 %111, i32 %112, i32 -65536, i32 65535, i32 147)
  store i32 %113, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %160, label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %3, align 4
  %117 = load i32, i32* @VM_REG_GUEST_SS, align 4
  %118 = call i32 (i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_desc to i32 (i32, i32, i32, i32, i32, ...)*)(i32 %116, i32 %117, i32 0, i32 65535, i32 147)
  store i32 %118, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %160, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* @VM_REG_GUEST_DS, align 4
  %123 = call i32 (i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_desc to i32 (i32, i32, i32, i32, i32, ...)*)(i32 %121, i32 %122, i32 0, i32 65535, i32 147)
  store i32 %123, i32* %4, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %160, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* @VM_REG_GUEST_ES, align 4
  %128 = call i32 (i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_desc to i32 (i32, i32, i32, i32, i32, ...)*)(i32 %126, i32 %127, i32 0, i32 65535, i32 147)
  store i32 %128, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %160, label %130

130:                                              ; preds = %125
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* @VM_REG_GUEST_FS, align 4
  %133 = call i32 (i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_desc to i32 (i32, i32, i32, i32, i32, ...)*)(i32 %131, i32 %132, i32 0, i32 65535, i32 147)
  store i32 %133, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %160, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @VM_REG_GUEST_GS, align 4
  %138 = call i32 (i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_desc to i32 (i32, i32, i32, i32, i32, ...)*)(i32 %136, i32 %137, i32 0, i32 65535, i32 147)
  store i32 %138, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* @VM_REG_GUEST_GDTR, align 4
  %143 = call i32 (i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_desc to i32 (i32, i32, i32, i32, i32, ...)*)(i32 %141, i32 %142, i32 0, i32 65535, i32 0)
  store i32 %143, i32* %4, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %160, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %3, align 4
  %147 = load i32, i32* @VM_REG_GUEST_IDTR, align 4
  %148 = call i32 (i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_desc to i32 (i32, i32, i32, i32, i32, ...)*)(i32 %146, i32 %147, i32 0, i32 65535, i32 0)
  store i32 %148, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %145
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* @VM_REG_GUEST_TR, align 4
  %153 = call i32 (i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_desc to i32 (i32, i32, i32, i32, i32, ...)*)(i32 %151, i32 %152, i32 0, i32 0, i32 139)
  store i32 %153, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @VM_REG_GUEST_LDTR, align 4
  %158 = call i32 (i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @xh_vm_set_desc to i32 (i32, i32, i32, i32, i32, ...)*)(i32 %156, i32 %157, i32 0, i32 65535, i32 130)
  store i32 %158, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155, %150, %145, %140, %135, %130, %125, %120, %115, %110, %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %14, %9, %1
  %161 = load i32, i32* %4, align 4
  store i32 %161, i32* %2, align 4
  br label %163

162:                                              ; preds = %155
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %160
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @xh_vm_set_register(...) #1

declare dso_local i32 @xh_vm_set_desc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
