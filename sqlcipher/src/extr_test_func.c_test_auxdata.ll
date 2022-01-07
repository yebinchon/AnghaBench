; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_test_auxdata.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_func.c_test_auxdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@free_test_auxdata = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @test_auxdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_auxdata(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 2
  %15 = call i8* @testContextMalloc(i32* %12, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %101

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 2
  %23 = call i32 @memset(i8* %20, i32 0, i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %90, %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %93

28:                                               ; preds = %24
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @sqlite3_value_text(i32* %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %89

38:                                               ; preds = %28
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i8* @sqlite3_get_auxdata(i32* %39, i32 %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 49, i8* %49, align 1
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i64 @strcmp(i8* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  br label %62

56:                                               ; preds = %38
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 48, i8* %61, align 1
  br label %62

62:                                               ; preds = %56, %44
  %63 = load i8*, i8** %9, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = trunc i64 %64 to i32
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @testContextMalloc(i32* %67, i32 %68)
  store i8* %69, i8** %11, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i8*, i8** %11, align 8
  %80 = load i32, i32* @free_test_auxdata, align 4
  %81 = call i32 @sqlite3_set_auxdata(i32* %77, i32 %78, i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %72, %62
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 %84, 2
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  store i8 32, i8* %88, align 1
  br label %89

89:                                               ; preds = %82, %28
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %24

93:                                               ; preds = %24
  %94 = load i32*, i32** %4, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = load i32, i32* %5, align 4
  %97 = mul nsw i32 2, %96
  %98 = sub nsw i32 %97, 1
  %99 = load i32, i32* @free_test_auxdata, align 4
  %100 = call i32 @sqlite3_result_text(i32* %94, i8* %95, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %93, %18
  ret void
}

declare dso_local i8* @testContextMalloc(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i8* @sqlite3_get_auxdata(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_set_auxdata(i32*, i32, i8*, i32) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
