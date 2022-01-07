; ModuleID = '/home/carl/AnghaBench/redis/src/extr_syncio.c_syncWrite.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_syncio.c_syncWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYNCIO__RESOLUTION = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@AE_WRITABLE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @syncWrite(i32 %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %11, align 4
  %17 = call i64 (...) @mstime()
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %13, align 8
  br label %19

19:                                               ; preds = %4, %67
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* @SYNCIO__RESOLUTION, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* %13, align 8
  br label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @SYNCIO__RESOLUTION, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i64 [ %24, %23 ], [ %26, %25 ]
  store i64 %28, i64* %14, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @write(i32 %29, i8* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @EAGAIN, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %71

40:                                               ; preds = %35
  br label %49

41:                                               ; preds = %27
  %42 = load i32, i32* %10, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %41, %40
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %71

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @AE_WRITABLE, align 4
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @aeWait(i32 %55, i32 %56, i64 %57)
  %59 = call i64 (...) @mstime()
  %60 = load i64, i64* %12, align 8
  %61 = sub nsw i64 %59, %60
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i64, i64* @ETIMEDOUT, align 8
  store i64 %66, i64* @errno, align 8
  store i32 -1, i32* %5, align 4
  br label %71

67:                                               ; preds = %54
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %15, align 8
  %70 = sub nsw i64 %68, %69
  store i64 %70, i64* %13, align 8
  br label %19

71:                                               ; preds = %65, %52, %39
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @mstime(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @aeWait(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
