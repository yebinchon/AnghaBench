; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_console_dimension.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_console_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Console size field '%s' is too small.\00", align 1
@USHRT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Console size field '%s' is too large.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8*)* @oci_console_dimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_console_dimension(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 @assert(i32* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @json_variant_unsigned(i32* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @ERANGE, align 4
  %24 = call i32 @SYNTHETIC_ERRNO(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strna(i8* %25)
  %27 = call i32 @json_log(i32* %21, i32 %22, i32 %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %5, align 4
  br label %44

28:                                               ; preds = %4
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @USHRT_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @ERANGE, align 4
  %36 = call i32 @SYNTHETIC_ERRNO(i32 %35)
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strna(i8* %37)
  %39 = call i32 @json_log(i32* %33, i32 %34, i32 %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %5, align 4
  br label %44

40:                                               ; preds = %28
  %41 = load i64, i64* %11, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %32, %20
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @json_variant_unsigned(i32*) #1

declare dso_local i32 @json_log(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @strna(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
