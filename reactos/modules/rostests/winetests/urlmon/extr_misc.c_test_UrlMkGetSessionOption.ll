; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_UrlMkGetSessionOption.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_misc.c_test_UrlMkGetSessionOption.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@URLMON_OPTION_URL_ENCODING = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"UrlMkGetSessionOption failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"encoding not changed\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"size=%d\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"encoding = %08x, exepcted 0xdeadbeef\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_UrlMkGetSessionOption to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_UrlMkGetSessionOption() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 -559038737, i32* %1, align 4
  store i32 -559038737, i32* %2, align 4
  %4 = load i32, i32* @URLMON_OPTION_URL_ENCODING, align 4
  %5 = call i32 @pUrlMkGetSessionOption(i32 %4, i32* %1, i32 4, i32* %2, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @S_OK, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %3, align 4
  %11 = call i32 (i32, i8*, ...) @ok(i32 %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %1, align 4
  %13 = icmp ne i32 %12, -559038737
  %14 = zext i1 %13 to i32
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %17, 4
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  store i32 -559038737, i32* %1, align 4
  store i32 -559038737, i32* %2, align 4
  %22 = load i32, i32* @URLMON_OPTION_URL_ENCODING, align 4
  %23 = call i32 @pUrlMkGetSessionOption(i32 %22, i32* %1, i32 5, i32* %2, i32 0)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @S_OK, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %1, align 4
  %31 = icmp ne i32 %30, -559038737
  %32 = zext i1 %31 to i32
  %33 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp eq i64 %35, 4
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  store i32 -559038737, i32* %1, align 4
  store i32 -559038737, i32* %2, align 4
  %40 = load i32, i32* @URLMON_OPTION_URL_ENCODING, align 4
  %41 = call i32 @pUrlMkGetSessionOption(i32 %40, i32* %1, i32 3, i32* %2, i32 0)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @E_INVALIDARG, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = icmp eq i32 %48, -559038737
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %1, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = icmp eq i32 %53, -559038737
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %2, align 4
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  store i32 -559038737, i32* %1, align 4
  store i32 -559038737, i32* %2, align 4
  %58 = load i32, i32* @URLMON_OPTION_URL_ENCODING, align 4
  %59 = call i32 @pUrlMkGetSessionOption(i32 %58, i32* null, i32 3, i32* %2, i32 0)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @E_INVALIDARG, align 4
  %62 = icmp eq i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %3, align 4
  %65 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %1, align 4
  %67 = icmp eq i32 %66, -559038737
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %1, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %2, align 4
  %72 = icmp eq i32 %71, -559038737
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %2, align 4
  %75 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  store i32 -559038737, i32* %1, align 4
  %76 = load i32, i32* @URLMON_OPTION_URL_ENCODING, align 4
  %77 = call i32 @pUrlMkGetSessionOption(i32 %76, i32* %1, i32 3, i32* null, i32 0)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @E_INVALIDARG, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %3, align 4
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %1, align 4
  %85 = icmp eq i32 %84, -559038737
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %1, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  ret void
}

declare dso_local i32 @pUrlMkGetSessionOption(i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
