; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_OUTPUT_Result.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/global_mem/extr_global_mem.c_OUTPUT_Result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"==> PASSED\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"*** FAILED\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"==> SKIPPED\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OUTPUT_Result(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %10 [
    i32 129, label %4
    i32 130, label %6
    i32 128, label %8
  ]

4:                                                ; preds = %1
  %5 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %10

6:                                                ; preds = %1
  %7 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %10

8:                                                ; preds = %1
  %9 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %10

10:                                               ; preds = %1, %8, %6, %4
  %11 = call i32 @OUTPUT_Line(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @OUTPUT_Line(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
