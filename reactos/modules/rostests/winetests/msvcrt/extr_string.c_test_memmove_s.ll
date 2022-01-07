; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_memmove_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_memmove_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_memmove_s.dest = internal global [8 x i8] zeroinitializer, align 1
@test_memmove_s.tiny = internal constant [6 x i8] c"T\00INY\00", align 1
@test_memmove_s.big = internal constant [15 x i8] c"atoolongstring\00", align 1
@.str = private unnamed_addr constant [71 x i8] c"Moving a buffer into a big enough destination returned %d, expected 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Moving a buffer up one char returned %d, expected 0\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"Moving a big buffer to a small destination returned %d, expected ERANGE\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"errno is %d, expected ERANGE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"Moving a NULL source buffer returned %d, expected EINVAL\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"errno is %d, expected EINVAL\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"Moving into a destination of size 0 returned %d, expected ERANGE\0A\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"Moving a tiny buffer to a big NULL destination returned %d, expected EINVAL\0A\00", align 1
@.str.8 = private unnamed_addr constant [80 x i8] c"Moving a NULL buffer into a destination of size 0 returned %d, expected EINVAL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_memmove_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memmove_s() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @memset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8 signext 88, i32 8)
  %3 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0))
  %4 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 0))
  %5 = call i32 @p_memmove_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i64 %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 0), i64 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 0), align 1
  %12 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 1), align 1
  %13 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 2), align 1
  %14 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 3), align 1
  %15 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 4), align 1
  %16 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 5), align 1
  %17 = call i32 @okchars(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8 signext %11, i8 signext %12, i8 signext %13, i8 signext %14, i8 signext %15, i8 signext %16, i8 signext 88, i8 signext 88)
  %18 = call i32 @memcpy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memmove_s.big, i64 0, i64 0), i32 8)
  %19 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0))
  %20 = sub nsw i64 %19, 1
  %21 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0))
  %22 = sub nsw i64 %21, 1
  %23 = call i32 @p_memmove_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 1), i64 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i64 %22)
  store i32 %23, i32* %1, align 4
  %24 = load i32, i32* %1, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memmove_s.big, i64 0, i64 0), align 1
  %30 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memmove_s.big, i64 0, i64 0), align 1
  %31 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memmove_s.big, i64 0, i64 1), align 1
  %32 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memmove_s.big, i64 0, i64 2), align 1
  %33 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memmove_s.big, i64 0, i64 3), align 1
  %34 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memmove_s.big, i64 0, i64 4), align 1
  %35 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memmove_s.big, i64 0, i64 5), align 1
  %36 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memmove_s.big, i64 0, i64 6), align 1
  %37 = call i32 @okchars(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8 signext %29, i8 signext %30, i8 signext %31, i8 signext %32, i8 signext %33, i8 signext %34, i8 signext %35, i8 signext %36)
  store i32 -559038737, i32* @errno, align 4
  %38 = call i32 @memset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8 signext 88, i32 8)
  %39 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0))
  %40 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memmove_s.big, i64 0, i64 0))
  %41 = call i32 @p_memmove_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i64 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memmove_s.big, i64 0, i64 0), i64 %40)
  store i32 %41, i32* %1, align 4
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @ERANGE, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @errno, align 4
  %49 = load i32, i32* @ERANGE, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = call i32 @okchars(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88)
  store i32 -559038737, i32* @errno, align 4
  %55 = call i32 @memset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8 signext 88, i32 8)
  %56 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0))
  %57 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 0))
  %58 = call i32 @p_memmove_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i64 %56, i8* null, i64 %57)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @ok(i32 %62, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @errno, align 4
  %66 = load i32, i32* @EINVAL, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = call i32 @okchars(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88)
  store i32 -559038737, i32* @errno, align 4
  %72 = call i32 @memset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8 signext 88, i32 8)
  %73 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 0))
  %74 = call i32 @p_memmove_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 0), i64 %73)
  store i32 %74, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @ERANGE, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %1, align 4
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @errno, align 4
  %82 = load i32, i32* @ERANGE, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* @errno, align 4
  %86 = call i32 @ok(i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = call i32 @okchars(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88)
  store i32 -559038737, i32* @errno, align 4
  %88 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0))
  %89 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 0))
  %90 = call i32 @p_memmove_s(i8* null, i64 %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 0), i64 %89)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = load i32, i32* @EINVAL, align 4
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %1, align 4
  %96 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @errno, align 4
  %98 = load i32, i32* @EINVAL, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* @errno, align 4
  %102 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  store i32 -559038737, i32* @errno, align 4
  %103 = call i32 @memset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8 signext 88, i32 8)
  %104 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memmove_s.tiny, i64 0, i64 0))
  %105 = call i32 @p_memmove_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i64 0, i8* null, i64 %104)
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* @EINVAL, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %1, align 4
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @errno, align 4
  %113 = load i32, i32* @EINVAL, align 4
  %114 = icmp eq i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* @errno, align 4
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  %118 = call i32 @okchars(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memmove_s.dest, i64 0, i64 0), i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88)
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @p_memmove_s(i8*, i64, i8*, i64) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @okchars(i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
