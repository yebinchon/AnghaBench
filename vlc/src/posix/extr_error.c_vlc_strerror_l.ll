; ModuleID = '/home/carl/AnghaBench/vlc/src/posix/extr_error.c_vlc_strerror_l.c'
source_filename = "/home/carl/AnghaBench/vlc/src/posix/extr_error.c_vlc_strerror_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@LC_MESSAGES_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Error message unavailable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @vlc_strerror_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_strerror_l(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @errno, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @LC_MESSAGES_MASK, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @newlocale(i32 %10, i8* %11, i64 0)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %2
  %19 = load i32, i32* @errno, align 4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @LC_MESSAGES_MASK, align 4
  %24 = call i64 @newlocale(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 0)
  store i64 %24, i64* %7, align 8
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load i32, i32* @errno, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @errno, align 4
  %37 = load i32, i32* @ENOENT, align 4
  %38 = icmp ne i32 %36, %37
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* @errno, align 4
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %53

44:                                               ; preds = %25
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* @errno, align 4
  br label %46

46:                                               ; preds = %44, %2
  %47 = load i32, i32* %4, align 4
  %48 = load i64, i64* %7, align 8
  %49 = call i8* @strerror_l(i32 %47, i64 %48)
  store i8* %49, i8** %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @freelocale(i64 %50)
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %46, %39
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

declare dso_local i64 @newlocale(i32, i8*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @strerror_l(i32, i64) #1

declare dso_local i32 @freelocale(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
