; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-common.c_test_types_language.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/test/api/extr_test-common.c_test_types_language.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"fa\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"fa_IR\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fa-ir\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@HB_LANGUAGE_INVALID = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"eN\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Enx\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_types_language to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_types_language() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %5, i32** %1, align 8
  %6 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  store i32* %6, i32** %2, align 8
  %7 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  store i32* %7, i32** %3, align 8
  %8 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** @HB_LANGUAGE_INVALID, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @g_assert(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @g_assert(i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @g_assert(i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = icmp eq i32* %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @g_assert(i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @g_assert(i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %1, align 8
  %32 = icmp ne i32* %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @g_assert(i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %37 = icmp eq i32* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @g_assert(i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %42 = icmp eq i32* %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @g_assert(i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %47 = icmp eq i32* %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @g_assert(i32 %48)
  %50 = load i32*, i32** @HB_LANGUAGE_INVALID, align 8
  %51 = call i32* @hb_language_from_string(i8* null, i32 -1)
  %52 = icmp eq i32* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @g_assert(i32 %53)
  %55 = load i32*, i32** @HB_LANGUAGE_INVALID, align 8
  %56 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %57 = icmp eq i32* %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @g_assert(i32 %58)
  %60 = load i32*, i32** @HB_LANGUAGE_INVALID, align 8
  %61 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %62 = icmp eq i32* %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @g_assert(i32 %63)
  %65 = load i32*, i32** @HB_LANGUAGE_INVALID, align 8
  %66 = call i32* @hb_language_from_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %67 = icmp ne i32* %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @g_assert(i32 %68)
  %70 = load i32*, i32** @HB_LANGUAGE_INVALID, align 8
  %71 = call i32* @hb_language_to_string(i32* %70)
  %72 = icmp eq i32* null, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @g_assert(i32 %73)
  %75 = load i32*, i32** @HB_LANGUAGE_INVALID, align 8
  %76 = call i32* (...) @hb_language_get_default()
  %77 = icmp ne i32* %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @g_assert(i32 %78)
  ret void
}

declare dso_local i32* @hb_language_from_string(i8*, i32) #1

declare dso_local i32 @g_assert(i32) #1

declare dso_local i32* @hb_language_to_string(i32*) #1

declare dso_local i32* @hb_language_get_default(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
