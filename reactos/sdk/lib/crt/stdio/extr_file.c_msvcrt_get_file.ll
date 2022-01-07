; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_msvcrt_get_file.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_msvcrt_get_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@MSVCRT_max_streams = common dso_local global i32 0, align 4
@_IOB_ENTRIES = common dso_local global i32 0, align 4
@_iob = common dso_local global i32* null, align 8
@MSVCRT_fstream = common dso_local global %struct.TYPE_4__** null, align 8
@MSVCRT_FD_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @msvcrt_get_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @msvcrt_get_file(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MSVCRT_max_streams, align 4
  %7 = icmp sge i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %72

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @_IOB_ENTRIES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32*, i32** @_iob, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %2, align 8
  br label %72

18:                                               ; preds = %9
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @MSVCRT_fstream, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %22 = sdiv i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %23
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %4, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %30 = call %struct.TYPE_4__* @calloc(i32 %29, i32 4)
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @MSVCRT_fstream, align 8
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %34 = sdiv i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %35
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @MSVCRT_fstream, align 8
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %40 = sdiv i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %41
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %28
  %46 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32* (...) @_errno()
  store i32 %47, i32* %48, align 4
  store i32* null, i32** %2, align 8
  br label %72

49:                                               ; preds = %28
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @MSVCRT_fstream, align 8
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %53 = sdiv i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 %54
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %59 = srem i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %60
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %4, align 8
  br label %69

62:                                               ; preds = %18
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @MSVCRT_FD_BLOCK_SIZE, align 4
  %65 = srem i32 %63, %64
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %67
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %4, align 8
  br label %69

69:                                               ; preds = %62, %49
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32* %71, i32** %2, align 8
  br label %72

72:                                               ; preds = %69, %45, %13, %8
  %73 = load i32*, i32** %2, align 8
  ret i32* %73
}

declare dso_local %struct.TYPE_4__* @calloc(i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32* @_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
