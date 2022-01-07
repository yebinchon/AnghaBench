; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-extract-word.c_test_extract_many_words.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-extract-word.c_test_extract_many_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"foobar waldi piep\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"waldi\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"piep\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"'foobar' wa\22ld\22i   \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"'foobar'\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"wa\22ld\22i\00", align 1
@EXTRACT_UNQUOTE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"foobar waldi\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"     foobar    \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_extract_many_words to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_extract_many_words() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %6 = call i32 (i8**, i32*, i32, i8**, ...) @extract_many_words(i8** %1, i32* null, i32 0, i8** %3, i8** %4, i8** %5, i8* null)
  %7 = icmp eq i32 %6, 3
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = load i8*, i8** %1, align 8
  %11 = call i32 @isempty(i8* %10)
  %12 = call i32 @assert_se(i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @streq_ptr(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @assert_se(i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @streq_ptr(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %18 = call i32 @assert_se(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @streq_ptr(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %21 = call i32 @assert_se(i32 %20)
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @free(i8* %22)
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @free(i8* %26)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  %28 = call i32 (i8**, i32*, i32, i8**, ...) @extract_many_words(i8** %1, i32* null, i32 0, i8** %3, i8** %4, i8** %5, i8* null)
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  %32 = load i8*, i8** %1, align 8
  %33 = call i32 @isempty(i8* %32)
  %34 = call i32 @assert_se(i32 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @streq_ptr(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %37 = call i32 @assert_se(i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @streq_ptr(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %40 = call i32 @assert_se(i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @streq_ptr(i8* %41, i8* null)
  %43 = call i32 @assert_se(i32 %42)
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @free(i8* %46)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %1, align 8
  %48 = load i32, i32* @EXTRACT_UNQUOTE, align 4
  %49 = call i32 (i8**, i32*, i32, i8**, ...) @extract_many_words(i8** %1, i32* null, i32 %48, i8** %3, i8** %4, i8** %5, i8* null)
  %50 = icmp eq i32 %49, 2
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert_se(i32 %51)
  %53 = load i8*, i8** %1, align 8
  %54 = call i32 @isempty(i8* %53)
  %55 = call i32 @assert_se(i32 %54)
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @streq_ptr(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %58 = call i32 @assert_se(i32 %57)
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @streq_ptr(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %61 = call i32 @assert_se(i32 %60)
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @streq_ptr(i8* %62, i8* null)
  %64 = call i32 @assert_se(i32 %63)
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @free(i8* %67)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %1, align 8
  %69 = call i32 (i8**, i32*, i32, i8**, ...) @extract_many_words(i8** %1, i32* null, i32 0, i8** %3, i8** %4, i8** %5, i8* null)
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert_se(i32 %71)
  %73 = load i8*, i8** %1, align 8
  %74 = call i32 @isempty(i8* %73)
  %75 = call i32 @assert_se(i32 %74)
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @streq_ptr(i8* %76, i8* null)
  %78 = call i32 @assert_se(i32 %77)
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 @streq_ptr(i8* %79, i8* null)
  %81 = call i32 @assert_se(i32 %80)
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @streq_ptr(i8* %82, i8* null)
  %84 = call i32 @assert_se(i32 %83)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8** %1, align 8
  %85 = call i32 (i8**, i32*, i32, i8**, ...) @extract_many_words(i8** %1, i32* null, i32 0, i8** %3, i8** %4, i8** %5, i8* null)
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert_se(i32 %87)
  %89 = load i8*, i8** %1, align 8
  %90 = call i32 @isempty(i8* %89)
  %91 = call i32 @assert_se(i32 %90)
  %92 = load i8*, i8** %3, align 8
  %93 = call i32 @streq_ptr(i8* %92, i8* null)
  %94 = call i32 @assert_se(i32 %93)
  %95 = load i8*, i8** %4, align 8
  %96 = call i32 @streq_ptr(i8* %95, i8* null)
  %97 = call i32 @assert_se(i32 %96)
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @streq_ptr(i8* %98, i8* null)
  %100 = call i32 @assert_se(i32 %99)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %1, align 8
  %101 = call i32 (i8**, i32*, i32, i8**, ...) @extract_many_words(i8** %1, i32* null, i32 0, i8** null)
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert_se(i32 %103)
  %105 = load i8*, i8** %1, align 8
  %106 = load i8*, i8** %2, align 8
  %107 = icmp eq i8* %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert_se(i32 %108)
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %1, align 8
  %110 = call i32 (i8**, i32*, i32, i8**, ...) @extract_many_words(i8** %1, i32* null, i32 0, i8** %3, i8* null)
  %111 = icmp eq i32 %110, 1
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert_se(i32 %112)
  %114 = load i8*, i8** %1, align 8
  %115 = load i8*, i8** %2, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 7
  %117 = icmp eq i8* %114, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @assert_se(i32 %118)
  %120 = load i8*, i8** %3, align 8
  %121 = call i32 @streq_ptr(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %122 = call i32 @assert_se(i32 %121)
  %123 = load i8*, i8** %3, align 8
  %124 = call i32 @free(i8* %123)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8** %1, align 8
  %125 = call i32 (i8**, i32*, i32, i8**, ...) @extract_many_words(i8** %1, i32* null, i32 0, i8** %3, i8* null)
  %126 = icmp eq i32 %125, 1
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert_se(i32 %127)
  %129 = load i8*, i8** %1, align 8
  %130 = call i32 @isempty(i8* %129)
  %131 = call i32 @assert_se(i32 %130)
  %132 = load i8*, i8** %3, align 8
  %133 = call i32 @streq_ptr(i8* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %134 = call i32 @assert_se(i32 %133)
  %135 = load i8*, i8** %3, align 8
  %136 = call i32 @free(i8* %135)
  ret void
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @extract_many_words(i8**, i32*, i32, i8**, ...) #1

declare dso_local i32 @isempty(i8*) #1

declare dso_local i32 @streq_ptr(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
