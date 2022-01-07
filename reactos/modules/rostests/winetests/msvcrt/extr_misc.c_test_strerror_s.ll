; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_misc.c_test_strerror_s.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_misc.c_test_strerror_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Expected strerror_s to return EINVAL, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Expected errno to be EINVAL, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Expected output buffer to be untouched\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Expected strerror_s to return 0, got %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Expected output buffer to be null terminated\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Expected output buffer to be truncated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_strerror_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_strerror_s() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = load i32, i32* @EBADF, align 4
  store i32 %3, i32* @errno, align 4
  %4 = call i32 @pstrerror_s(i8* null, i32 0, i32 0)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @EINVAL, align 4
  %7 = icmp eq i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* %1, align 4
  %10 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @errno, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EBADF, align 4
  store i32 %17, i32* @errno, align 4
  %18 = call i32 @pstrerror_s(i8* null, i32 256, i32 0)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %1, align 4
  %24 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @errno, align 4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %32 = call i32 @memset(i8* %31, i8 signext 88, i32 256)
  %33 = load i32, i32* @EBADF, align 4
  store i32 %33, i32* @errno, align 4
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %35 = call i32 @pstrerror_s(i8* %34, i32 0, i32 0)
  store i32 %35, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %1, align 4
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @errno, align 4
  %43 = load i32, i32* @EINVAL, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %49 = load i8, i8* %48, align 16
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 88
  %52 = zext i1 %51 to i32
  %53 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %55 = call i32 @memset(i8* %54, i8 signext 88, i32 256)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %57 = call i32 @pstrerror_s(i8* %56, i32 1, i32 0)
  store i32 %57, i32* %1, align 4
  %58 = load i32, i32* %1, align 4
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %1, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %64 = call i32 @strlen(i8* %63)
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %69 = call i32 @memset(i8* %68, i8 signext 88, i32 256)
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %71 = call i32 @pstrerror_s(i8* %70, i32 2, i32 0)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %1, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %78 = call i32 @strlen(i8* %77)
  %79 = icmp eq i32 %78, 1
  %80 = zext i1 %79 to i32
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %83 = call i32 @memset(i8* %82, i8 signext 88, i32 256)
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %85 = call i32 @pstrerror_s(i8* %84, i32 256, i32 0)
  store i32 %85, i32* %1, align 4
  %86 = load i32, i32* %1, align 4
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = load i32, i32* %1, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %92 = call i32 @memset(i8* %91, i8 signext 88, i32 256)
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %94 = call i32 @pstrerror_s(i8* %93, i32 256, i32 -1)
  store i32 %94, i32* %1, align 4
  %95 = load i32, i32* %1, align 4
  %96 = icmp eq i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %1, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  ret void
}

declare dso_local i32 @pstrerror_s(i8*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
