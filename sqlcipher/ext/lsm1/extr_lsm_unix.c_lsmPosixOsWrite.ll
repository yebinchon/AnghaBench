; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_unix.c_lsmPosixOsWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@LSM_OK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@LSM_IOERR_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i8*, i32)* @lsmPosixOsWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsmPosixOsWrite(i32* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @LSM_OK, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %10, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = call i64 @lseek(i32 %18, i64 %19, i32 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %26, i32* %9, align 4
  br label %40

27:                                               ; preds = %4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = call i64 @write(i32 %30, i8* %31, i64 %33)
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @LSM_IOERR_BKPT, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %27
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
