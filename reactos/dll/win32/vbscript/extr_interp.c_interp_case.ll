; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_interp_case.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/vbscript/extr_interp.c_interp_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@VARCMP_EQ = common dso_local global i64 0, align 8
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*)* @interp_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @interp_case(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = call i64 @stack_pop_val(%struct.TYPE_16__* %15, %struct.TYPE_15__* %5)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @FAILED(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* %6, align 8
  store i64 %21, i64* %2, align 8
  br label %52

22:                                               ; preds = %1
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = call i32 @stack_top(%struct.TYPE_16__* %24, i32 0)
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @var_cmp(%struct.TYPE_16__* %23, i32 %25, i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = call i32 @release_val(%struct.TYPE_15__* %5)
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @FAILED(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i64, i64* %6, align 8
  store i64 %34, i64* %2, align 8
  br label %52

35:                                               ; preds = %22
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @VARCMP_EQ, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = call i32 @stack_popn(%struct.TYPE_16__* %40, i32 1)
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @instr_jmp(%struct.TYPE_16__* %42, i32 %43)
  br label %50

45:                                               ; preds = %35
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 1
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %47, align 8
  br label %50

50:                                               ; preds = %45, %39
  %51 = load i64, i64* @S_OK, align 8
  store i64 %51, i64* %2, align 8
  br label %52

52:                                               ; preds = %50, %33, %20
  %53 = load i64, i64* %2, align 8
  ret i64 %53
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @stack_pop_val(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @var_cmp(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @stack_top(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @release_val(%struct.TYPE_15__*) #1

declare dso_local i32 @stack_popn(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @instr_jmp(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
