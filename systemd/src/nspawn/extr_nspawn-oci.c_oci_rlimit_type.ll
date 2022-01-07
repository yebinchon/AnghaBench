; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_rlimit_type.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_rlimit_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"RLIMIT_\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"rlimit entry's name does not begin with 'RLIMIT_', refusing: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"rlimit name unknown: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8*)* @oci_rlimit_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_rlimit_type(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %12, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = call i32 @assert_se(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @json_variant_string(i32* %17)
  %19 = call i8* @startswith(i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @SYNTHETIC_ERRNO(i32 %25)
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @json_variant_string(i32* %27)
  %29 = call i32 @json_log(i32* %23, i32 %24, i32 %26, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %5, align 4
  br label %46

30:                                               ; preds = %4
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @rlimit_from_string(i8* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @SYNTHETIC_ERRNO(i32 %38)
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @json_variant_string(i32* %40)
  %42 = call i32 @json_log(i32* %36, i32 %37, i32 %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %5, align 4
  br label %46

43:                                               ; preds = %30
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %12, align 8
  store i32 %44, i32* %45, align 4
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %35, %22
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @assert_se(i32*) #1

declare dso_local i8* @startswith(i32, i8*) #1

declare dso_local i32 @json_variant_string(i32*) #1

declare dso_local i32 @json_log(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @rlimit_from_string(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
