; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/nvlist_to_lua/extr_nvlist_to_lua.c_test.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/nvlist_to_lua/extr_nvlist_to_lua.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"input = ...; return {output=input}\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\0Arunning test '%s'; input:\0A\00", align 1
@nvl = common dso_local global i32* null, align 8
@pool = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"lzc_channel_program returned %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@unexpected_failures = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"unexpected input/output mismatch for case: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unexpected FAIL of case: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64)* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %13 = load i32*, i32** @nvl, align 8
  %14 = call i32 @dump_nvlist(i32* %13, i32 4)
  %15 = load i32, i32* @pool, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i32*, i32** @nvl, align 8
  %18 = call i32 @lzc_channel_program(i32 %15, i8* %16, i32 10000000, i32 10485760, i32* %17, i32** %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @dump_nvlist(i32* %21, i32 5)
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = call i32* @fnvlist_lookup_nvlist(i32* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32* @fnvlist_lookup_nvlist(i32* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** @nvl, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @nvlist_equal(i32* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* @B_TRUE, align 4
  store i32 %38, i32* @unexpected_failures, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %28
  br label %42

42:                                               ; preds = %41, %25, %3
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @B_TRUE, align 4
  store i32 %49, i32* @unexpected_failures, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %48, %45, %42
  %53 = load i32*, i32** @nvl, align 8
  %54 = call i32 @fnvlist_free(i32* %53)
  %55 = call i32* (...) @fnvlist_alloc()
  store i32* %55, i32** @nvl, align 8
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dump_nvlist(i32*, i32) #1

declare dso_local i32 @lzc_channel_program(i32, i8*, i32, i32, i32*, i32**) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i8*) #1

declare dso_local i32 @nvlist_equal(i32*, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
