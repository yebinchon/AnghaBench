; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_unbase32hexmem.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-hexdecoct.c_test_unbase32hexmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"CO======\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CPNG====\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"fo\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"CPNMU===\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"CPNMUOG=\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"foob\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"CPNMUOJ1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"fooba\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"CPNMUOJ1E8======\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"A=======\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"AAA=====\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"AAAAAA==\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"AB======\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"AAAB====\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"AAAAB===\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"AAAAAAB=\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"XPNMUOJ1\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"CXNMUOJ1\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"CPXMUOJ1\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"CPNXUOJ1\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"CPNMXOJ1\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"CPNMUXJ1\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"CPNMUOX1\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"CPNMUOJX\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"CO\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"CPNG\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"CPNMU\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"CPNMUOG\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"CPNMUOJ1E8\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"AAA\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"AAAAAA\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"AAAB\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"AAAAB\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"AAAAAAB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_unbase32hexmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_unbase32hexmem() #0 {
  %1 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %3 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %4 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %5 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 1, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %6 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 1, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %7 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 1, i32 %9, i8* null)
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 1, i32 %12, i8* null)
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 1, i32 %15, i8* null)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 1, i32 %18, i8* null)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 1, i32 %21, i8* null)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i32 1, i32 %24, i8* null)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 1, i32 %27, i8* null)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 1, i32 %30, i8* null)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 1, i32 %33, i8* null)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0), i32 1, i32 %36, i8* null)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i32 1, i32 %39, i8* null)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 1, i32 %42, i8* null)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  %46 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 1, i32 %45, i8* null)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32 1, i32 %48, i8* null)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  %52 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 1, i32 %51, i8* null)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32 1, i32 %54, i8* null)
  %56 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %59 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %60 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %61 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %62 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 %64, i8* null)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 %67, i8* null)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i32 0, i32 %70, i8* null)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  %74 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), i32 0, i32 %73, i8* null)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  %77 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i32 0, i32 %76, i8* null)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  %80 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), i32 0, i32 %79, i8* null)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  %83 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i32 0, i32 %82, i8* null)
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  %86 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 0, i32 %85, i8* null)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i32 @test_unbase32hexmem_one(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i32 0, i32 %88, i8* null)
  ret void
}

declare dso_local i32 @test_unbase32hexmem_one(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
