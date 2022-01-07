; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_execute.c_can_inherit_stderr_from_stdout.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_execute.c_can_inherit_stderr_from_stdout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }

@EXEC_OUTPUT_INHERIT = common dso_local global i64 0, align 8
@EXEC_OUTPUT_NAMED_FD = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i64 0, align 8
@STDERR_FILENO = common dso_local global i64 0, align 8
@EXEC_OUTPUT_FILE = common dso_local global i32 0, align 4
@EXEC_OUTPUT_FILE_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i64)* @can_inherit_stderr_from_stdout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_inherit_stderr_from_stdout(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %9 = call i32 @assert(%struct.TYPE_4__* %8)
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @EXEC_OUTPUT_INHERIT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %58

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %58

19:                                               ; preds = %14
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* @EXEC_OUTPUT_NAMED_FD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @STDOUT_FILENO, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @STDERR_FILENO, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @streq_ptr(i32 %29, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %19
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* @EXEC_OUTPUT_FILE, align 4
  %40 = load i32, i32* @EXEC_OUTPUT_FILE_APPEND, align 4
  %41 = call i64 @IN_SET(i64 %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @STDOUT_FILENO, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @STDERR_FILENO, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @streq_ptr(i32 %49, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %43, %23, %18, %13
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @streq_ptr(i32, i32) #1

declare dso_local i64 @IN_SET(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
