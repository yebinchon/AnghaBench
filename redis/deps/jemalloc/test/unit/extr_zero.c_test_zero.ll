; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_zero.c_test_zero.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_zero.c_test_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Unexpected mallocx() failure\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Previously allocated byte %zu/%zu is corrupted\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Newly allocated byte %zu/%zu isn't zero-filled\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unexpected rallocx() failure\00", align 1
@MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @test_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_zero(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @mallocx(i64 %9, i32 0)
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = call i32 @assert_ptr_not_null(i8* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %5, align 8
  %16 = call i64 @sallocx(i32* %15, i32 0)
  store i64 %16, i64* %7, align 8
  br label %17

17:                                               ; preds = %77, %2
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ule i64 %18, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %17
  %22 = load i64, i64* %6, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ZU(i32 0)
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @assert_u_eq(i32 %27, i32 97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %28, i64 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = sub i64 %36, 1
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @assert_u_eq(i32 %35, i32 97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %38)
  br label %40

40:                                               ; preds = %24, %21
  %41 = load i64, i64* %6, align 8
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %57, %40
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @assert_u_eq(i32 %50, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 97, i32* %56, align 4
  br label %57

57:                                               ; preds = %46
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %8, align 8
  br label %42

60:                                               ; preds = %42
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  %64 = call i64 @xallocx(i32* %61, i64 %63, i32 0, i32 0)
  %65 = load i64, i64* %7, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load i32*, i32** %5, align 8
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  %71 = call i64 @rallocx(i32* %68, i64 %70, i32 0)
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %5, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = bitcast i32* %73 to i8*
  %75 = call i32 @assert_ptr_not_null(i8* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %67, %60
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %7, align 8
  store i64 %78, i64* %6, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @sallocx(i32* %79, i32 0)
  store i64 %80, i64* %7, align 8
  br label %17

81:                                               ; preds = %17
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @dallocx(i32* %82, i32 0)
  ret void
}

declare dso_local i64 @mallocx(i64, i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*) #1

declare dso_local i64 @sallocx(i32*, i32) #1

declare dso_local i32 @assert_u_eq(i32, i32, i8*, i64, i64) #1

declare dso_local i64 @ZU(i32) #1

declare dso_local i64 @xallocx(i32*, i64, i32, i32) #1

declare dso_local i64 @rallocx(i32*, i64, i32) #1

declare dso_local i32 @dallocx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
