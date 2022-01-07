; ModuleID = '/home/carl/AnghaBench/redis/src/extr_listpack.c_lpLength.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_listpack.c_lpLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LP_HDR_NUMELE_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lpLength(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @lpGetNumElements(i8* %7)
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @LP_HDR_NUMELE_UNKNOWN, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %2, align 8
  br label %36

14:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @lpFirst(i8* %15)
  store i8* %16, i8** %6, align 8
  br label %17

17:                                               ; preds = %20, %14
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %5, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @lpNext(i8* %23, i8* %24)
  store i8* %25, i8** %6, align 8
  br label %17

26:                                               ; preds = %17
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @LP_HDR_NUMELE_UNKNOWN, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @lpSetNumElements(i8* %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i64, i64* %5, align 8
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %34, %12
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i64 @lpGetNumElements(i8*) #1

declare dso_local i8* @lpFirst(i8*) #1

declare dso_local i8* @lpNext(i8*, i8*) #1

declare dso_local i32 @lpSetNumElements(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
