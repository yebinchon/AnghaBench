; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_dispatch_uint32.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_dispatch_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"JSON field '%s' is not an unsigned integer.\00", align 1
@UINT32_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"JSON field '%s' out of bounds.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_dispatch_uint32(i8* %0, i64* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %10, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = call i32 @assert(i64* %13)
  %15 = load i64*, i64** %10, align 8
  %16 = call i32 @assert(i64* %15)
  %17 = load i64*, i64** %7, align 8
  %18 = call i32 @json_variant_is_unsigned(i64* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %4
  %21 = load i64*, i64** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @SYNTHETIC_ERRNO(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strna(i8* %25)
  %27 = call i32 @json_log(i64* %21, i32 %22, i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %5, align 4
  br label %45

28:                                               ; preds = %4
  %29 = load i64*, i64** %7, align 8
  %30 = call i64 @json_variant_unsigned(i64* %29)
  %31 = load i64, i64* @UINT32_MAX, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i64*, i64** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @ERANGE, align 4
  %37 = call i32 @SYNTHETIC_ERRNO(i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @strna(i8* %38)
  %40 = call i32 @json_log(i64* %34, i32 %35, i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %5, align 4
  br label %45

41:                                               ; preds = %28
  %42 = load i64*, i64** %7, align 8
  %43 = call i64 @json_variant_unsigned(i64* %42)
  %44 = load i64*, i64** %10, align 8
  store i64 %43, i64* %44, align 8
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %33, %20
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i32 @json_variant_is_unsigned(i64*) #1

declare dso_local i32 @json_log(i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @strna(i8*) #1

declare dso_local i64 @json_variant_unsigned(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
