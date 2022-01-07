; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_cgroup_cpu_shares.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_cgroup_cpu_shares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CGROUP_CPU_SHARES_MIN = common dso_local global i64 0, align 8
@CGROUP_CPU_SHARES_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"shares value out of range.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8*)* @oci_cgroup_cpu_shares to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_cgroup_cpu_shares(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** %10, align 8
  %14 = load i64*, i64** %10, align 8
  %15 = call i32 @assert(i64* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @json_variant_unsigned(i32* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @CGROUP_CPU_SHARES_MIN, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @CGROUP_CPU_SHARES_MAX, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ERANGE, align 4
  %29 = call i32 @SYNTHETIC_ERRNO(i32 %28)
  %30 = call i32 @json_log(i32* %26, i32 %27, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %5, align 4
  br label %34

31:                                               ; preds = %21
  %32 = load i64, i64* %11, align 8
  %33 = load i64*, i64** %10, align 8
  store i64 %32, i64* %33, align 8
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i64 @json_variant_unsigned(i32*) #1

declare dso_local i32 @json_log(i32*, i32, i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
