; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/file_trunc/extr_file_trunc.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/file_trunc/extr_file_trunc.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fsize = common dso_local global i32 0, align 4
@bsize = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@seed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"b:c:f:o:rs:v\00", align 1
@optarg = external dso_local global i8*, align 8
@offset = common dso_local global i8* null, align 8
@rflag = common dso_local global i32 0, align 4
@vflag = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Option -%c requires an operand\0A\00", align 1
@optopt = external dso_local global i32, align 4
@errflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Unrecognized option: -%c\0A\00", align 1
@optind = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"No filename specified\0A\00", align 1
@filename = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Seed = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* @fsize, align 4
  %7 = load i32, i32* @bsize, align 4
  %8 = sdiv i32 %6, %7
  store i32 %8, i32* @count, align 4
  %9 = call i32 @time(i32* null)
  store i32 %9, i32* @seed, align 4
  br label %10

10:                                               ; preds = %62, %2
  %11 = load i32, i32* %3, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %5, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %63

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %54 [
    i32 98, label %17
    i32 99, label %21
    i32 102, label %25
    i32 111, label %29
    i32 114, label %32
    i32 115, label %35
    i32 118, label %39
    i32 58, label %42
    i32 63, label %48
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8
  %19 = call i8* @atoi(i8* %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* @bsize, align 4
  br label %54

21:                                               ; preds = %15
  %22 = load i8*, i8** @optarg, align 8
  %23 = call i8* @atoi(i8* %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* @count, align 4
  br label %54

25:                                               ; preds = %15
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i8* @atoi(i8* %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* @fsize, align 4
  br label %54

29:                                               ; preds = %15
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i8* @atoi(i8* %30)
  store i8* %31, i8** @offset, align 8
  br label %54

32:                                               ; preds = %15
  %33 = load i32, i32* @rflag, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @rflag, align 4
  br label %54

35:                                               ; preds = %15
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i8* @atoi(i8* %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* @seed, align 4
  br label %54

39:                                               ; preds = %15
  %40 = load i64, i64* @vflag, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* @vflag, align 8
  br label %54

42:                                               ; preds = %15
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* @optopt, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i64, i64* @errflag, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* @errflag, align 8
  br label %54

48:                                               ; preds = %15
  %49 = load i32, i32* @stderr, align 4
  %50 = load i32, i32* @optopt, align 4
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i64, i64* @errflag, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* @errflag, align 8
  br label %54

54:                                               ; preds = %15, %48, %42, %39, %35, %32, %29, %25, %21, %17
  %55 = load i64, i64* @errflag, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i8**, i8*** %4, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @usage(i8* %60)
  br label %62

62:                                               ; preds = %57, %54
  br label %10

63:                                               ; preds = %10
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @optind, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i8**, i8*** %4, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @usage(i8* %72)
  br label %74

74:                                               ; preds = %67, %63
  %75 = load i8**, i8*** %4, align 8
  %76 = load i32, i32* @optind, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** @filename, align 8
  %80 = load i64, i64* @vflag, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i32, i32* @stderr, align 4
  %84 = load i32, i32* @seed, align 4
  %85 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %74
  %87 = load i32, i32* @seed, align 4
  %88 = call i32 @srandom(i32 %87)
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @srandom(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
