; ModuleID = '/home/carl/AnghaBench/vlc/src/test/extr_utf8.c_main.c'
source_filename = "/home/carl/AnghaBench/vlc/src/test/extr_utf8.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\7F\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\C3\A9\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\DF\BF\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\E2\82\AC\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\EF\BF\BF\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\F0\90\80\81\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\F4\80\80\81\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\F4\8F\BF\BF\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"\C0\80\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\C1\BF\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"\E0\80\80\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"\E0\9F\BF\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"\F0\80\80\80\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"\F0\8F\BF\BF\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\F4\90\80\80\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\F7\BF\BF\BF\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"\ED\9F\BF\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\ED\A0\80\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"\ED\BF\BF\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"\EE\80\80\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\BF\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"\DF\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\EF\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\F4\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\EF\BF\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"\F4\BF\BF\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"this_should_not_be_modified_1234\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"\FF\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"\EF\BB\BFHello\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\00\E9\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"T\C3\A9l\C3\A9vision \E2\82\AC\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"T\E9l\E9vision\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"T?l?vision\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"\C1\94\C3\A9l\C3\A9vision\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"??\C3\A9l\C3\A9vision\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Hel\F0\83\85\87lo\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"Hel????lo\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"heLLo\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"lo\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"llo\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"la\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"oa\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"T\C3\A9l\C3\A9\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"\C3\A9l\C3\A9\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"l\C3\A9\C3\A9\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @stdout, align 4
  %3 = load i32, i32* @_IONBF, align 4
  %4 = call i32 @setvbuf(i32 %2, i32* null, i32 %3, i32 0)
  %5 = call i32 @test_towc(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %6 = call i32 @test_towc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 10)
  %7 = call i32 @test_towc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 127)
  %8 = call i32 @test_towc(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 233)
  %9 = call i32 @test_towc(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2, i32 2047)
  %10 = call i32 @test_towc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 3, i32 8364)
  %11 = call i32 @test_towc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3, i32 65535)
  %12 = call i32 @test_towc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4, i32 65537)
  %13 = call i32 @test_towc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4, i32 1048577)
  %14 = call i32 @test_towc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4, i32 1114111)
  %15 = call i32 @test_towc(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 -1, i32 0)
  %16 = call i32 @test_towc(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 -1, i32 127)
  %17 = call i32 @test_towc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 -1, i32 0)
  %18 = call i32 @test_towc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 -1, i32 2047)
  %19 = call i32 @test_towc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 -1, i32 0)
  %20 = call i32 @test_towc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i32 -1, i32 65535)
  %21 = call i32 @test_towc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32 1114112)
  %22 = call i32 @test_towc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 -1, i32 2097151)
  %23 = call i32 @test_towc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 3, i32 55295)
  %24 = call i32 @test_towc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 -1, i32 55296)
  %25 = call i32 @test_towc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 -1, i32 57343)
  %26 = call i32 @test_towc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 3, i32 57344)
  %27 = call i32 @test_towc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i32 -1, i32 0)
  %28 = call i32 @test_towc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i32 -1, i32 0)
  %29 = call i32 @test_towc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i32 -1, i32 2047)
  %30 = call i32 @test_towc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 -1, i32 65535)
  %31 = call i32 @test_towc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i32 -1, i32 1114111)
  %32 = call i32 @test_towc(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0), i32 -1, i32 65535)
  %33 = call i32 @test_towc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 -1, i32 1114111)
  %34 = call i32 @test(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @test(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0))
  %36 = call i32 @test(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0))
  %37 = call i32 @test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  %38 = call i32 @test(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @test(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0))
  %40 = call i32 @test(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0))
  %41 = call i32 @test(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.38, i64 0, i64 0))
  %42 = call i32 @test(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0))
  %43 = call i32 @test_strcasestr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %44 = call i32 @test_strcasestr(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i32 -1)
  %45 = call i32 @test_strcasestr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %46 = call i32 @test_strcasestr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i32 2)
  %47 = call i32 @test_strcasestr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i32 3)
  %48 = call i32 @test_strcasestr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i32 2)
  %49 = call i32 @test_strcasestr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), i32 -1)
  %50 = call i32 @test_strcasestr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), i32 -1)
  %51 = call i32 @test_strcasestr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %52 = call i32 @test_strcasestr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), i32 1)
  %53 = call i32 @test_strcasestr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i64 0, i64 0), i32 -1)
  ret i32 0
}

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @test_towc(i8*, i32, i32) #1

declare dso_local i32 @test(i8*, i8*) #1

declare dso_local i32 @test_strcasestr(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
