; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_dispatch_int32.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_dispatch_int32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"JSON field '%s' is not an integer.\00", align 1
@INT32_MIN = common dso_local global i64 0, align 8
@INT32_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"JSON field '%s' out of bounds.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_dispatch_int32(i8* %0, i64* %1, i32 %2, i8* %3) #0 {
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
  %18 = call i32 @json_variant_is_integer(i64* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %4
  %21 = load i64*, i64** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @SYNTHETIC_ERRNO(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strna(i8* %25)
  %27 = call i32 @json_log(i64* %21, i32 %22, i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %5, align 4
  br label %50

28:                                               ; preds = %4
  %29 = load i64*, i64** %7, align 8
  %30 = call i64 @json_variant_integer(i64* %29)
  %31 = load i64, i64* @INT32_MIN, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i64*, i64** %7, align 8
  %35 = call i64 @json_variant_integer(i64* %34)
  %36 = load i64, i64* @INT32_MAX, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %33, %28
  %39 = load i64*, i64** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ERANGE, align 4
  %42 = call i32 @SYNTHETIC_ERRNO(i32 %41)
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strna(i8* %43)
  %45 = call i32 @json_log(i64* %39, i32 %40, i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  store i32 %45, i32* %5, align 4
  br label %50

46:                                               ; preds = %33
  %47 = load i64*, i64** %7, align 8
  %48 = call i64 @json_variant_integer(i64* %47)
  %49 = load i64*, i64** %10, align 8
  store i64 %48, i64* %49, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %38, %20
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @assert(i64*) #1

declare dso_local i32 @json_variant_is_integer(i64*) #1

declare dso_local i32 @json_log(i64*, i32, i32, i8*, i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @strna(i8*) #1

declare dso_local i64 @json_variant_integer(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
