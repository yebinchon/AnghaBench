; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infput.c_InfpAddField.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/inflib/extr_infput.c_InfpAddField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@INF_STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Failed to add field\0A\00", align 1
@INF_STATUS_NO_MEMORY = common dso_local global i32 0, align 4
@INF_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfpAddField(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* null, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = call i32 @DPRINT1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @INF_STATUS_INVALID_PARAMETER, align 4
  store i32 %11, i32* %3, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @InfpGetLineForContext(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @InfpAddFieldToLine(i32 %15, i32 %16)
  %18 = icmp eq i32* null, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = call i32 @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @INF_STATUS_NO_MEMORY, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @INF_STATUS_SUCCESS, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %19, %9
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @InfpGetLineForContext(i32*) #1

declare dso_local i32* @InfpAddFieldToLine(i32, i32) #1

declare dso_local i32 @DPRINT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
