; ModuleID = '/home/carl/AnghaBench/tini/src/extr_tini.c_main.c'
source_filename = "/home/carl/AnghaBench/tini/src/extr_tini.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32 }
%struct.TYPE_4__ = type { %struct.sigaction*, %struct.sigaction*, i32* }

@parent_death_signal = common dso_local global i64 0, align 8
@PR_SET_PDEATHSIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to set up parent death signal\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Exiting: child has exited\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [0 x i8*]*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sigaction, align 4
  %14 = alloca %struct.sigaction, align 4
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = bitcast [0 x i8*]** %9 to i8****
  %20 = call i32 @parse_args(i32 %17, i8** %18, i8**** %19, i32* %8)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %78

25:                                               ; preds = %2
  %26 = call i64 (...) @parse_env()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %78

29:                                               ; preds = %25
  %30 = call i32 @memset(%struct.sigaction* %13, i32 0, i32 4)
  %31 = call i32 @memset(%struct.sigaction* %14, i32 0, i32 4)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.sigaction* %14, %struct.sigaction** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store %struct.sigaction* %13, %struct.sigaction** %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32* %12, i32** %34, align 8
  %35 = call i64 @configure_signals(i32* %11, %struct.TYPE_4__* %15)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %78

38:                                               ; preds = %29
  %39 = load i64, i64* @parent_death_signal, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* @PR_SET_PDEATHSIG, align 4
  %43 = load i64, i64* @parent_death_signal, align 8
  %44 = call i64 @prctl(i32 %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @PRINT_FATAL(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %78

48:                                               ; preds = %41, %38
  %49 = call i32 (...) @reaper_check()
  %50 = load [0 x i8*]*, [0 x i8*]** %9, align 8
  %51 = getelementptr inbounds [0 x i8*], [0 x i8*]* %50, i64 0, i64 0
  %52 = call i32 @spawn(%struct.TYPE_4__* %15, i8** %51, i32* %6)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %3, align 4
  br label %78

57:                                               ; preds = %48
  %58 = load [0 x i8*]*, [0 x i8*]** %9, align 8
  %59 = bitcast [0 x i8*]* %58 to i8***
  %60 = call i32 @free(i8*** %59)
  br label %61

61:                                               ; preds = %57, %77
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @wait_and_forward_signal(i32* %11, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %78

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @reap_zombies(i32 %67, i32* %7)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %78

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = call i32 @PRINT_TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %71
  br label %61

78:                                               ; preds = %74, %70, %65, %55, %46, %37, %28, %23
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @parse_args(i32, i8**, i8****, i32*) #1

declare dso_local i64 @parse_env(...) #1

declare dso_local i32 @memset(%struct.sigaction*, i32, i32) #1

declare dso_local i64 @configure_signals(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @prctl(i32, i64) #1

declare dso_local i32 @PRINT_FATAL(i8*) #1

declare dso_local i32 @reaper_check(...) #1

declare dso_local i32 @spawn(%struct.TYPE_4__*, i8**, i32*) #1

declare dso_local i32 @free(i8***) #1

declare dso_local i64 @wait_and_forward_signal(i32*, i32) #1

declare dso_local i64 @reap_zombies(i32, i32*) #1

declare dso_local i32 @PRINT_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
