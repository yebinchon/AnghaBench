; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-json.c_test_zeroes.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-json.c_test_zeroes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSON_VARIANT_INTEGER = common dso_local global i32 0, align 4
@JSON_VARIANT_UNSIGNED = common dso_local global i32 0, align 4
@JSON_VARIANT_REAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_zeroes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_zeroes(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @json_variant_elements(i32* %7)
  %9 = icmp eq i64 %8, 13
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert_se(i32 %10)
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %88, %1
  %13 = load i64, i64* %3, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @json_variant_elements(i32* %14)
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %91

17:                                               ; preds = %12
  %18 = load i32*, i32** %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i32* @json_variant_by_index(i32* %18, i64 %19)
  store i32* %20, i32** %4, align 8
  %21 = ptrtoint i32* %20 to i32
  %22 = call i32 @assert_se(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @json_variant_integer(i32* %23)
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @json_variant_unsigned(i32* %28)
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert_se(i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = call x86_fp80 @json_variant_real(i32* %33)
  %35 = fcmp oeq x86_fp80 %34, 0xK00000000000000000000
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert_se(i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32* @json_variant_is_integer(i32* %38)
  %40 = ptrtoint i32* %39 to i32
  %41 = call i32 @assert_se(i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32* @json_variant_is_unsigned(i32* %42)
  %44 = ptrtoint i32* %43 to i32
  %45 = call i32 @assert_se(i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @json_variant_is_real(i32* %46)
  %48 = ptrtoint i32* %47 to i32
  %49 = call i32 @assert_se(i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32* @json_variant_is_number(i32* %50)
  %52 = ptrtoint i32* %51 to i32
  %53 = call i32 @assert_se(i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @json_variant_is_negative(i32* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert_se(i32 %58)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @json_variant_type(i32* %60)
  %62 = load i32, i32* @JSON_VARIANT_INTEGER, align 4
  %63 = load i32, i32* @JSON_VARIANT_UNSIGNED, align 4
  %64 = load i32, i32* @JSON_VARIANT_REAL, align 4
  %65 = call i32* @IN_SET(i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = ptrtoint i32* %65 to i32
  %67 = call i32 @assert_se(i32 %66)
  store i64 0, i64* %5, align 8
  br label %68

68:                                               ; preds = %84, %17
  %69 = load i64, i64* %5, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = call i64 @json_variant_elements(i32* %70)
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load i32*, i32** %2, align 8
  %75 = load i64, i64* %5, align 8
  %76 = call i32* @json_variant_by_index(i32* %74, i64 %75)
  store i32* %76, i32** %6, align 8
  %77 = ptrtoint i32* %76 to i32
  %78 = call i32 @assert_se(i32 %77)
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = call i32* @json_variant_equal(i32* %79, i32* %80)
  %82 = ptrtoint i32* %81 to i32
  %83 = call i32 @assert_se(i32 %82)
  br label %84

84:                                               ; preds = %73
  %85 = load i64, i64* %5, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %5, align 8
  br label %68

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %3, align 8
  br label %12

91:                                               ; preds = %12
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @json_variant_elements(i32*) #1

declare dso_local i32* @json_variant_by_index(i32*, i64) #1

declare dso_local i64 @json_variant_integer(i32*) #1

declare dso_local i32 @json_variant_unsigned(i32*) #1

declare dso_local x86_fp80 @json_variant_real(i32*) #1

declare dso_local i32* @json_variant_is_integer(i32*) #1

declare dso_local i32* @json_variant_is_unsigned(i32*) #1

declare dso_local i32* @json_variant_is_real(i32*) #1

declare dso_local i32* @json_variant_is_number(i32*) #1

declare dso_local i32 @json_variant_is_negative(i32*) #1

declare dso_local i32* @IN_SET(i32, i32, i32, i32) #1

declare dso_local i32 @json_variant_type(i32*) #1

declare dso_local i32* @json_variant_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
