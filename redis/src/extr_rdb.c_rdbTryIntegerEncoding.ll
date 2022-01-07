; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbTryIntegerEncoding.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rdb.c_rdbTryIntegerEncoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdbTryIntegerEncoding(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [32 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strtoll(i8* %11, i8** %9, i32 10)
  store i64 %12, i64* %8, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

19:                                               ; preds = %3
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @ll2string(i8* %20, i32 32, i64 %21)
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %24 = call i64 @strlen(i8* %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @memcmp(i8* %28, i8* %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %19
  store i32 0, i32* %4, align 4
  br label %38

34:                                               ; preds = %27
  %35 = load i64, i64* %8, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @rdbEncodeInteger(i64 %35, i8* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %33, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @ll2string(i8*, i32, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @rdbEncodeInteger(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
