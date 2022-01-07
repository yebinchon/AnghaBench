; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__chm_fetch_bytes.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_lib.c__chm_fetch_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmFile = type { i64, i32 }

@CHM_NULL_FD = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@FILE_BEGIN = common dso_local global i32 0, align 4
@FILE_CURRENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chmFile*, i32*, i32, i32)* @_chm_fetch_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_chm_fetch_bytes(%struct.chmFile* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.chmFile*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.chmFile* %0, %struct.chmFile** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %13 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CHM_NULL_FD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %54

19:                                               ; preds = %4
  %20 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %21 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @CHM_ACQUIRE_LOCK(i32 %22)
  %24 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %25 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @SEEK_CUR, align 4
  %28 = call i32 @lseek(i64 %26, i64 0, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %30 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* @SEEK_SET, align 4
  %35 = call i32 @lseek(i64 %31, i64 %33, i32 %34)
  %36 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %37 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @read(i64 %38, i32* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %43 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* @SEEK_SET, align 4
  %48 = call i32 @lseek(i64 %44, i64 %46, i32 %47)
  %49 = load %struct.chmFile*, %struct.chmFile** %6, align 8
  %50 = getelementptr inbounds %struct.chmFile, %struct.chmFile* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @CHM_RELEASE_LOCK(i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %19, %17
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @CHM_ACQUIRE_LOCK(i32) #1

declare dso_local i32 @lseek(i64, i64, i32) #1

declare dso_local i32 @read(i64, i32*, i32) #1

declare dso_local i32 @CHM_RELEASE_LOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
