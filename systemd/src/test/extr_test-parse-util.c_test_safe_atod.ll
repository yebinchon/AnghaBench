; ModuleID = '/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_safe_atod.c'
source_filename = "/home/carl/AnghaBench/systemd/src/test/extr_test-parse-util.c_test_safe_atod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"junk\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"0.2244\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"0,5\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LC_NUMERIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"de_DE.utf8\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_safe_atod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_safe_atod() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca i8*, align 8
  %4 = call i32 @safe_atod(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), double* %2)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  %8 = icmp eq i32 %5, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert_se(i32 %9)
  %11 = call i32 @safe_atod(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double* %2)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert_se(i32 %14)
  %16 = load double, double* %2, align 8
  %17 = fsub double %16, 2.244000e-01
  %18 = call double @llvm.fabs.f64(double %17)
  %19 = fcmp olt double %18, 0x3EB0C6F7A0B5ED8D
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_se(i32 %20)
  %22 = call i32 @safe_atod(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double* %2)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert_se(i32 %27)
  store i64 0, i64* @errno, align 8
  %29 = call double @strtod(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3)
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 44
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert_se(i32 %34)
  %36 = call i32 @safe_atod(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), double* %2)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert_se(i32 %41)
  %43 = load i32, i32* @LC_NUMERIC, align 4
  %44 = call i32 @setlocale(i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %0
  %47 = call i32 @safe_atod(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double* %2)
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert_se(i32 %50)
  %52 = load double, double* %2, align 8
  %53 = fsub double %52, 2.244000e-01
  %54 = call double @llvm.fabs.f64(double %53)
  %55 = fcmp olt double %54, 0x3EB0C6F7A0B5ED8D
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert_se(i32 %56)
  %58 = call i32 @safe_atod(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double* %2)
  store i32 %58, i32* %1, align 4
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert_se(i32 %63)
  store i64 0, i64* @errno, align 8
  %65 = call double @strtod(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3)
  %66 = fsub double %65, 5.000000e-01
  %67 = call double @llvm.fabs.f64(double %66)
  %68 = fcmp olt double %67, 1.000000e-05
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert_se(i32 %69)
  %71 = call i32 @safe_atod(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), double* %2)
  store i32 %71, i32* %1, align 4
  %72 = load i32, i32* %1, align 4
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  %75 = icmp eq i32 %72, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert_se(i32 %76)
  br label %78

78:                                               ; preds = %46, %0
  %79 = load i32, i32* @LC_NUMERIC, align 4
  %80 = call i32 @setlocale(i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i32 @assert_se(i32 %80)
  %82 = call i32 @safe_atod(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double* %2)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert_se(i32 %85)
  %87 = load double, double* %2, align 8
  %88 = fsub double %87, 2.244000e-01
  %89 = call double @llvm.fabs.f64(double %88)
  %90 = fcmp olt double %89, 0x3EB0C6F7A0B5ED8D
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert_se(i32 %91)
  %93 = call i32 @safe_atod(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double* %2)
  store i32 %93, i32* %1, align 4
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp eq i32 %94, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert_se(i32 %98)
  store i64 0, i64* @errno, align 8
  %100 = call double @strtod(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %3)
  %101 = load i8*, i8** %3, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 44
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert_se(i32 %105)
  %107 = call i32 @safe_atod(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), double* %2)
  store i32 %107, i32* %1, align 4
  %108 = load i32, i32* %1, align 4
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert_se(i32 %112)
  ret void
}

declare dso_local i32 @safe_atod(i8*, double*) #1

declare dso_local i32 @assert_se(i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i32 @setlocale(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
