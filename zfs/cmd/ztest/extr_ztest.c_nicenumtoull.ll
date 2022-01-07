; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_nicenumtoull.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_nicenumtoull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ztest: bad numeric value: %s\0A\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"ztest: value too large: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @nicenumtoull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicenumtoull(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @strtoull(i8* %7, i8** %3, i32 0)
  store i32 %8, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp eq i8* %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @stderr, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* @B_FALSE, align 4
  %17 = call i32 @usage(i32 %16)
  br label %68

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load i8*, i8** %2, align 8
  %26 = call double @strtod(i8* %25, i8** %3)
  store double %26, double* %5, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @str2shift(i8* %27)
  %29 = call double @pow(i32 2, i32 %28)
  %30 = load double, double* %5, align 8
  %31 = fmul double %30, %29
  store double %31, double* %5, align 8
  %32 = load double, double* %5, align 8
  %33 = load double, double* @UINT64_MAX, align 8
  %34 = fcmp ogt double %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @B_FALSE, align 4
  %40 = call i32 @usage(i32 %39)
  br label %41

41:                                               ; preds = %35, %24
  %42 = load double, double* %5, align 8
  %43 = fptosi double %42 to i32
  store i32 %43, i32* %4, align 4
  br label %67

44:                                               ; preds = %18
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @str2shift(i8* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sge i32 %47, 64
  br i1 %48, label %57, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = ashr i32 %52, %53
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49, %44
  %58 = load i32, i32* @stderr, align 4
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @B_FALSE, align 4
  %62 = call i32 @usage(i32 %61)
  br label %63

63:                                               ; preds = %57, %49
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %41
  br label %68

68:                                               ; preds = %67, %12
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local double @pow(i32, i32) #1

declare dso_local i32 @str2shift(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
