; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbscat_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__mbscat_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"_mbscat_s returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"aaaaaab\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dst = %s\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"dst[0] = %c\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"dst[1] = %c\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"aR\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__mbscat_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__mbscat_s() #0 {
  %1 = alloca [8 x i8], align 1
  %2 = alloca [4 x i8], align 1
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @_getmbcp()
  store i32 %5, i32* %4, align 4
  %6 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %9 = call i32 @p_mbscat_s(i8* null, i32 8, i8* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @EINVAL, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i32, i8*, ...) @ok(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %17 = call i32 @p_mbscat_s(i8* %16, i32 8, i8* null)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  store i8 97, i8* %24, align 1
  %25 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %27 = call i32 @p_mbscat_s(i8* %25, i32 1, i8* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %3, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %35 = call i32 @memset(i8* %34, i8 signext 97, i32 8)
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 6
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  store i8 98, i8* %37, align 1
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %41 = call i32 @p_mbscat_s(i8* %39, i32 8, i8* %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %48 = call i32 @memcmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %56 = call i32 @p_mbscat_s(i8* %54, i32 8, i8* %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @ERANGE, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 97
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = call i32 @_setmbcp(i32 932)
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  store i8 -127, i8* %82, align 1
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  store i8 -127, i8* %83, align 1
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  store i8 82, i8* %84, align 1
  %85 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 3
  store i8 0, i8* %85, align 1
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  store i8 97, i8* %86, align 1
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  store i8 0, i8* %87, align 1
  %88 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %89 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %90 = call i32 @p_mbscat_s(i8* %88, i32 8, i8* %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* %3, align 4
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %3, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %96, align 1
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  store i8 -127, i8* %97, align 1
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  store i8 -127, i8* %98, align 1
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  store i8 82, i8* %99, align 1
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 3
  store i8 0, i8* %100, align 1
  %101 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %102 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %103 = call i32 @p_mbscat_s(i8* %101, i32 8, i8* %102)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %3, align 4
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %107)
  %109 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  store i8 97, i8* %109, align 1
  %110 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  store i8 -127, i8* %110, align 1
  %111 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 2
  store i8 0, i8* %111, align 1
  %112 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  store i8 82, i8* %112, align 1
  %113 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  store i8 0, i8* %113, align 1
  %114 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %115 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %116 = call i32 @p_mbscat_s(i8* %114, i32 8, i8* %115)
  store i32 %116, i32* %3, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @EILSEQ, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %3, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %121)
  %123 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %124 = call i32 @memcmp(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 3)
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %129 = call i32 (i32, i8*, ...) @ok(i32 %127, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %128)
  %130 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  store i8 97, i8* %130, align 1
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 1
  store i8 0, i8* %131, align 1
  %132 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  store i8 98, i8* %132, align 1
  %133 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 1
  store i8 -127, i8* %133, align 1
  %134 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 2
  store i8 0, i8* %134, align 1
  %135 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %136 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %137 = call i32 @p_mbscat_s(i8* %135, i32 8, i8* %136)
  store i32 %137, i32* %3, align 4
  %138 = load i32, i32* %3, align 4
  %139 = load i32, i32* @EILSEQ, align 4
  %140 = icmp eq i32 %138, %139
  %141 = zext i1 %140 to i32
  %142 = load i32, i32* %3, align 4
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %142)
  %144 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %145 = call i32 @memcmp(i8* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %149)
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @_setmbcp(i32 %151)
  ret void
}

declare dso_local i32 @_getmbcp(...) #1

declare dso_local i32 @p_mbscat_s(i8*, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @_setmbcp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
