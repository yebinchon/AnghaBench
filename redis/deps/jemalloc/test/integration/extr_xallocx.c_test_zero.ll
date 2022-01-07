; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/integration/extr_xallocx.c_test_zero.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/integration/extr_xallocx.c_test_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MALLOCX_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unexpected mallocx() error\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Memory not filled: sz=%zu\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Unexpected rallocx() failure\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Memory not filled: sz=%zu, nsz-sz=%zu\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Memory not filled: nsz=%zu\00", align 1
@FILL_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @test_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_zero(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = call i32 (...) @arena_ind()
  %10 = call i32 @MALLOCX_ARENA(i32 %9)
  %11 = load i32, i32* @MALLOCX_ZERO, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @mallocx(i64 %14, i32 %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @assert_ptr_not_null(i8* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @validate_fill(i8* %19, i32 0, i64 0, i64 %20)
  %22 = load i64, i64* %6, align 8
  %23 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @memset(i8* %24, i32 122, i64 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @validate_fill(i8* %27, i32 122, i64 0, i64 %28)
  %30 = load i64, i64* %6, align 8
  %31 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %3, align 8
  store i64 %32, i64* %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @xallocx(i8* %33, i64 %34, i32 0, i32 %35)
  %37 = load i64, i64* %6, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %2
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @rallocx(i8* %40, i64 %41, i32 %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @assert_ptr_not_null(i8* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %39, %2
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @validate_fill(i8* %47, i32 122, i64 0, i64 %48)
  %50 = load i64, i64* %6, align 8
  %51 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  %52 = load i64, i64* %3, align 8
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %108, %46
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %4, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %110

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  %60 = load i32, i32* %5, align 4
  %61 = call i64 @nallocx(i64 %59, i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  %65 = load i32, i32* %5, align 4
  %66 = call i64 @xallocx(i8* %62, i64 %64, i32 0, i32 %65)
  %67 = load i64, i64* %7, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %57
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %71, 1
  %73 = load i32, i32* %5, align 4
  %74 = call i8* @rallocx(i8* %70, i64 %72, i32 %73)
  store i8* %74, i8** %8, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i32 @assert_ptr_not_null(i8* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %69, %57
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @validate_fill(i8* %78, i32 122, i64 0, i64 %79)
  %81 = load i64, i64* %6, align 8
  %82 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %7, align 8
  %86 = load i64, i64* %6, align 8
  %87 = sub i64 %85, %86
  %88 = call i32 @validate_fill(i8* %83, i32 0, i64 %84, i64 %87)
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* %6, align 8
  %92 = sub i64 %90, %91
  %93 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %88, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %89, i64 %92)
  %94 = load i8*, i8** %8, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %95, %96
  %98 = inttoptr i64 %97 to i8*
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %6, align 8
  %101 = sub i64 %99, %100
  %102 = call i32 @memset(i8* %98, i32 122, i64 %101)
  %103 = load i8*, i8** %8, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @validate_fill(i8* %103, i32 122, i64 0, i64 %104)
  %106 = load i64, i64* %7, align 8
  %107 = call i32 (i32, i8*, i64, ...) @assert_false(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %106)
  br label %108

108:                                              ; preds = %77
  %109 = load i64, i64* %7, align 8
  store i64 %109, i64* %6, align 8
  br label %53

110:                                              ; preds = %53
  %111 = load i8*, i8** %8, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @dallocx(i8* %111, i32 %112)
  ret void
}

declare dso_local i32 @MALLOCX_ARENA(i32) #1

declare dso_local i32 @arena_ind(...) #1

declare dso_local i8* @mallocx(i64, i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*) #1

declare dso_local i32 @assert_false(i32, i8*, i64, ...) #1

declare dso_local i32 @validate_fill(i8*, i32, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @xallocx(i8*, i64, i32, i32) #1

declare dso_local i8* @rallocx(i8*, i64, i32) #1

declare dso_local i64 @nallocx(i64, i32) #1

declare dso_local i32 @dallocx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
