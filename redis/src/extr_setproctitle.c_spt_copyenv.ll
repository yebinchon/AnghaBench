; ModuleID = '/home/carl/AnghaBench/redis/src/extr_setproctitle.c_spt_copyenv.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_setproctitle.c_spt_copyenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@environ = external dso_local global i8**, align 8
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @spt_copyenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spt_copyenv(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %7 = load i8**, i8*** @environ, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = icmp ne i8** %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

11:                                               ; preds = %1
  %12 = call i32 (...) @spt_clearenv()
  store i32 %12, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %57

15:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %53, %15
  %17 = load i8**, i8*** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %56

23:                                               ; preds = %16
  %24 = load i8**, i8*** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 61)
  store i8* %29, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  br label %53

32:                                               ; preds = %23
  %33 = load i8*, i8** %4, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8**, i8*** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i64 @setenv(i8* %38, i8* %40, i32 1)
  %42 = icmp ne i64 0, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* @errno, align 4
  br label %46

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32 [ %44, %43 ], [ 0, %45 ]
  store i32 %47, i32* %6, align 4
  %48 = load i8*, i8** %4, align 8
  store i8 61, i8* %48, align 1
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %57

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %16

56:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %60

57:                                               ; preds = %51, %14
  %58 = load i8**, i8*** %3, align 8
  store i8** %58, i8*** @environ, align 8
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %56, %10
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @spt_clearenv(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
