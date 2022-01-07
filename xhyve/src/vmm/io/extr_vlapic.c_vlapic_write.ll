; ModuleID = '/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_write.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/vmm/io/extr_vlapic.c_vlapic_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { %struct.LAPIC* }
%struct.LAPIC = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@XHYVE_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"vlapic_write: invalid offset %#llx\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"vlapic write offset %#llx, data %#llx\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"MMIO write of %#llx to offset %#llx in x2APIC mode\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"x2APIC MSR write of %#llx to offset %#llx in xAPIC mode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlapic_write(%struct.vlapic* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vlapic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.LAPIC*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  store %struct.vlapic* %0, %struct.vlapic** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %16 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %15, i32 0, i32 0
  %17 = load %struct.LAPIC*, %struct.LAPIC** %16, align 8
  store %struct.LAPIC* %17, %struct.LAPIC** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @XHYVE_PAGE_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i1 [ false, %5 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 @KASSERT(i32 %27, i8* %30)
  %32 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @VLAPIC_CTR2(%struct.vlapic* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %37, 64
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %178

40:                                               ; preds = %25
  %41 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %42 = call i64 @x2apic(%struct.vlapic* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @VLAPIC_CTR2(%struct.vlapic* %48, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  store i32 0, i32* %6, align 4
  br label %178

52:                                               ; preds = %44, %40
  %53 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %54 = call i64 @x2apic(%struct.vlapic* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @VLAPIC_CTR2(%struct.vlapic* %60, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62)
  store i32 0, i32* %6, align 4
  br label %178

64:                                               ; preds = %56, %52
  store i32 0, i32* %14, align 4
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %175 [
    i32 167, label %66
    i32 129, label %74
    i32 172, label %79
    i32 150, label %82
    i32 173, label %90
    i32 143, label %98
    i32 168, label %106
    i32 169, label %124
    i32 174, label %131
    i32 138, label %131
    i32 142, label %131
    i32 147, label %131
    i32 149, label %131
    i32 148, label %131
    i32 171, label %131
    i32 139, label %146
    i32 140, label %154
    i32 170, label %162
    i32 144, label %165
    i32 128, label %174
    i32 175, label %174
    i32 146, label %174
    i32 145, label %174
    i32 158, label %174
    i32 157, label %174
    i32 156, label %174
    i32 155, label %174
    i32 154, label %174
    i32 153, label %174
    i32 152, label %174
    i32 151, label %174
    i32 137, label %174
    i32 136, label %174
    i32 135, label %174
    i32 134, label %174
    i32 133, label %174
    i32 132, label %174
    i32 131, label %174
    i32 130, label %174
    i32 166, label %174
    i32 165, label %174
    i32 164, label %174
    i32 163, label %174
    i32 162, label %174
    i32 161, label %174
    i32 160, label %174
    i32 159, label %174
    i32 141, label %174
  ]

66:                                               ; preds = %64
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.LAPIC*, %struct.LAPIC** %12, align 8
  %71 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  %72 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %73 = call i32 @vlapic_id_write_handler(%struct.vlapic* %72)
  br label %176

74:                                               ; preds = %64
  %75 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 255
  %78 = call i32 @vlapic_set_tpr(%struct.vlapic* %75, i32 %77)
  br label %176

79:                                               ; preds = %64
  %80 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %81 = call i32 @vlapic_process_eoi(%struct.vlapic* %80)
  br label %176

82:                                               ; preds = %64
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.LAPIC*, %struct.LAPIC** %12, align 8
  %87 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %86, i32 0, i32 6
  store i8* %85, i8** %87, align 8
  %88 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %89 = call i32 @vlapic_ldr_write_handler(%struct.vlapic* %88)
  br label %176

90:                                               ; preds = %64
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.LAPIC*, %struct.LAPIC** %12, align 8
  %95 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %97 = call i32 @vlapic_dfr_write_handler(%struct.vlapic* %96)
  br label %176

98:                                               ; preds = %64
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.LAPIC*, %struct.LAPIC** %12, align 8
  %103 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %102, i32 0, i32 4
  store i8* %101, i8** %103, align 8
  %104 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %105 = call i32 @vlapic_svr_write_handler(%struct.vlapic* %104)
  br label %176

106:                                              ; preds = %64
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.LAPIC*, %struct.LAPIC** %12, align 8
  %111 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %113 = call i64 @x2apic(%struct.vlapic* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = load i32, i32* %10, align 4
  %117 = ashr i32 %116, 32
  %118 = load %struct.LAPIC*, %struct.LAPIC** %12, align 8
  %119 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %115, %106
  %121 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = call i32 @vlapic_icrlo_write_handler(%struct.vlapic* %121, i32* %122)
  store i32 %123, i32* %14, align 4
  br label %176

124:                                              ; preds = %64
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = ptrtoint i8* %127 to i32
  %129 = load %struct.LAPIC*, %struct.LAPIC** %12, align 8
  %130 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  br label %176

131:                                              ; preds = %64, %64, %64, %64, %64, %64, %64
  %132 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = inttoptr i64 %134 to i8*
  %136 = call i8** @vlapic_get_lvtptr(%struct.vlapic* %132, i8* %135)
  store i8** %136, i8*** %13, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = load i8**, i8*** %13, align 8
  store i8* %139, i8** %140, align 8
  %141 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = call i32 @vlapic_lvt_write_handler(%struct.vlapic* %141, i8* %144)
  br label %176

146:                                              ; preds = %64
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = load %struct.LAPIC*, %struct.LAPIC** %12, align 8
  %151 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  %152 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %153 = call i32 @vlapic_icrtmr_write_handler(%struct.vlapic* %152)
  br label %176

154:                                              ; preds = %64
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.LAPIC*, %struct.LAPIC** %12, align 8
  %159 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %161 = call i32 @vlapic_dcr_write_handler(%struct.vlapic* %160)
  br label %176

162:                                              ; preds = %64
  %163 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %164 = call i32 @vlapic_esr_write_handler(%struct.vlapic* %163)
  br label %176

165:                                              ; preds = %64
  %166 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %167 = call i64 @x2apic(%struct.vlapic* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load %struct.vlapic*, %struct.vlapic** %7, align 8
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @vlapic_self_ipi_handler(%struct.vlapic* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %165
  br label %176

174:                                              ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64
  br label %175

175:                                              ; preds = %64, %174
  br label %176

176:                                              ; preds = %175, %173, %162, %154, %146, %131, %124, %120, %98, %90, %82, %79, %74, %66
  %177 = load i32, i32* %14, align 4
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %176, %59, %47, %39
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VLAPIC_CTR2(%struct.vlapic*, i8*, i32, i32) #1

declare dso_local i64 @x2apic(%struct.vlapic*) #1

declare dso_local i32 @vlapic_id_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_set_tpr(%struct.vlapic*, i32) #1

declare dso_local i32 @vlapic_process_eoi(%struct.vlapic*) #1

declare dso_local i32 @vlapic_ldr_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_dfr_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_svr_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_icrlo_write_handler(%struct.vlapic*, i32*) #1

declare dso_local i8** @vlapic_get_lvtptr(%struct.vlapic*, i8*) #1

declare dso_local i32 @vlapic_lvt_write_handler(%struct.vlapic*, i8*) #1

declare dso_local i32 @vlapic_icrtmr_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_dcr_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_esr_write_handler(%struct.vlapic*) #1

declare dso_local i32 @vlapic_self_ipi_handler(%struct.vlapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
