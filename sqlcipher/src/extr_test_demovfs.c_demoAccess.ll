; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_demovfs.c_demoAccess.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_demovfs.c_demoAccess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@F_OK = common dso_local global i32 0, align 4
@SQLITE_ACCESS_EXISTS = common dso_local global i32 0, align 4
@SQLITE_ACCESS_READ = common dso_local global i32 0, align 4
@SQLITE_ACCESS_READWRITE = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@W_OK = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32*)* @demoAccess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demoAccess(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @F_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @SQLITE_ACCESS_EXISTS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SQLITE_ACCESS_READ, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @SQLITE_ACCESS_READWRITE, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %15, %4
  %24 = phi i1 [ true, %15 ], [ true, %4 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SQLITE_ACCESS_READWRITE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @R_OK, align 4
  %32 = load i32, i32* @W_OK, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SQLITE_ACCESS_READ, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @R_OK, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @access(i8* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @access(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
