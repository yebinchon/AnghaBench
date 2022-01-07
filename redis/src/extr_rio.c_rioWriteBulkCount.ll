; ModuleID = '/home/carl/AnghaBench/redis/src/extr_rio.c_rioWriteBulkCount.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_rio.c_rioWriteBulkCount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rioWriteBulkCount(i32* %0, i8 signext %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8 %1, i8* %6, align 1
  store i64 %2, i64* %7, align 8
  %10 = load i8, i8* %6, align 1
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  store i8 %10, i8* %11, align 16
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @ll2string(i8* %13, i32 127, i64 %14)
  %16 = add nsw i32 1, %15
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %19
  store i8 13, i8* %20, align 1
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %23
  store i8 10, i8* %24, align 1
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @rioWrite(i32* %25, i8* %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %31, %30
  %35 = load i64, i64* %4, align 8
  ret i64 %35
}

declare dso_local i32 @ll2string(i8*, i32, i64) #1

declare dso_local i64 @rioWrite(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
