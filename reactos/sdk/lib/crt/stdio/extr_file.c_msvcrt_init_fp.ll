; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_msvcrt_init_fp.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/stdio/extr_file.c_msvcrt_init_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32*, i64, i32*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c":fd (%d) allocating FILE*\0A\00", align 1
@WX_OPEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c":invalid fd %d\0A\00", align 1
@EBADF = common dso_local global i32 0, align 4
@_iob = common dso_local global %struct.TYPE_7__* null, align 8
@_IOB_ENTRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c":got FILE* (%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32)* @msvcrt_init_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msvcrt_init_fp(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.TYPE_8__* @get_ioinfo_nolock(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @WX_OPEN, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i64* (...) @__doserrno()
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @EBADF, align 4
  %22 = call i32* (...) @_errno()
  store i32 %21, i32* %22, align 4
  store i32 -1, i32* %4, align 4
  br label %56

23:                                               ; preds = %3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 5
  store i32 0, i32* %27, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_iob, align 8
  %40 = icmp ult %struct.TYPE_7__* %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %23
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_iob, align 8
  %44 = load i32, i32* @_IOB_ENTRIES, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = icmp uge %struct.TYPE_7__* %42, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41, %23
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = bitcast %struct.TYPE_7__* %49 to %struct.TYPE_6__*
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @InitializeCriticalSection(i32* %51)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @get_ioinfo_nolock(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i64* @__doserrno(...) #1

declare dso_local i32* @_errno(...) #1

declare dso_local i32 @InitializeCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
