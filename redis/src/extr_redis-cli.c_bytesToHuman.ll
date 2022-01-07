; ModuleID = '/home/carl/AnghaBench/redis/src/extr_redis-cli.c_bytesToHuman.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_redis-cli.c_bytesToHuman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%lldB\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.2fK\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%.2fM\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%.2fG\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bytesToHuman(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  store i8 45, i8* %9, align 1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = sub nsw i64 0, %12
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %8, %2
  %15 = load i64, i64* %4, align 8
  %16 = icmp slt i64 %15, 1024
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = sitofp i64 %19 to double
  %21 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %20)
  br label %55

22:                                               ; preds = %14
  %23 = load i64, i64* %4, align 8
  %24 = icmp slt i64 %23, 1048576
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i64, i64* %4, align 8
  %27 = sitofp i64 %26 to double
  %28 = fdiv double %27, 1.024000e+03
  store double %28, double* %5, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load double, double* %5, align 8
  %31 = call i32 @sprintf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), double %30)
  br label %54

32:                                               ; preds = %22
  %33 = load i64, i64* %4, align 8
  %34 = icmp slt i64 %33, 1073741824
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i64, i64* %4, align 8
  %37 = sitofp i64 %36 to double
  %38 = fdiv double %37, 0x4130000000000000
  store double %38, double* %5, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = load double, double* %5, align 8
  %41 = call i32 @sprintf(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), double %40)
  br label %53

42:                                               ; preds = %32
  %43 = load i64, i64* %4, align 8
  %44 = icmp slt i64 %43, 1099511627776
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i64, i64* %4, align 8
  %47 = sitofp i64 %46 to double
  %48 = fdiv double %47, 0x41D0000000000000
  store double %48, double* %5, align 8
  %49 = load i8*, i8** %3, align 8
  %50 = load double, double* %5, align 8
  %51 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %50)
  br label %52

52:                                               ; preds = %45, %42
  br label %53

53:                                               ; preds = %52, %35
  br label %54

54:                                               ; preds = %53, %25
  br label %55

55:                                               ; preds = %17, %54
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
