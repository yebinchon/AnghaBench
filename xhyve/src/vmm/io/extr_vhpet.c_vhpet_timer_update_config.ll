; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_timer_update_config.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vhpet.c_vhpet_timer_update_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhpet = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [43 x i8] c"vhpet timer %d isr should not be asserted\0A\00", align 1
@HPET_TCAP_RO_MASK = common dso_local global i32 0, align 4
@HPET_TCNF_32MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"hpet t%d cap_config set to 0x%016llx\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"hpet t%d configured invalid irq %d, allowed_irqs 0x%08x\00", align 1
@HPET_TCNF_INT_ROUTE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"timer %d isr asserted to ioapic pin %d\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"hpet t%d isr cleared due to configuration change\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhpet*, i32, i32, i32)* @vhpet_timer_update_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhpet_timer_update_config(%struct.vhpet* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vhpet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vhpet* %0, %struct.vhpet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @vhpet_timer_msi_enabled(%struct.vhpet* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @vhpet_timer_edge_trig(%struct.vhpet* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19, %4
  %25 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %26 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @xhyve_abort(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @vhpet_timer_ioapic_pin(%struct.vhpet* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %41 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @update_register(i32* %14, i32 %49, i32 %50)
  %52 = load i32, i32* @HPET_TCAP_RO_MASK, align 4
  %53 = load i32, i32* @HPET_TCNF_32MODE, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %14, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @HPET_TCAP_RO_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %36
  br label %202

67:                                               ; preds = %36
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %70 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 8
  %76 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %77 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @VM_CTR2(i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %83 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = ashr i32 %89, 32
  store i32 %90, i32* %12, align 4
  %91 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @vhpet_timer_ioapic_pin(%struct.vhpet* %91, i32 %92)
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %122

96:                                               ; preds = %67
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %11, align 4
  %99 = shl i32 1, %98
  %100 = and i32 %97, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %96
  %103 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %104 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @VM_CTR3(i32 %105, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %107, i32 %108)
  store i32 0, i32* %11, align 4
  %110 = load i64, i64* @HPET_TCNF_INT_ROUTE, align 8
  %111 = trunc i64 %110 to i32
  %112 = xor i32 %111, -1
  %113 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %114 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %112
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %102, %96, %67
  %123 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @vhpet_periodic_timer(%struct.vhpet* %123, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %122
  %128 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %129 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %127, %122
  %136 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %137 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = shl i32 1, %139
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %202

143:                                              ; preds = %135
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = call i32 @KASSERT(i32 %146, i8* %150)
  %152 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @vhpet_timer_interrupt_enabled(%struct.vhpet* %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %143
  store i32 1, i32* %9, align 4
  br label %180

157:                                              ; preds = %143
  %158 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i64 @vhpet_timer_msi_enabled(%struct.vhpet* %158, i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i32 1, i32* %9, align 4
  br label %179

163:                                              ; preds = %157
  %164 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i64 @vhpet_timer_edge_trig(%struct.vhpet* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 1, i32* %9, align 4
  br label %178

169:                                              ; preds = %163
  %170 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @vhpet_timer_ioapic_pin(%struct.vhpet* %170, i32 %171)
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %169
  store i32 1, i32* %9, align 4
  br label %177

176:                                              ; preds = %169
  store i32 0, i32* %9, align 4
  br label %177

177:                                              ; preds = %176, %175
  br label %178

178:                                              ; preds = %177, %168
  br label %179

179:                                              ; preds = %178, %162
  br label %180

180:                                              ; preds = %179, %156
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %201

183:                                              ; preds = %180
  %184 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %185 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @VM_CTR1(i32 %186, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %187)
  %189 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %190 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @vioapic_deassert_irq(i32 %191, i32 %192)
  %194 = load i32, i32* %6, align 4
  %195 = shl i32 1, %194
  %196 = xor i32 %195, -1
  %197 = load %struct.vhpet*, %struct.vhpet** %5, align 8
  %198 = getelementptr inbounds %struct.vhpet, %struct.vhpet* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = and i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %183, %180
  br label %202

202:                                              ; preds = %66, %201, %135
  ret void
}

declare dso_local i64 @vhpet_timer_msi_enabled(%struct.vhpet*, i32) #1

declare dso_local i64 @vhpet_timer_edge_trig(%struct.vhpet*, i32) #1

declare dso_local i32 @xhyve_abort(i8*, i32) #1

declare dso_local i32 @vhpet_timer_ioapic_pin(%struct.vhpet*, i32) #1

declare dso_local i32 @update_register(i32*, i32, i32) #1

declare dso_local i32 @VM_CTR2(i32, i8*, i32, i32) #1

declare dso_local i32 @VM_CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @vhpet_periodic_timer(%struct.vhpet*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vhpet_timer_interrupt_enabled(%struct.vhpet*, i32) #1

declare dso_local i32 @VM_CTR1(i32, i8*, i32) #1

declare dso_local i32 @vioapic_deassert_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
