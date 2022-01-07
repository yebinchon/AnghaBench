; ModuleID = '/home/carl/AnghaBench/redis/src/extr_t_stream.c_string2ull.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_t_stream.c_string2ull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string2ull(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = call i64 @string2ll(i8* %8, i32 %10, i64* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %43

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  store i32 1, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  store i64 0, i64* @errno, align 8
  store i8* null, i8** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strtoull(i8* %21, i8** %7, i32 10)
  %23 = load i64*, i64** %5, align 8
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINVAL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %20
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ERANGE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %31, %27, %20
  store i32 0, i32* %3, align 4
  br label %43

42:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41, %17, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @string2ll(i8*, i32, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strtoull(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
