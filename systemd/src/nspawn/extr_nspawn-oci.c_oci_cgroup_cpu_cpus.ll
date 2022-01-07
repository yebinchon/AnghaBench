; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_cgroup_cpu_cpus.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_cgroup_cpu_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_data = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"Failed to parse CPU set specification: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8*)* @oci_cgroup_cpu_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_cgroup_cpu_cpus(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.cpu_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.cpu_data*
  store %struct.cpu_data* %15, %struct.cpu_data** %10, align 8
  %16 = load %struct.cpu_data*, %struct.cpu_data** %10, align 8
  %17 = call i32 @assert(%struct.cpu_data* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call i8* @json_variant_string(i32* %18)
  store i8* %19, i8** %12, align 8
  %20 = call i32 @assert_se(i8* %19)
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @parse_cpu_set(i8* %21, i32* %11)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = call i32 @json_log(i32* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %5, align 4
  br label %38

31:                                               ; preds = %4
  %32 = load %struct.cpu_data*, %struct.cpu_data** %10, align 8
  %33 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %32, i32 0, i32 0
  %34 = call i32 @cpu_set_reset(i32* %33)
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.cpu_data*, %struct.cpu_data** %10, align 8
  %37 = getelementptr inbounds %struct.cpu_data, %struct.cpu_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %31, %25
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @assert(%struct.cpu_data*) #1

declare dso_local i32 @assert_se(i8*) #1

declare dso_local i8* @json_variant_string(i32*) #1

declare dso_local i32 @parse_cpu_set(i8*, i32*) #1

declare dso_local i32 @json_log(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @cpu_set_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
