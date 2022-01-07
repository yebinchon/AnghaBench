; ModuleID = '/home/carl/AnghaBench/zfs/lib/libspl/extr_timestamp.c_print_timestamp.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libspl/extr_timestamp.c_print_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_timestamp.fmt = internal global i8* null, align 8
@_DATE_FMT = common dso_local global i32 0, align 4
@UDATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@DDATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_timestamp(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = call i8* @time(i32* null)
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** @print_timestamp.fmt, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @_DATE_FMT, align 4
  %11 = call i8* @nl_langinfo(i32 %10)
  store i8* %11, i8** @print_timestamp.fmt, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @UDATE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %35

19:                                               ; preds = %12
  %20 = load i64, i64* %2, align 8
  %21 = load i64, i64* @DDATE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %25 = load i8*, i8** @print_timestamp.fmt, align 8
  %26 = call i32 @localtime(i8** %3)
  %27 = call i32 @strftime(i8* %24, i32 64, i8* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %32 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33, %19
  br label %35

35:                                               ; preds = %34, %16
  ret void
}

declare dso_local i8* @time(i32*) #1

declare dso_local i8* @nl_langinfo(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
