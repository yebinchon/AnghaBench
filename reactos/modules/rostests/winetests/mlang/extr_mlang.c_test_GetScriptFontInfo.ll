; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_GetScriptFontInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_GetScriptFontInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }

@sidAsciiLatin = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"GetScriptFontInfo failed %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"unexpected result\0A\00", align 1
@SCRIPTCONTF_FIXED_FONT = common dso_local global i32 0, align 4
@SCRIPTCONTF_PROPORTIONAL_FONT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"got %u, expected 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_GetScriptFontInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetScriptFontInfo(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.TYPE_4__], align 16
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @sidAsciiLatin, align 4
  %8 = call i64 @IMLangFontLink2_GetScriptFontInfo(i32* %6, i32 %7, i32 0, i32* %4, %struct.TYPE_4__* null)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @S_OK, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 (...) @GetLastError()
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @sidAsciiLatin, align 4
  %19 = load i32, i32* @SCRIPTCONTF_FIXED_FONT, align 4
  %20 = call i64 @IMLangFontLink2_GetScriptFontInfo(i32* %17, i32 %18, i32 %19, i32* %4, %struct.TYPE_4__* null)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @S_OK, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 (...) @GetLastError()
  %26 = call i32 (i32, i8*, ...) @ok(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @sidAsciiLatin, align 4
  %31 = load i32, i32* @SCRIPTCONTF_PROPORTIONAL_FONT, align 4
  %32 = call i64 @IMLangFontLink2_GetScriptFontInfo(i32* %29, i32 %30, i32 %31, i32* %4, %struct.TYPE_4__* null)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 (...) @GetLastError()
  %38 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  %41 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %42 = call i32 @memset(%struct.TYPE_4__* %41, i32 0, i32 16)
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @sidAsciiLatin, align 4
  %45 = load i32, i32* @SCRIPTCONTF_FIXED_FONT, align 4
  %46 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %47 = call i64 @IMLangFontLink2_GetScriptFontInfo(i32* %43, i32 %44, i32 %45, i32* %4, %struct.TYPE_4__* %46)
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %4, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 16
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 (i32, i8*, ...) @ok(i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %65 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  %71 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %72 = call i32 @memset(%struct.TYPE_4__* %71, i32 0, i32 16)
  %73 = load i32*, i32** %2, align 8
  %74 = load i32, i32* @sidAsciiLatin, align 4
  %75 = load i32, i32* @SCRIPTCONTF_PROPORTIONAL_FONT, align 4
  %76 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %77 = call i64 @IMLangFontLink2_GetScriptFontInfo(i32* %73, i32 %74, i32 %75, i32* %4, %struct.TYPE_4__* %76)
  store i64 %77, i64* %3, align 8
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* @S_OK, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 (...) @GetLastError()
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = icmp eq i32 %84, 1
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %4, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 16
  %92 = icmp ne i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %95 = getelementptr inbounds [1 x %struct.TYPE_4__], [1 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i64 @IMLangFontLink2_GetScriptFontInfo(i32*, i32, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
