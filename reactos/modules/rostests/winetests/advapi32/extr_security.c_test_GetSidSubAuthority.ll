; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_GetSidSubAuthority.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_GetSidSubAuthority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"S-1-5-21-93476-23408-4576\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ConvertStringSidToSidA failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Sid is not valid\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"GetSidSubAuthorityCount gave %d expected 4\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"GetLastError returned %d instead of 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"GetSidSubAuthority gave %d expected 21\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"GetSidSubAuthority gave %d expected 93476\0A\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"Expected out of bounds GetSidSubAuthority to return a non-NULL pointer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetSidSubAuthority to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetSidSubAuthority() #0 {
  %1 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %2 = call i32 @pConvertStringSidToSidA(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32** %1)
  %3 = call i32 (i32, i8*, ...) @ok(i32 %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %4 = load i32*, i32** %1, align 8
  %5 = call i32 @pIsValidSid(i32* %4)
  %6 = call i32 (i32, i8*, ...) @ok(i32 %5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @SetLastError(i32 -1094792502)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32* @pGetSidSubAuthorityCount(i32* %8)
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 4
  %12 = zext i1 %11 to i32
  %13 = load i32*, i32** %1, align 8
  %14 = call i32* @pGetSidSubAuthorityCount(i32* %13)
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  %17 = call i32 (...) @GetLastError()
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 (...) @GetLastError()
  %21 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = call i32 @SetLastError(i32 -1094792502)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32* @pGetSidSubAuthority(i32* %23, i32 0)
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 21
  %27 = zext i1 %26 to i32
  %28 = load i32*, i32** %1, align 8
  %29 = call i32* @pGetSidSubAuthority(i32* %28, i32 0)
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %30)
  %32 = call i32 (...) @GetLastError()
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 (...) @GetLastError()
  %36 = call i32 (i32, i8*, ...) @ok(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = call i32 @SetLastError(i32 -1094792502)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32* @pGetSidSubAuthority(i32* %38, i32 1)
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 93476
  %42 = zext i1 %41 to i32
  %43 = load i32*, i32** %1, align 8
  %44 = call i32* @pGetSidSubAuthority(i32* %43, i32 1)
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = call i32 (...) @GetLastError()
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = call i32 @SetLastError(i32 -1094792502)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32* @pGetSidSubAuthority(i32* %53, i32 4)
  %55 = icmp ne i32* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0))
  %58 = call i32 (...) @GetLastError()
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 (...) @GetLastError()
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @LocalFree(i32* %63)
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pConvertStringSidToSidA(i8*, i32**) #1

declare dso_local i32 @pIsValidSid(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32* @pGetSidSubAuthorityCount(i32*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @pGetSidSubAuthority(i32*, i32) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
