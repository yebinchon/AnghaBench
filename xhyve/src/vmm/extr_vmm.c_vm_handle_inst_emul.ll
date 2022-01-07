; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_handle_inst_emul.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/extr_vmm.c_vm_handle_inst_emul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { %struct.vcpu* }
%struct.vcpu = type { i32, %struct.vm_exit }
%struct.vm_exit = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i32, %struct.vm_guest_paging, %struct.vie }
%struct.vm_guest_paging = type { i32 }
%struct.vie = type { i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"inst_emul fault accessing gpa %#llx\00", align 1
@VIE_INST_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error decoding instruction at %#llx\00", align 1
@DEFAULT_APIC_BASE = common dso_local global i64 0, align 8
@XHYVE_PAGE_SIZE = common dso_local global i64 0, align 8
@lapic_mmio_read = common dso_local global i32 0, align 4
@lapic_mmio_write = common dso_local global i32 0, align 4
@VIOAPIC_BASE = common dso_local global i64 0, align 8
@VIOAPIC_SIZE = common dso_local global i64 0, align 8
@vioapic_mmio_read = common dso_local global i32 0, align 4
@vioapic_mmio_write = common dso_local global i32 0, align 4
@VHPET_BASE = common dso_local global i64 0, align 8
@VHPET_SIZE = common dso_local global i64 0, align 8
@vhpet_mmio_read = common dso_local global i32 0, align 4
@vhpet_mmio_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm*, i32, i32*)* @vm_handle_inst_emul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_handle_inst_emul(%struct.vm* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vie*, align 8
  %9 = alloca %struct.vcpu*, align 8
  %10 = alloca %struct.vm_exit*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.vm_guest_paging*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.vm* %0, %struct.vm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %22 = load %struct.vm*, %struct.vm** %5, align 8
  %23 = getelementptr inbounds %struct.vm, %struct.vm* %22, i32 0, i32 0
  %24 = load %struct.vcpu*, %struct.vcpu** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %24, i64 %26
  store %struct.vcpu* %27, %struct.vcpu** %9, align 8
  %28 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %29 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %28, i32 0, i32 1
  store %struct.vm_exit* %29, %struct.vm_exit** %10, align 8
  %30 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %31 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %36 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %41 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  %45 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %46 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %18, align 4
  %50 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %51 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  store %struct.vie* %53, %struct.vie** %8, align 8
  %54 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %55 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 4
  store %struct.vm_guest_paging* %57, %struct.vm_guest_paging** %14, align 8
  %58 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %14, align 8
  %59 = getelementptr inbounds %struct.vm_guest_paging, %struct.vm_guest_paging* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %17, align 4
  %61 = load %struct.vm*, %struct.vm** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @VCPU_CTR1(%struct.vm* %61, i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %63)
  %65 = load %struct.vie*, %struct.vie** %8, align 8
  %66 = getelementptr inbounds %struct.vie, %struct.vie* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %93

69:                                               ; preds = %3
  %70 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %71 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %76 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  br label %80

78:                                               ; preds = %69
  %79 = load i32, i32* @VIE_INST_SIZE, align 4
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i32 [ %77, %74 ], [ %79, %78 ]
  store i32 %81, i32* %21, align 4
  %82 = load %struct.vm*, %struct.vm** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %14, align 8
  %85 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %86 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i32, i32* %21, align 4
  %91 = load %struct.vie*, %struct.vie** %8, align 8
  %92 = call i32 @vmm_fetch_instruction(%struct.vm* %82, i32 %83, %struct.vm_guest_paging* %84, i64 %89, i32 %90, %struct.vie* %91, i32* %20)
  store i32 %92, i32* %19, align 4
  br label %94

93:                                               ; preds = %3
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %94

94:                                               ; preds = %93, %80
  %95 = load i32, i32* %19, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %19, align 4
  store i32 %101, i32* %4, align 4
  br label %193

102:                                              ; preds = %97
  %103 = load %struct.vm*, %struct.vm** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load i64, i64* %11, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load %struct.vie*, %struct.vie** %8, align 8
  %109 = call i64 @vmm_decode_instruction(%struct.vm* %103, i32 %104, i64 %105, i32 %106, i32 %107, %struct.vie* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %102
  %112 = load %struct.vm*, %struct.vm** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %115 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %13, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @VCPU_CTR1(%struct.vm* %112, i32 %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %118)
  %120 = load i32*, i32** %7, align 8
  store i32 1, i32* %120, align 4
  store i32 0, i32* %4, align 4
  br label %193

121:                                              ; preds = %102
  %122 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %123 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load %struct.vie*, %struct.vie** %8, align 8
  %128 = getelementptr inbounds %struct.vie, %struct.vie* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.vm_exit*, %struct.vm_exit** %10, align 8
  %131 = getelementptr inbounds %struct.vm_exit, %struct.vm_exit* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = load %struct.vie*, %struct.vie** %8, align 8
  %133 = getelementptr inbounds %struct.vie, %struct.vie* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.vcpu*, %struct.vcpu** %9, align 8
  %136 = getelementptr inbounds %struct.vcpu, %struct.vcpu* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %126, %121
  %140 = load i64, i64* %12, align 8
  %141 = load i64, i64* @DEFAULT_APIC_BASE, align 8
  %142 = icmp sge i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* @DEFAULT_APIC_BASE, align 8
  %146 = load i64, i64* @XHYVE_PAGE_SIZE, align 8
  %147 = add nsw i64 %145, %146
  %148 = icmp slt i64 %144, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i32, i32* @lapic_mmio_read, align 4
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* @lapic_mmio_write, align 4
  store i32 %151, i32* %16, align 4
  br label %182

152:                                              ; preds = %143, %139
  %153 = load i64, i64* %12, align 8
  %154 = load i64, i64* @VIOAPIC_BASE, align 8
  %155 = icmp sge i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* @VIOAPIC_BASE, align 8
  %159 = load i64, i64* @VIOAPIC_SIZE, align 8
  %160 = add nsw i64 %158, %159
  %161 = icmp slt i64 %157, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i32, i32* @vioapic_mmio_read, align 4
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* @vioapic_mmio_write, align 4
  store i32 %164, i32* %16, align 4
  br label %181

165:                                              ; preds = %156, %152
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* @VHPET_BASE, align 8
  %168 = icmp sge i64 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = load i64, i64* %12, align 8
  %171 = load i64, i64* @VHPET_BASE, align 8
  %172 = load i64, i64* @VHPET_SIZE, align 8
  %173 = add nsw i64 %171, %172
  %174 = icmp slt i64 %170, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load i32, i32* @vhpet_mmio_read, align 4
  store i32 %176, i32* %15, align 4
  %177 = load i32, i32* @vhpet_mmio_write, align 4
  store i32 %177, i32* %16, align 4
  br label %180

178:                                              ; preds = %169, %165
  %179 = load i32*, i32** %7, align 8
  store i32 1, i32* %179, align 4
  store i32 0, i32* %4, align 4
  br label %193

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180, %162
  br label %182

182:                                              ; preds = %181, %149
  %183 = load %struct.vm*, %struct.vm** %5, align 8
  %184 = load i32, i32* %6, align 4
  %185 = load i64, i64* %12, align 8
  %186 = load %struct.vie*, %struct.vie** %8, align 8
  %187 = load %struct.vm_guest_paging*, %struct.vm_guest_paging** %14, align 8
  %188 = load i32, i32* %15, align 4
  %189 = load i32, i32* %16, align 4
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 @vmm_emulate_instruction(%struct.vm* %183, i32 %184, i64 %185, %struct.vie* %186, %struct.vm_guest_paging* %187, i32 %188, i32 %189, i32* %190)
  store i32 %191, i32* %19, align 4
  %192 = load i32, i32* %19, align 4
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %182, %178, %111, %100
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i32 @VCPU_CTR1(%struct.vm*, i32, i8*, i64) #1

declare dso_local i32 @vmm_fetch_instruction(%struct.vm*, i32, %struct.vm_guest_paging*, i64, i32, %struct.vie*, i32*) #1

declare dso_local i64 @vmm_decode_instruction(%struct.vm*, i32, i64, i32, i32, %struct.vie*) #1

declare dso_local i32 @vmm_emulate_instruction(%struct.vm*, i32, i64, %struct.vie*, %struct.vm_guest_paging*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
