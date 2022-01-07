; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_device_type.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-oci.c_oci_device_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@S_IFBLK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@S_IFIFO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Unknown device type: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i8*)* @oci_device_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oci_device_type(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
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
  %17 = call i8* @json_variant_string(i32* %16)
  store i8* %17, i8** %11, align 8
  %18 = call i32 @assert_se(i8* %17)
  %19 = load i8*, i8** %11, align 8
  %20 = call i64 @STR_IN_SET(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @S_IFMT, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = load i32, i32* @S_IFCHR, align 4
  %29 = or i32 %27, %28
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  br label %66

31:                                               ; preds = %4
  %32 = load i8*, i8** %11, align 8
  %33 = call i64 @streq(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @S_IFMT, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @S_IFBLK, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  br label %65

44:                                               ; preds = %31
  %45 = load i8*, i8** %11, align 8
  %46 = call i64 @streq(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @S_IFMT, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = load i32, i32* @S_IFIFO, align 4
  %55 = or i32 %53, %54
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  br label %64

57:                                               ; preds = %44
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = call i32 @SYNTHETIC_ERRNO(i32 %60)
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @json_log(i32* %58, i32 %59, i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  store i32 %63, i32* %5, align 4
  br label %67

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %35
  br label %66

66:                                               ; preds = %65, %22
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %57
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @assert_se(i8*) #1

declare dso_local i8* @json_variant_string(i32*) #1

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @json_log(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
