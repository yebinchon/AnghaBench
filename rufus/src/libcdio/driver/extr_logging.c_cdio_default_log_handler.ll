; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_logging.c_cdio_default_log_handler.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_logging.c_cdio_default_log_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cdio_loglevel_default = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"**ERROR: %s\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"--DEBUG: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"++ WARN: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"   INFO: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"!ASSERT: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdio_default_log_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %58 [
    i32 130, label %6
    i32 131, label %19
    i32 128, label %28
    i32 129, label %37
    i32 132, label %46
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @cdio_loglevel_default, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = load i32, i32* @stderr, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fflush(i32 %14)
  br label %16

16:                                               ; preds = %10, %6
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  %18 = call i32 @exit(i32 %17) #3
  unreachable

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @cdio_loglevel_default, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @stdout, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %19
  br label %60

28:                                               ; preds = %2
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @cdio_loglevel_default, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* @stdout, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %60

37:                                               ; preds = %2
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @cdio_loglevel_default, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @stdout, align 4
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @fprintf(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %41, %37
  br label %60

46:                                               ; preds = %2
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @cdio_loglevel_default, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fflush(i32 %54)
  br label %56

56:                                               ; preds = %50, %46
  %57 = call i32 (...) @abort() #3
  unreachable

58:                                               ; preds = %2
  %59 = call i32 (...) @cdio_assert_not_reached()
  br label %60

60:                                               ; preds = %58, %45, %36, %27
  %61 = load i32, i32* @stdout, align 4
  %62 = call i32 @fflush(i32 %61)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @cdio_assert_not_reached(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
