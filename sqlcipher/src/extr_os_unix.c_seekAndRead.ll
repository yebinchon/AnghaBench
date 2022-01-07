; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_os_unix.c_seekAndRead.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_os_unix.c_seekAndRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@TIMER_START = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@TIMER_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"READ    %-3d %5d %7lld %llu\0A\00", align 1
@TIMER_ELAPSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i8*, i32)* @seekAndRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seekAndRead(%struct.TYPE_4__* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @TIMER_START, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = and i32 %15, 131071
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 2
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  br label %26

26:                                               ; preds = %83, %4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* @SEEK_SET, align 4
  %32 = call i32 @lseek(i32 %29, i64 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  store i32 -1, i32* %12, align 4
  %33 = call i32 @SimulateIOError(i32 -1)
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = load i64, i64* @errno, align 8
  %39 = call i32 @storeLastErrno(%struct.TYPE_4__* %37, i64 %38)
  store i32 -1, i32* %5, align 4
  br label %105

40:                                               ; preds = %26
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @osRead(i32 %43, i8* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %86

51:                                               ; preds = %40
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i64, i64* @errno, align 8
  %56 = load i64, i64* @EINTR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 1, i32* %10, align 4
  br label %83

59:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %61 = load i64, i64* @errno, align 8
  %62 = call i32 @storeLastErrno(%struct.TYPE_4__* %60, i64 %61)
  br label %86

63:                                               ; preds = %51
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i8*, i8** %8, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %8, align 8
  br label %81

81:                                               ; preds = %66, %63
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i32, i32* %10, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %26, label %86

86:                                               ; preds = %83, %59, %50
  %87 = load i32, i32* @TIMER_END, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %91, %92
  %94 = load i64, i64* %7, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %94, %96
  %98 = load i32, i32* @TIMER_ELAPSED, align 4
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @OSTRACE(i8* %100)
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %86, %36
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lseek(i32, i64, i32) #1

declare dso_local i32 @SimulateIOError(i32) #1

declare dso_local i32 @storeLastErrno(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @osRead(i32, i8*, i32) #1

declare dso_local i32 @OSTRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
