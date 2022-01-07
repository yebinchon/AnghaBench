; ModuleID = '/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/extr_io.c_IOWriteB.c'
source_filename = "/home/carl/AnghaBench/reactos/subsystems/mvdm/ntvdm/extr_io.c_IOWriteB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, i32*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 (i64, i32)* }
%struct.TYPE_5__ = type { i32 (i64, i32)* }

@IoPortProc = common dso_local global %struct.TYPE_6__* null, align 8
@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@MAXWORD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Write to unknown port: 0x%X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOWriteB(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IoPortProc, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IoPortProc, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32 (i64, i32)*, i32 (i64, i32)** %18, align 8
  %20 = icmp ne i32 (i64, i32)* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IoPortProc, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (i64, i32)*, i32 (i64, i32)** %26, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 %27(i64 %28, i32 %29)
  br label %73

31:                                               ; preds = %13, %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IoPortProc, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %69

38:                                               ; preds = %31
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IoPortProc, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  %45 = icmp ne i32* %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %38
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IoPortProc, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32 (i64, i32)*, i32 (i64, i32)** %51, align 8
  %53 = icmp ne i32 (i64, i32)* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %46
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @MAXWORD, align 8
  %57 = icmp ule i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @ASSERT(i32 %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @IoPortProc, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (i64, i32)*, i32 (i64, i32)** %64, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 %65(i64 %66, i32 %67)
  br label %72

69:                                               ; preds = %46, %38, %31
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %69, %54
  br label %73

73:                                               ; preds = %72, %21
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DPRINT(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
