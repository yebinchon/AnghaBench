; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__strlwr_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_string.c_test__strlwr_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADF = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Expected _strlwr_s to return EINVAL, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected errno to be EINVAL, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"GoRrIsTeR\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\00oRrIsTeR\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Expected the output buffer to be \22\\0oRrIsTeR\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Expected _strlwr_s to return 0, got %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gorrister\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"Expected the output buffer to be \22gorrister\22, got \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"GoRrIsTeR\00ELLEN\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"gorrister\00ELLEN\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"Expected the output buffer to be \22gorrister\\0ELLEN\22, got \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__strlwr_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__strlwr_s() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [20 x i8], align 16
  %3 = load i64, i64* @EBADF, align 8
  store i64 %3, i64* @errno, align 8
  %4 = call i64 @p_strlwr_s(i8* null, i32 0)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @EINVAL, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %1, align 8
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* @errno, align 8
  %12 = load i64, i64* @EINVAL, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* @errno, align 8
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* @EBADF, align 8
  store i64 %17, i64* @errno, align 8
  %18 = call i64 @p_strlwr_s(i8* null, i32 20)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = load i64, i64* @EINVAL, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i64, i64* %1, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EINVAL, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i64, i64* @errno, align 8
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* @EBADF, align 8
  store i64 %31, i64* @errno, align 8
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %33 = call i64 @p_strlwr_s(i8* %32, i32 0)
  store i64 %33, i64* %1, align 8
  %34 = load i64, i64* %1, align 8
  %35 = load i64, i64* @EINVAL, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i64, i64* %1, align 8
  %39 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EINVAL, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = load i64, i64* @errno, align 8
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %47 = call i32 @strcpy(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i64, i64* @EBADF, align 8
  store i64 %48, i64* @errno, align 8
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %50 = call i64 @p_strlwr_s(i8* %49, i32 5)
  store i64 %50, i64* %1, align 8
  %51 = load i64, i64* %1, align 8
  %52 = load i64, i64* @EINVAL, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i64, i64* %1, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i64, i64* @errno, align 8
  %58 = load i64, i64* @EINVAL, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* @errno, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  %63 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %64 = call i32 @memcmp(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %69 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %70 = call i32 @strcpy(i8* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i64, i64* @EBADF, align 8
  store i64 %71, i64* @errno, align 8
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %73 = call i64 @p_strlwr_s(i8* %72, i32 9)
  store i64 %73, i64* %1, align 8
  %74 = load i64, i64* %1, align 8
  %75 = load i64, i64* @EINVAL, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i64, i64* %1, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load i64, i64* @errno, align 8
  %81 = load i64, i64* @EINVAL, align 8
  %82 = icmp eq i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64, i64* @errno, align 8
  %85 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  %86 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %87 = call i32 @memcmp(i8* %86, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %92 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %93 = call i32 @strcpy(i8* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %94 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %95 = call i64 @p_strlwr_s(i8* %94, i32 10)
  store i64 %95, i64* %1, align 8
  %96 = load i64, i64* %1, align 8
  %97 = icmp eq i64 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load i64, i64* %1, align 8
  %100 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %99)
  %101 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %107 = call i32 (i32, i8*, ...) @ok(i32 %105, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0), i8* %106)
  %108 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %109 = call i32 @memcpy(i8* %108, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 16)
  %110 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %111 = call i64 @p_strlwr_s(i8* %110, i32 20)
  store i64 %111, i64* %1, align 8
  %112 = load i64, i64* %1, align 8
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  %115 = load i64, i64* %1, align 8
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %115)
  %117 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %118 = call i32 @memcmp(i8* %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 16)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = getelementptr inbounds [20 x i8], [20 x i8]* %2, i64 0, i64 0
  %123 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i8* %122)
  ret void
}

declare dso_local i64 @p_strlwr_s(i8*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
