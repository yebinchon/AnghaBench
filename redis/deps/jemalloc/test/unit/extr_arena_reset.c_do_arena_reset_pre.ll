; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_arena_reset.c_do_arena_reset_pre.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/unit/extr_arena_reset.c_do_arena_reset_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MALLOCX_TCACHE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unexpected malloc() failure\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unexpected mallocx(%zu, %#x) failure\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Allocation should have queryable size\00", align 1
@NLARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8***, i32*)* @do_arena_reset_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_arena_reset_pre(i32 %0, i8*** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8***, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8*** %1, i8**** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @MALLOCX_ARENA(i32 %13)
  %15 = load i32, i32* @MALLOCX_TCACHE_NONE, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = call i32 (...) @get_nsmall()
  store i32 %17, i32* %7, align 4
  %18 = call i32 (...) @get_nlarge()
  %19 = icmp ugt i32 %18, 32
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %23

21:                                               ; preds = %3
  %22 = call i32 (...) @get_nlarge()
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 32, %20 ], [ %22, %21 ]
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %25, %26
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i64 @malloc(i32 %33)
  %35 = inttoptr i64 %34 to i8**
  %36 = load i8***, i8**** %5, align 8
  store i8** %35, i8*** %36, align 8
  %37 = load i8***, i8**** %5, align 8
  %38 = load i8**, i8*** %37, align 8
  %39 = bitcast i8** %38 to i8*
  %40 = call i32 (i8*, i8*, ...) @assert_ptr_not_null(i8* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %65, %23
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @get_small_size(i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = call i8* @mallocx(i64 %48, i32 %49)
  %51 = load i8***, i8**** %5, align 8
  %52 = load i8**, i8*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  store i8* %50, i8** %55, align 8
  %56 = load i8***, i8**** %5, align 8
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 (i8*, i8*, ...) @assert_ptr_not_null(i8* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %45
  %66 = load i32, i32* %9, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %41

68:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %95, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @get_large_size(i32 %74)
  store i64 %75, i64* %10, align 8
  %76 = load i64, i64* %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i8* @mallocx(i64 %76, i32 %77)
  %79 = load i8***, i8**** %5, align 8
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = add i32 %81, %82
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %80, i64 %84
  store i8* %78, i8** %85, align 8
  %86 = load i8***, i8**** %5, align 8
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 (i8*, i8*, ...) @assert_ptr_not_null(i8* %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %73
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %69

98:                                               ; preds = %69
  %99 = call i32* (...) @tsdn_fetch()
  store i32* %99, i32** %12, align 8
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %115, %98
  %101 = load i32, i32* %9, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp ult i32 %101, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = load i32*, i32** %12, align 8
  %107 = load i8***, i8**** %5, align 8
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @ivsalloc(i32* %106, i8* %112)
  %114 = call i32 @assert_zu_gt(i32 %113, i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %115

115:                                              ; preds = %105
  %116 = load i32, i32* %9, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %100

118:                                              ; preds = %100
  ret void
}

declare dso_local i32 @MALLOCX_ARENA(i32) #1

declare dso_local i32 @get_nsmall(...) #1

declare dso_local i32 @get_nlarge(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @assert_ptr_not_null(i8*, i8*, ...) #1

declare dso_local i64 @get_small_size(i32) #1

declare dso_local i8* @mallocx(i64, i32) #1

declare dso_local i64 @get_large_size(i32) #1

declare dso_local i32* @tsdn_fetch(...) #1

declare dso_local i32 @assert_zu_gt(i32, i32, i8*) #1

declare dso_local i32 @ivsalloc(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
