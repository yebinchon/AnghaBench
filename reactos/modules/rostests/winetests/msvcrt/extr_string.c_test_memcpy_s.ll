; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_memcpy_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test_memcpy_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_memcpy_s.dest = internal global [8 x i8] zeroinitializer, align 1
@test_memcpy_s.buf = internal global [32 x i8] zeroinitializer, align 16
@test_memcpy_s.tiny = internal constant [6 x i8] c"T\00INY\00", align 1
@test_memcpy_s.big = internal constant [15 x i8] c"atoolongstring\00", align 1
@.str = private unnamed_addr constant [72 x i8] c"Copying a buffer into a big enough destination returned %d, expected 0\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Copying a big buffer to a small destination returned %d, expected ERANGE\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"errno is %d, expected ERANGE\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"Copying a NULL source buffer returned %d, expected EINVAL\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"errno is %d, expected EINVAL\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"Copying into a destination of size 0 returned %d, expected ERANGE\0A\00", align 1
@.str.6 = private unnamed_addr constant [78 x i8] c"Copying a tiny buffer to a big NULL destination returned %d, expected EINVAL\0A\00", align 1
@.str.7 = private unnamed_addr constant [81 x i8] c"Copying a NULL buffer into a destination of size 0 returned %d, expected EINVAL\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"memcpy_s returned %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"unexpected buf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_memcpy_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_memcpy_s() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @memset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i8 signext 88, i32 8)
  %3 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0))
  %4 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 0))
  %5 = call i32 @p_memcpy_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i64 %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 0), i64 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp eq i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 0), align 1
  %12 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 1), align 1
  %13 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 2), align 1
  %14 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 3), align 1
  %15 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 4), align 1
  %16 = load i8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 5), align 1
  %17 = call i32 @okchars(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i8 signext %11, i8 signext %12, i8 signext %13, i8 signext %14, i8 signext %15, i8 signext %16, i8 signext 88, i8 signext 88)
  store i32 -559038737, i32* @errno, align 4
  %18 = call i32 @memset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i8 signext 88, i32 8)
  %19 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0))
  %20 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memcpy_s.big, i64 0, i64 0))
  %21 = call i32 @p_memcpy_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i64 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memcpy_s.big, i64 0, i64 0), i64 %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @ERANGE, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %1, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @errno, align 4
  %29 = load i32, i32* @ERANGE, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 (i32, i8*, ...) @ok(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = call i32 @okchars(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0)
  store i32 -559038737, i32* @errno, align 4
  %35 = call i32 @memset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i8 signext 88, i32 8)
  %36 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0))
  %37 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 0))
  %38 = call i32 @p_memcpy_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i64 %36, i8* null, i64 %37)
  store i32 %38, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* @EINVAL, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %1, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @errno, align 4
  %46 = load i32, i32* @EINVAL, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = call i32 @okchars(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0, i8 signext 0)
  store i32 -559038737, i32* @errno, align 4
  %52 = call i32 @memset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i8 signext 88, i32 8)
  %53 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 0))
  %54 = call i32 @p_memcpy_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i64 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 0), i64 %53)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @ERANGE, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %1, align 4
  %60 = call i32 (i32, i8*, ...) @ok(i32 %58, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @errno, align 4
  %62 = load i32, i32* @ERANGE, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* @errno, align 4
  %66 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = call i32 @okchars(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88)
  store i32 -559038737, i32* @errno, align 4
  %68 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0))
  %69 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 0))
  %70 = call i32 @p_memcpy_s(i8* null, i64 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 0), i64 %69)
  store i32 %70, i32* %1, align 4
  %71 = load i32, i32* %1, align 4
  %72 = load i32, i32* @EINVAL, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %1, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @errno, align 4
  %78 = load i32, i32* @EINVAL, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i32, i32* @errno, align 4
  %82 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  store i32 -559038737, i32* @errno, align 4
  %83 = call i32 @memset(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i8 signext 88, i32 8)
  %84 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @test_memcpy_s.tiny, i64 0, i64 0))
  %85 = call i32 @p_memcpy_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i64 0, i8* null, i64 %84)
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* @EINVAL, align 4
  %88 = icmp eq i32 %86, %87
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %1, align 4
  %91 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.7, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @errno, align 4
  %93 = load i32, i32* @EINVAL, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* @errno, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = call i32 @okchars(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @test_memcpy_s.dest, i64 0, i64 0), i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88, i8 signext 88)
  %99 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_memcpy_s.buf, i64 0, i64 0))
  %100 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memcpy_s.big, i64 0, i64 0))
  %101 = call i32 @p_memcpy_s(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_memcpy_s.buf, i64 0, i64 0), i64 %99, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memcpy_s.big, i64 0, i64 0), i64 %100)
  store i32 %101, i32* %1, align 4
  %102 = load i32, i32* %1, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %1, align 4
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %106)
  %108 = call i32 @memcmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_memcpy_s.buf, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memcpy_s.big, i64 0, i64 0), i32 15)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %113 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_memcpy_s.buf, i64 0, i64 0))
  %114 = sub nsw i64 %113, 1
  %115 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memcpy_s.big, i64 0, i64 0))
  %116 = call i32 @p_memcpy_s(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_memcpy_s.buf, i64 0, i64 1), i64 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_memcpy_s.buf, i64 0, i64 0), i64 %115)
  store i32 %116, i32* %1, align 4
  %117 = load i32, i32* %1, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %1, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %121)
  %123 = call i32 @memcmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_memcpy_s.buf, i64 0, i64 1), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memcpy_s.big, i64 0, i64 0), i32 15)
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %128 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_memcpy_s.buf, i64 0, i64 0))
  %129 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memcpy_s.big, i64 0, i64 0))
  %130 = call i32 @p_memcpy_s(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_memcpy_s.buf, i64 0, i64 0), i64 %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_memcpy_s.buf, i64 0, i64 1), i64 %129)
  store i32 %130, i32* %1, align 4
  %131 = load i32, i32* %1, align 4
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = load i32, i32* %1, align 4
  %136 = call i32 (i32, i8*, ...) @ok(i32 %134, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %135)
  %137 = call i32 @memcmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @test_memcpy_s.buf, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @test_memcpy_s.big, i64 0, i64 0), i32 15)
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i32 (i32, i8*, ...) @ok(i32 %140, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @p_memcpy_s(i8*, i64, i8*, i64) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @okchars(i8*, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
