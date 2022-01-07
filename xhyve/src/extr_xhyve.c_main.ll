; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_main.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_xhyve.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i32 0, align 4
@guest_ncpus = common dso_local global i32 0, align 4
@print_mac = common dso_local global i32 0, align 4
@MB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"behvuwxMACHPWY:f:F:g:c:s:m:l:U:\00", align 1
@acpi = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@pidfile = common dso_local global i8* null, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"invalid lpc device configuration '%s'\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid memsize '%s'\00", align 1
@guest_vmexit_on_hlt = common dso_local global i32 0, align 4
@guest_vmexit_on_pause = common dso_local global i32 0, align 4
@strictio = common dso_local global i32 0, align 4
@guest_uuid_str = common dso_local global i8* null, align 8
@strictmsr = common dso_local global i32 0, align 4
@virtio_msix = common dso_local global i32 0, align 4
@x2apic_mode = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to create VM (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Invalid guest vCPUs (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"%d vCPUs requested but only %d available\0A\00", align 1
@VM_MMAP_ALL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Unable to setup memory (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"init_msr error %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"pidfile error %d\0A\00", align 1
@BSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @basename(i8* %19)
  store i32 %20, i32* @progname, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* @guest_ncpus, align 4
  store i32 0, i32* @print_mac, align 4
  %21 = load i32, i32* @MB, align 4
  %22 = mul nsw i32 256, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %16, align 8
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %92, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %93

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %90 [
    i32 65, label %31
    i32 98, label %32
    i32 99, label %33
    i32 67, label %36
    i32 102, label %37
    i32 70, label %44
    i32 103, label %46
    i32 108, label %49
    i32 115, label %58
    i32 109, label %65
    i32 77, label %75
    i32 72, label %76
    i32 80, label %77
    i32 101, label %78
    i32 117, label %79
    i32 85, label %80
    i32 119, label %82
    i32 87, label %83
    i32 120, label %84
    i32 89, label %85
    i32 118, label %86
    i32 104, label %88
  ]

31:                                               ; preds = %29
  store i32 1, i32* @acpi, align 4
  br label %92

32:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %92

33:                                               ; preds = %29
  %34 = load i8*, i8** @optarg, align 8
  %35 = call i32 @atoi(i8* %34)
  store i32 %35, i32* @guest_ncpus, align 4
  br label %92

36:                                               ; preds = %29
  store i32 1, i32* %11, align 4
  br label %92

37:                                               ; preds = %29
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i32 @firmware_parse(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  br label %92

44:                                               ; preds = %29
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** @pidfile, align 8
  br label %92

46:                                               ; preds = %29
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @atoi(i8* %47)
  store i32 %48, i32* %8, align 4
  br label %92

49:                                               ; preds = %29
  %50 = load i8*, i8** @optarg, align 8
  %51 = call i32 @lpc_device_parse(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @EX_USAGE, align 4
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @errx(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %92

58:                                               ; preds = %29
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i32 @pci_parse_slot(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %58
  br label %92

65:                                               ; preds = %29
  %66 = load i8*, i8** @optarg, align 8
  %67 = call i32 @parse_memsize(i8* %66, i64* %16)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @EX_USAGE, align 4
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i32 @errx(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %70, %65
  br label %92

75:                                               ; preds = %29
  store i32 1, i32* @print_mac, align 4
  br label %92

76:                                               ; preds = %29
  store i32 1, i32* @guest_vmexit_on_hlt, align 4
  br label %92

77:                                               ; preds = %29
  store i32 1, i32* @guest_vmexit_on_pause, align 4
  br label %92

78:                                               ; preds = %29
  store i32 1, i32* @strictio, align 4
  br label %92

79:                                               ; preds = %29
  store i32 0, i32* %14, align 4
  br label %92

80:                                               ; preds = %29
  %81 = load i8*, i8** @optarg, align 8
  store i8* %81, i8** @guest_uuid_str, align 8
  br label %92

82:                                               ; preds = %29
  store i32 0, i32* @strictmsr, align 4
  br label %92

83:                                               ; preds = %29
  store i32 0, i32* @virtio_msix, align 4
  br label %92

84:                                               ; preds = %29
  store i32 1, i32* @x2apic_mode, align 4
  br label %92

85:                                               ; preds = %29
  store i32 0, i32* %13, align 4
  br label %92

86:                                               ; preds = %29
  %87 = call i32 (...) @show_version()
  br label %88

88:                                               ; preds = %29, %86
  %89 = call i32 @usage(i32 0)
  br label %90

90:                                               ; preds = %29, %88
  %91 = call i32 @usage(i32 1)
  br label %92

92:                                               ; preds = %90, %85, %84, %83, %82, %80, %79, %78, %77, %76, %75, %74, %64, %57, %46, %44, %43, %36, %33, %32, %31
  br label %24

93:                                               ; preds = %24
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = call i32* (...) @lpc_bootrom()
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @usage(i32 1)
  br label %101

101:                                              ; preds = %99, %96, %93
  %102 = call i32 (...) @xh_vm_create()
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* @stderr, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = call i32 @exit(i32 1) #3
  unreachable

110:                                              ; preds = %101
  %111 = load i32, i32* @guest_ncpus, align 4
  %112 = icmp slt i32 %111, 1
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* @stderr, align 4
  %115 = load i32, i32* @guest_ncpus, align 4
  %116 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = call i32 @exit(i32 1) #3
  unreachable

118:                                              ; preds = %110
  %119 = call i32 (...) @num_vcpus_allowed()
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* @guest_ncpus, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load i32, i32* @stderr, align 4
  %125 = load i32, i32* @guest_ncpus, align 4
  %126 = load i32, i32* %12, align 4
  %127 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %125, i32 %126)
  %128 = call i32 @exit(i32 1) #3
  unreachable

129:                                              ; preds = %118
  %130 = load i64, i64* %16, align 8
  %131 = load i32, i32* @VM_MMAP_ALL, align 4
  %132 = call i32 @xh_vm_setup_memory(i64 %130, i32 %131)
  store i32 %132, i32* %7, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load i32, i32* @stderr, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  %139 = call i32 @exit(i32 1) #3
  unreachable

140:                                              ; preds = %129
  %141 = call i32 (...) @init_msr()
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i32, i32* @stderr, align 4
  %146 = load i32, i32* %7, align 4
  %147 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  %148 = call i32 @exit(i32 1) #3
  unreachable

149:                                              ; preds = %140
  %150 = call i32 (...) @setup_pidfile()
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i32, i32* @stderr, align 4
  %155 = load i32, i32* %7, align 4
  %156 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %155)
  %157 = call i32 @exit(i32 1) #3
  unreachable

158:                                              ; preds = %149
  %159 = call i32 (...) @init_mem()
  %160 = call i32 (...) @init_inout()
  %161 = call i32 (...) @atkbdc_init()
  %162 = call i32 (...) @pci_irq_init()
  %163 = call i32 (...) @ioapic_init()
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @rtc_init(i32 %164)
  %166 = call i32 (...) @sci_init()
  %167 = call i64 (...) @init_pci()
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %158
  %170 = call i32 @exit(i32 1) #3
  unreachable

171:                                              ; preds = %158
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @init_dbgport(i32 %175)
  br label %177

177:                                              ; preds = %174, %171
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = call i32 (...) @init_bvmcons()
  br label %182

182:                                              ; preds = %180, %177
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i32, i32* @guest_ncpus, align 4
  %187 = call i32 @mptable_build(i32 %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = call i32 @exit(i32 1) #3
  unreachable

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192, %182
  %194 = call i32 (...) @smbios_build()
  store i32 %194, i32* %7, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp eq i32 %195, 0
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  %199 = load i32, i32* @acpi, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %193
  %202 = load i32, i32* @guest_ncpus, align 4
  %203 = call i32 @acpi_build(i32 %202)
  store i32 %203, i32* %7, align 4
  %204 = load i32, i32* %7, align 4
  %205 = icmp eq i32 %204, 0
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  br label %208

208:                                              ; preds = %201, %193
  store i64 0, i64* %15, align 8
  %209 = load i32, i32* @BSP, align 4
  %210 = load i32, i32* @BSP, align 4
  %211 = load i64, i64* %15, align 8
  %212 = call i32 @vcpu_add(i32 %209, i32 %210, i64 %211)
  %213 = call i32 (...) @mevent_dispatch()
  %214 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @firmware_parse(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @lpc_device_parse(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @pci_parse_slot(i8*) #1

declare dso_local i32 @parse_memsize(i8*, i64*) #1

declare dso_local i32 @show_version(...) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32* @lpc_bootrom(...) #1

declare dso_local i32 @xh_vm_create(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @num_vcpus_allowed(...) #1

declare dso_local i32 @xh_vm_setup_memory(i64, i32) #1

declare dso_local i32 @init_msr(...) #1

declare dso_local i32 @setup_pidfile(...) #1

declare dso_local i32 @init_mem(...) #1

declare dso_local i32 @init_inout(...) #1

declare dso_local i32 @atkbdc_init(...) #1

declare dso_local i32 @pci_irq_init(...) #1

declare dso_local i32 @ioapic_init(...) #1

declare dso_local i32 @rtc_init(i32) #1

declare dso_local i32 @sci_init(...) #1

declare dso_local i64 @init_pci(...) #1

declare dso_local i32 @init_dbgport(i32) #1

declare dso_local i32 @init_bvmcons(...) #1

declare dso_local i32 @mptable_build(i32) #1

declare dso_local i32 @smbios_build(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @acpi_build(i32) #1

declare dso_local i32 @vcpu_add(i32, i32, i64) #1

declare dso_local i32 @mevent_dispatch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
