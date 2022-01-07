; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_hook_timeout.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_hook_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UINT64_MAX = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Hook timeout value out of range.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8*)* @oci_hook_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_hook_timeout(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @json_variant_unsigned(i32* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @UINT64_MAX, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @USEC_PER_SEC, align 4
  %23 = sdiv i32 %21, %22
  %24 = icmp sgt i32 %19, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18, %4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ERANGE, align 4
  %29 = call i32 @SYNTHETIC_ERRNO(i32 %28)
  %30 = call i32 @json_log(i32* %26, i32 %27, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 %30, i32* %5, align 4
  br label %36

31:                                               ; preds = %18
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @USEC_PER_SEC, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @json_variant_unsigned(i32*) #1

declare dso_local i32 @json_log(i32*, i32, i32, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
