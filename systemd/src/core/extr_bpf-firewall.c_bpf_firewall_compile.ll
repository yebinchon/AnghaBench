; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_bpf-firewall.c_bpf_firewall_compile.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_bpf-firewall.c_bpf_firewall_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i8*, i8*, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BPF_FIREWALL_UNSUPPORTED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"BPF firewalling not supported on this manager, proceeding without.\00", align 1
@BPF_FIREWALL_SUPPORTED_WITH_MULTI = common dso_local global i32 0, align 4
@UNIT_SLICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [91 x i8] c"BPF_F_ALLOW_MULTI is not supported on this manager, not doing BPF firewall on slice units.\00", align 1
@ACCESS_ALLOWED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Preparation of eBPF allow maps failed: %m\00", align 1
@ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Preparation of eBPF deny maps failed: %m\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Preparation of eBPF accounting maps failed: %m\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Compilation for ingress BPF program failed: %m\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"Compilation for egress BPF program failed: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_firewall_compile(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = call i32 @assert(%struct.TYPE_12__* %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = call %struct.TYPE_13__* @unit_get_cgroup_context(%struct.TYPE_12__* %11)
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = icmp ne %struct.TYPE_13__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %162

18:                                               ; preds = %1
  %19 = call i32 (...) @bpf_firewall_supported()
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %162

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @BPF_FIREWALL_UNSUPPORTED, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = call i32 @SYNTHETIC_ERRNO(i32 %30)
  %32 = call i32 @log_unit_debug_errno(%struct.TYPE_12__* %29, i32 %31, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %2, align 4
  br label %162

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @BPF_FIREWALL_SUPPORTED_WITH_MULTI, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @UNIT_SLICE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %45 = load i32, i32* @EOPNOTSUPP, align 4
  %46 = call i32 @SYNTHETIC_ERRNO(i32 %45)
  %47 = call i32 @log_unit_debug_errno(%struct.TYPE_12__* %44, i32 %46, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0))
  store i32 %47, i32* %2, align 4
  br label %162

48:                                               ; preds = %37, %33
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = call i8* @bpf_program_unref(i8* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* @bpf_program_unref(i8* %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @safe_close(i8* %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 8
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 6
  %69 = load i8*, i8** %68, align 8
  %70 = call i8* @safe_close(i8* %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 7
  %75 = load i8*, i8** %74, align 8
  %76 = call i8* @safe_close(i8* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 7
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 5
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @safe_close(i8* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @UNIT_SLICE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %119

90:                                               ; preds = %48
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = load i32, i32* @ACCESS_ALLOWED, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 7
  %97 = call i32 @bpf_firewall_prepare_access_maps(%struct.TYPE_12__* %91, i32 %92, i8** %94, i8** %96, i32* %7)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @log_unit_error_errno(%struct.TYPE_12__* %101, i32 %102, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  store i32 %103, i32* %2, align 4
  br label %162

104:                                              ; preds = %90
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %106 = load i32, i32* @ACCESS_DENIED, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 5
  %111 = call i32 @bpf_firewall_prepare_access_maps(%struct.TYPE_12__* %105, i32 %106, i8** %108, i8** %110, i32* %8)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %104
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @log_unit_error_errno(%struct.TYPE_12__* %115, i32 %116, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 %117, i32* %2, align 4
  br label %162

118:                                              ; preds = %104
  br label %119

119:                                              ; preds = %118, %48
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  %128 = call i32 @bpf_firewall_prepare_accounting_maps(%struct.TYPE_12__* %120, i32 %123, i32* %125, i32* %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %119
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @log_unit_error_errno(%struct.TYPE_12__* %132, i32 %133, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  store i32 %134, i32* %2, align 4
  br label %162

135:                                              ; preds = %119
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @bpf_firewall_compile_bpf(%struct.TYPE_12__* %136, i32 1, i8** %138, i32 %139, i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %135
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @log_unit_error_errno(%struct.TYPE_12__* %145, i32 %146, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  store i32 %147, i32* %2, align 4
  br label %162

148:                                              ; preds = %135
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @bpf_firewall_compile_bpf(%struct.TYPE_12__* %149, i32 0, i8** %151, i32 %152, i32 %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %148
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @log_unit_error_errno(%struct.TYPE_12__* %158, i32 %159, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  store i32 %160, i32* %2, align 4
  br label %162

161:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %161, %157, %144, %131, %114, %100, %43, %28, %22, %15
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @assert(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @unit_get_cgroup_context(%struct.TYPE_12__*) #1

declare dso_local i32 @bpf_firewall_supported(...) #1

declare dso_local i32 @log_unit_debug_errno(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i8* @bpf_program_unref(i8*) #1

declare dso_local i8* @safe_close(i8*) #1

declare dso_local i32 @bpf_firewall_prepare_access_maps(%struct.TYPE_12__*, i32, i8**, i8**, i32*) #1

declare dso_local i32 @log_unit_error_errno(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local i32 @bpf_firewall_prepare_accounting_maps(%struct.TYPE_12__*, i32, i32*, i32*) #1

declare dso_local i32 @bpf_firewall_compile_bpf(%struct.TYPE_12__*, i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
