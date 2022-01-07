; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/stride_dd/extr_stride_dd.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/stride_dd/extr_stride_dd.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@execname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c":b:c:i:o:s:k:\00", align 1
@optarg = external dso_local global i8*, align 8
@bsize = common dso_local global i64 0, align 8
@count = common dso_local global i64 0, align 8
@ifile = common dso_local global i8* null, align 8
@ofile = common dso_local global i8* null, align 8
@stride = common dso_local global i64 0, align 8
@seek = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Option -%c requires an operand\0A\00", align 1
@optopt = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Unrecognized option: -%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Required parameter(s) missing or invalid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @execname, align 8
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i32, i32* %3, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %52

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %40 [
    i32 98, label %17
    i32 99, label %20
    i32 105, label %23
    i32 111, label %25
    i32 115, label %27
    i32 107, label %30
    i32 58, label %33
    i32 63, label %39
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8
  %19 = call i64 @atoi(i8* %18)
  store i64 %19, i64* @bsize, align 8
  br label %46

20:                                               ; preds = %15
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i64 @atoi(i8* %21)
  store i64 %22, i64* @count, align 8
  br label %46

23:                                               ; preds = %15
  %24 = load i8*, i8** @optarg, align 8
  store i8* %24, i8** @ifile, align 8
  br label %46

25:                                               ; preds = %15
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** @ofile, align 8
  br label %46

27:                                               ; preds = %15
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i64 @atoi(i8* %28)
  store i64 %29, i64* @stride, align 8
  br label %46

30:                                               ; preds = %15
  %31 = load i8*, i8** @optarg, align 8
  %32 = call i64 @atoi(i8* %31)
  store i64 %32, i64* @seek, align 8
  br label %46

33:                                               ; preds = %15
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* @optopt, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %46

39:                                               ; preds = %15
  br label %40

40:                                               ; preds = %15, %39
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32, i32* @optopt, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %40, %33, %30, %27, %25, %23, %20, %17
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (...) @usage()
  br label %51

51:                                               ; preds = %49, %46
  br label %10

52:                                               ; preds = %10
  %53 = load i64, i64* @bsize, align 8
  %54 = icmp sle i64 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @count, align 8
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @stride, align 8
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load i8*, i8** @ifile, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load i8*, i8** @ofile, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @seek, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67, %64, %61, %58, %55, %52
  %71 = load i32, i32* @stderr, align 4
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %73 = call i32 (...) @usage()
  br label %74

74:                                               ; preds = %70, %67
  ret void
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
