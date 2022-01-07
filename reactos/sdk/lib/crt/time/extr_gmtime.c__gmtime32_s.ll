; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_gmtime.c__gmtime32_s.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/time/extr_gmtime.c__gmtime32_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"ptm == NULL\00", align 1
@ERROR_BAD_COMMAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ptime == NULL\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_gmtime32_s(%struct.tm* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.tm*, %struct.tm** %4, align 8
  %10 = icmp ne %struct.tm* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ERROR_BAD_COMMAND, align 4
  %13 = call i32 @MSVCRT_INVALID_PMT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @ERROR_BAD_COMMAND, align 4
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @ERROR_BAD_COMMAND, align 4
  %20 = call i32 @MSVCRT_INVALID_PMT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ERROR_BAD_COMMAND, align 4
  store i32 %21, i32* %3, align 4
  br label %27

22:                                               ; preds = %15
  %23 = load %struct.tm*, %struct.tm** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @_gmtime_worker(%struct.tm* %23, i32 %24, i32 0)
  %26 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %18, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @MSVCRT_INVALID_PMT(i8*, i32) #1

declare dso_local i32 @_gmtime_worker(%struct.tm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
