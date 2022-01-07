; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_cgroup_memory_limit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_cgroup_memory_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Memory limit is not an unsigned integer\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Memory limit too large: %ji\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8*)* @oci_cgroup_memory_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_cgroup_memory_limit(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
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
  %17 = call i64 @json_variant_is_negative(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i64, i64* @UINT64_MAX, align 8
  %21 = load i64*, i64** %10, align 8
  store i64 %20, i64* %21, align 8
  store i32 0, i32* %5, align 4
  br label %48

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @json_variant_is_unsigned(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = call i32 @SYNTHETIC_ERRNO(i32 %29)
  %31 = call i32 (i32*, i32, i32, i8*, ...) @json_log(i32* %27, i32 %28, i32 %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %5, align 4
  br label %48

32:                                               ; preds = %22
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @json_variant_unsigned(i32* %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @UINT64_MAX, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ERANGE, align 4
  %42 = call i32 @SYNTHETIC_ERRNO(i32 %41)
  %43 = load i64, i64* %11, align 8
  %44 = call i32 (i32*, i32, i32, i8*, ...) @json_log(i32* %39, i32 %40, i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %32
  %46 = load i64, i64* %11, align 8
  %47 = load i64*, i64** %10, align 8
  store i64 %46, i64* %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %38, %26, %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i64 @json_variant_is_negative(i32*) #1

declare dso_local i32 @json_variant_is_unsigned(i32*) #1

declare dso_local i32 @json_log(i32*, i32, i32, i8*, ...) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i64 @json_variant_unsigned(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
