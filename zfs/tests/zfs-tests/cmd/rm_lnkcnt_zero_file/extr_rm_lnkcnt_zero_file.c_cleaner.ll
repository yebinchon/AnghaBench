; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/rm_lnkcnt_zero_file/extr_rm_lnkcnt_zero_file.c_cleaner.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/rm_lnkcnt_zero_file/extr_rm_lnkcnt_zero_file.c_cleaner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@filebase = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s.%03d\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"removing file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @cleaner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cleaner(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** @filebase, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = add nsw i32 %8, 5
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = call i32 (...) @pickidx()
  store i32 %11, i32* %4, align 4
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %13 = load i32, i32* %5, align 4
  %14 = load i8*, i8** @filebase, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @snprintf(i8* %12, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0
  %18 = call i32 @remove(i8* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %10
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @ENOENT, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21, %10
  br label %10
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pickidx(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
