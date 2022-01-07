; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/integration/extr_extent.c_test_extent_body.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/integration/extr_extent.c_test_extent_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MALLOCX_TCACHE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"arenas.lextent.0.size\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unexpected arenas.lextent.0.size failure\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"arenas.lextent.1.size\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Unexpected arenas.lextent.1.size failure\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"arenas.lextent.2.size\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Unexpected arenas.lextent.2.size failure\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"arena.0.purge\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Unexpected mallctlnametomib() failure\00", align 1
@called_alloc = common dso_local global i32 0, align 4
@try_alloc = common dso_local global i32 0, align 4
@try_dalloc = common dso_local global i32 0, align 4
@try_decommit = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Unexpected mallocx() error\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Expected alloc call\00", align 1
@called_dalloc = common dso_local global i32 0, align 4
@called_decommit = common dso_local global i32 0, align 4
@did_purge_lazy = common dso_local global i32 0, align 4
@did_purge_forced = common dso_local global i32 0, align 4
@called_split = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"Unexpected arena.%u.purge error\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Expected dalloc call\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Expected decommit call\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"Expected purge\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Expected split call\00", align 1
@did_decommit = common dso_local global i32 0, align 4
@did_commit = common dso_local global i32 0, align 4
@did_split = common dso_local global i32 0, align 4
@did_merge = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [15 x i8] c"Expected split\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Expected decommit/commit match\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Expected merge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_extent_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_extent_body(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [3 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @MALLOCX_ARENA(i32 %14)
  %16 = load i32, i32* @MALLOCX_TCACHE_NONE, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %10, align 4
  store i64 8, i64* %7, align 8
  %18 = bitcast i64* %4 to i8*
  %19 = call i32 @mallctl(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %18, i64* %7, i32* null, i32 0)
  %20 = call i32 (i32, i32, i8*, ...) @assert_d_eq(i32 %19, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %21 = bitcast i64* %5 to i8*
  %22 = call i32 @mallctl(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %21, i64* %7, i32* null, i32 0)
  %23 = call i32 (i32, i32, i8*, ...) @assert_d_eq(i32 %22, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %24 = bitcast i64* %6 to i8*
  %25 = call i32 @mallctl(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %24, i64* %7, i32* null, i32 0)
  %26 = call i32 (i32, i32, i8*, ...) @assert_d_eq(i32 %25, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  store i64 3, i64* %9, align 8
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %28 = call i32 @mallctlnametomib(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64* %27, i64* %9)
  %29 = call i32 (i32, i32, i8*, ...) @assert_d_eq(i32 %28, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %30 = load i32, i32* %2, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  store i64 %31, i64* %32, align 8
  store i32 0, i32* @called_alloc, align 4
  store i32 1, i32* @try_alloc, align 4
  store i32 0, i32* @try_dalloc, align 4
  store i32 0, i32* @try_decommit, align 4
  %33 = load i64, i64* %4, align 8
  %34 = mul i64 %33, 2
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %10, align 4
  %37 = call i8* @mallocx(i32 %35, i32 %36)
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @assert_ptr_not_null(i8* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %40 = load i32, i32* @called_alloc, align 4
  %41 = call i32 @assert_true(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* @called_dalloc, align 4
  store i32 0, i32* @called_decommit, align 4
  store i32 0, i32* @did_purge_lazy, align 4
  store i32 0, i32* @did_purge_forced, align 4
  store i32 0, i32* @called_split, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @xallocx(i8* %42, i64 %43, i32 0, i32 %44)
  %46 = load i64, i64* %4, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @mallctlbymib(i64* %49, i64 %50, i32* null, i32* null, i32* null, i32 0)
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i32, i32, i8*, ...) @assert_d_eq(i32 %51, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %1
  %57 = load i32, i32* @called_dalloc, align 4
  %58 = call i32 @assert_true(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %59 = load i32, i32* @called_decommit, align 4
  %60 = call i32 @assert_true(i32 %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %61 = load i32, i32* @did_purge_lazy, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @did_purge_forced, align 4
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %63, %56
  %67 = phi i1 [ true, %56 ], [ %65, %63 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert_true(i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %1
  %71 = load i32, i32* @called_split, align 4
  %72 = call i32 @assert_true(i32 %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @dallocx(i8* %73, i32 %74)
  store i32 1, i32* @try_dalloc, align 4
  store i32 0, i32* @try_dalloc, align 4
  store i32 1, i32* @try_decommit, align 4
  %76 = load i64, i64* %4, align 8
  %77 = mul i64 %76, 2
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* %10, align 4
  %80 = call i8* @mallocx(i32 %78, i32 %79)
  store i8* %80, i8** %3, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @assert_ptr_not_null(i8* %81, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* @did_decommit, align 4
  store i32 0, i32* @did_commit, align 4
  store i32 0, i32* @called_split, align 4
  store i32 0, i32* @did_split, align 4
  store i32 0, i32* @did_merge, align 4
  %83 = load i8*, i8** %3, align 8
  %84 = load i64, i64* %4, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @xallocx(i8* %83, i64 %84, i32 0, i32 %85)
  %87 = load i64, i64* %4, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %12, align 4
  %90 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @mallctlbymib(i64* %90, i64 %91, i32* null, i32* null, i32* null, i32 0)
  %93 = load i32, i32* %2, align 4
  %94 = call i32 (i32, i32, i8*, ...) @assert_d_eq(i32 %92, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %70
  %98 = load i32, i32* @did_split, align 4
  %99 = call i32 @assert_true(i32 %98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %70
  %101 = load i8*, i8** %3, align 8
  %102 = load i64, i64* %4, align 8
  %103 = mul i64 %102, 2
  %104 = load i32, i32* %10, align 4
  %105 = call i64 @xallocx(i8* %101, i64 %103, i32 0, i32 %104)
  %106 = load i64, i64* %4, align 8
  %107 = mul i64 %106, 2
  %108 = icmp eq i64 %105, %107
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* @did_split, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %100
  %113 = load i32, i32* @did_decommit, align 4
  %114 = load i32, i32* @did_commit, align 4
  %115 = call i32 @assert_b_eq(i32 %113, i32 %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  br label %116

116:                                              ; preds = %112, %100
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* @did_merge, align 4
  %124 = call i32 @assert_true(i32 %123, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119, %116
  %126 = load i8*, i8** %3, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @dallocx(i8* %126, i32 %127)
  store i32 1, i32* @try_dalloc, align 4
  store i32 0, i32* @try_decommit, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i8* @mallocx(i32 42, i32 %129)
  store i8* %130, i8** %3, align 8
  %131 = load i8*, i8** %3, align 8
  %132 = call i32 @assert_ptr_not_null(i8* %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %133 = load i8*, i8** %3, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @dallocx(i8* %133, i32 %134)
  ret void
}

declare dso_local i32 @MALLOCX_ARENA(i32) #1

declare dso_local i32 @assert_d_eq(i32, i32, i8*, ...) #1

declare dso_local i32 @mallctl(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @mallctlnametomib(i8*, i64*, i64*) #1

declare dso_local i8* @mallocx(i32, i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*) #1

declare dso_local i32 @assert_true(i32, i8*) #1

declare dso_local i64 @xallocx(i8*, i64, i32, i32) #1

declare dso_local i32 @mallctlbymib(i64*, i64, i32*, i32*, i32*, i32) #1

declare dso_local i32 @dallocx(i8*, i32) #1

declare dso_local i32 @assert_b_eq(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
