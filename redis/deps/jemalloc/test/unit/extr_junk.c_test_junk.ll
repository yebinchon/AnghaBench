; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_junk.c_test_junk.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_junk.c_test_junk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_junk_free = common dso_local global i64 0, align 8
@arena_dalloc_junk_small = common dso_local global i32 0, align 4
@arena_dalloc_junk_small_orig = common dso_local global i32 0, align 4
@arena_dalloc_junk_small_intercept = common dso_local global i32 0, align 4
@large_dalloc_junk = common dso_local global i32 0, align 4
@large_dalloc_junk_orig = common dso_local global i32 0, align 4
@large_dalloc_junk_intercept = common dso_local global i32 0, align 4
@large_dalloc_maybe_junk = common dso_local global i32 0, align 4
@large_dalloc_maybe_junk_orig = common dso_local global i32 0, align 4
@large_dalloc_maybe_junk_intercept = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unexpected mallocx() failure\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Previously allocated byte %zu/%zu is corrupted\00", align 1
@opt_junk_alloc = common dso_local global i64 0, align 8
@JEMALLOC_ALLOC_JUNK = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Newly allocated byte %zu/%zu isn't junk-filled\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unexpected rallocx() failure\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Unexpectedly small rallocx() result\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unexpected in-place rallocx()\00", align 1
@saw_junking = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [46 x i8] c"Expected region of size %zu to be junk-filled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @test_junk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_junk(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* @opt_junk_free, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* @arena_dalloc_junk_small, align 4
  store i32 %13, i32* @arena_dalloc_junk_small_orig, align 4
  %14 = load i32, i32* @arena_dalloc_junk_small_intercept, align 4
  store i32 %14, i32* @arena_dalloc_junk_small, align 4
  %15 = load i32, i32* @large_dalloc_junk, align 4
  store i32 %15, i32* @large_dalloc_junk_orig, align 4
  %16 = load i32, i32* @large_dalloc_junk_intercept, align 4
  store i32 %16, i32* @large_dalloc_junk, align 4
  %17 = load i32, i32* @large_dalloc_maybe_junk, align 4
  store i32 %17, i32* @large_dalloc_maybe_junk_orig, align 4
  %18 = load i32, i32* @large_dalloc_maybe_junk_intercept, align 4
  store i32 %18, i32* @large_dalloc_maybe_junk, align 4
  br label %19

19:                                               ; preds = %12, %2
  store i64 0, i64* %6, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @mallocx(i64 %20, i32 0)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @assert_ptr_not_null(i8* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @sallocx(i8* %25, i32 0)
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %116, %19
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp ule i64 %28, %29
  br i1 %30, label %31, label %120

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @ZU(i32 0)
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @assert_u_eq(i8 signext %37, i8 signext 97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i64, i64* %6, align 8
  %47 = sub i64 %46, 1
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @assert_u_eq(i8 signext %45, i8 signext 97, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %34, %31
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %72, %50
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %52
  %57 = load i64, i64* @opt_junk_alloc, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i8, i8* @JEMALLOC_ALLOC_JUNK, align 1
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @assert_u_eq(i8 signext %63, i8 signext %64, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %59, %56
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 97, i8* %71, align 1
  br label %72

72:                                               ; preds = %68
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %52

75:                                               ; preds = %52
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  %79 = call i64 @xallocx(i8* %76, i64 %78, i32 0, i32 0)
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %75
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @watch_junking(i8* %83)
  %85 = load i8*, i8** %5, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, 1
  %88 = call i64 @rallocx(i8* %85, i64 %87, i32 0)
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @assert_ptr_not_null(i8* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i8*, i8** %9, align 8
  %93 = call i64 @sallocx(i8* %92, i32 0)
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, 1
  %96 = call i32 @assert_zu_ge(i64 %93, i64 %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %97 = call i32 (...) @background_thread_enabled()
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %82
  %100 = load i8*, i8** %5, align 8
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @assert_ptr_ne(i8* %100, i8* %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i64, i64* @opt_junk_free, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i64, i64* @saw_junking, align 8
  %107 = icmp ne i64 %106, 0
  br label %108

108:                                              ; preds = %105, %99
  %109 = phi i1 [ true, %99 ], [ %107, %105 ]
  %110 = zext i1 %109 to i32
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @assert_true(i32 %110, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %111)
  br label %113

113:                                              ; preds = %108, %82
  %114 = load i8*, i8** %9, align 8
  store i8* %114, i8** %5, align 8
  br label %115

115:                                              ; preds = %113, %75
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %7, align 8
  store i64 %117, i64* %6, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = call i64 @sallocx(i8* %118, i32 0)
  store i64 %119, i64* %7, align 8
  br label %27

120:                                              ; preds = %27
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @watch_junking(i8* %121)
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 @dallocx(i8* %123, i32 0)
  %125 = load i64, i64* @opt_junk_free, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i64, i64* @saw_junking, align 8
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %127, %120
  %131 = phi i1 [ true, %120 ], [ %129, %127 ]
  %132 = zext i1 %131 to i32
  %133 = load i64, i64* %7, align 8
  %134 = call i32 @assert_true(i32 %132, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i64 %133)
  %135 = load i64, i64* @opt_junk_free, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load i32, i32* @arena_dalloc_junk_small_orig, align 4
  store i32 %138, i32* @arena_dalloc_junk_small, align 4
  %139 = load i32, i32* @large_dalloc_junk_orig, align 4
  store i32 %139, i32* @large_dalloc_junk, align 4
  %140 = load i32, i32* @large_dalloc_maybe_junk_orig, align 4
  store i32 %140, i32* @large_dalloc_maybe_junk, align 4
  br label %141

141:                                              ; preds = %137, %130
  ret void
}

declare dso_local i64 @mallocx(i64, i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*) #1

declare dso_local i64 @sallocx(i8*, i32) #1

declare dso_local i32 @assert_u_eq(i8 signext, i8 signext, i8*, i64, i64) #1

declare dso_local i64 @ZU(i32) #1

declare dso_local i64 @xallocx(i8*, i64, i32, i32) #1

declare dso_local i32 @watch_junking(i8*) #1

declare dso_local i64 @rallocx(i8*, i64, i32) #1

declare dso_local i32 @assert_zu_ge(i64, i64, i8*) #1

declare dso_local i32 @background_thread_enabled(...) #1

declare dso_local i32 @assert_ptr_ne(i8*, i8*, i8*) #1

declare dso_local i32 @assert_true(i32, i8*, i64) #1

declare dso_local i32 @dallocx(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
