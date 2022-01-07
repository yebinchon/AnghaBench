; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_sprintf.c_test_d.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_sprintf.c_test_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"1234567\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"-1234567\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%hd\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-10617\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%08d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"00001234\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%-08d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"1234    \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%+08d\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"+0001234\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%+3d\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"+1234\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"%3.3d\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%3.6d\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"001234\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%8d\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"   -1234\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"-0001234\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"-1234\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%wd\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"591757049\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%I64d\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"-5149074030855\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"%Ld\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"%lhwI64d\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"%I64hlwd\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"%hlwd\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"32505\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"%Ild\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"Ild\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"%hhd\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"%hI32hd\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c" %d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_d() #0 {
  %1 = alloca [5000 x i8], align 16
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %4 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 1234567)
  %5 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %6 = call i32 @ok_str(i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %7 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %8 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 -1234567)
  %9 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %10 = call i32 @ok_str(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %11 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %12 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 1234567)
  %13 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %14 = call i32 @ok_str(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %15 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %16 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 1234)
  %17 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %18 = call i32 @ok_str(i8* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %19 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %20 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 1234)
  %21 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %22 = call i32 @ok_str(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %23 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %24 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 1234)
  %25 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %26 = call i32 @ok_str(i8* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %27 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %28 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 1234)
  %29 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %30 = call i32 @ok_str(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %31 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %32 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 1234)
  %33 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %34 = call i32 @ok_str(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %35 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %36 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 1234)
  %37 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %38 = call i32 @ok_str(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0))
  %39 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %40 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 -1234)
  %41 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %42 = call i32 @ok_str(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %43 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %44 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 -1234)
  %45 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %46 = call i32 @ok_str(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %47 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %48 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 -1234)
  %49 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %50 = call i32 @ok_str(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %51 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %52 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 -1234)
  %53 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %54 = call i32 @ok_str(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0))
  %55 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %56 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 591757049)
  %57 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %58 = call i32 @ok_str(i8* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %59 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %60 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 591757049)
  %61 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %62 = call i32 @ok_str(i8* %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %63 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %64 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 591757049)
  %65 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %66 = call i32 @ok_str(i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %67 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %68 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 591757049)
  %69 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %70 = call i32 @ok_str(i8* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %71 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %72 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32 591757049)
  %73 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %74 = call i32 @ok_str(i8* %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %75 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %76 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32 591757049)
  %77 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %78 = call i32 @ok_str(i8* %77, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %79 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %80 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 591757049)
  %81 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %82 = call i32 @ok_str(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %83 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %84 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 591757049)
  %85 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %86 = call i32 @ok_str(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  %87 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %88 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 591757049)
  %89 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %90 = call i32 @ok_str(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %91 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %92 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i32 591757049)
  %93 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %94 = call i32 @ok_str(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %95 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %96 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i32 591757049)
  %97 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %98 = call i32 @ok_str(i8* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %99 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %100 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i32 591757049)
  %101 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %102 = call i32 @ok_str(i8* %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %103 = getelementptr inbounds [5000 x i8], [5000 x i8]* %1, i64 0, i64 0
  %104 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i32 3, i32 0)
  store i32 %104, i32* %2, align 4
  %105 = load i32, i32* %2, align 4
  %106 = call i32 @ok_int(i32 %105, i32 4)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @ok_str(i8*, i8*) #1

declare dso_local i32 @ok_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
