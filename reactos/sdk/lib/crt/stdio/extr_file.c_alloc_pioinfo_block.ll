; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_alloc_pioinfo_block.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_alloc_pioinfo_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@MSVCRT_MAX_FILES = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MSVCRT_FD_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c":out of memory!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@__pioinfo = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @alloc_pioinfo_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_pioinfo_block(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MSVCRT_MAX_FILES, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @ENFILE, align 4
  %14 = call i32* (...) @_errno()
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %8
  %17 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %18 = call %struct.TYPE_5__* @calloc(i32 %17, i32 4)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %4, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = call i32 @WARN(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = call i32* (...) @_errno()
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %57

26:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %38, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32, i32* @INVALID_HANDLE_VALUE, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 4
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %27

41:                                               ; preds = %27
  %42 = load i32*, i32** @__pioinfo, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %45 = sdiv i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = bitcast i32* %47 to i8**
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = call i64 @InterlockedCompareExchangePointer(i8** %48, %struct.TYPE_5__* %49, i32* null)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %41
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = call i32 @free(%struct.TYPE_5__* %53)
  br label %55

55:                                               ; preds = %52, %41
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %21, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32* @_errno(...) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
