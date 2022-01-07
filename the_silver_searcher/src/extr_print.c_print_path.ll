; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_print.c_print_path.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_print.c_print_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i64, i64, i64 }

@opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PATH_PRINT_NOTHING = common dso_local global i64 0, align 8
@out_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c":%s%c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s%s%s%c\00", align 1
@color_reset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_path(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 0), align 8
  %6 = load i64, i64* @PATH_PRINT_NOTHING, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 3), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  br label %51

12:                                               ; preds = %8, %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @normalize_path(i8* %13)
  store i8* %14, i8** %3, align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 4), align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* @out_fd, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %4, align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %21)
  br label %51

23:                                               ; preds = %12
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 3), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @out_fd, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %4, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %30)
  br label %50

32:                                               ; preds = %23
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 2), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* @out_fd, align 4
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 1), align 8
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* @color_reset, align 4
  %40 = load i8, i8* %4, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %37, i8* %38, i32 %39, i32 %41)
  br label %49

43:                                               ; preds = %32
  %44 = load i32, i32* @out_fd, align 4
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %4, align 1
  %47 = sext i8 %46 to i32
  %48 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %47)
  br label %49

49:                                               ; preds = %43, %35
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %11, %50, %17
  ret void
}

declare dso_local i8* @normalize_path(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
