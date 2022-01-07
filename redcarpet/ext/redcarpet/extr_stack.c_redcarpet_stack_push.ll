; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_stack.c_redcarpet_stack_push.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_stack.c_redcarpet_stack_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack = type { i32, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @redcarpet_stack_push(%struct.stack* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stack*, align 8
  %5 = alloca i8*, align 8
  store %struct.stack* %0, %struct.stack** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.stack*, %struct.stack** %4, align 8
  %7 = load %struct.stack*, %struct.stack** %4, align 8
  %8 = getelementptr inbounds %struct.stack, %struct.stack* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 %9, 2
  %11 = call i64 @redcarpet_stack_grow(%struct.stack* %6, i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.stack*, %struct.stack** %4, align 8
  %17 = getelementptr inbounds %struct.stack, %struct.stack* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = load %struct.stack*, %struct.stack** %4, align 8
  %20 = getelementptr inbounds %struct.stack, %struct.stack* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8*, i8** %18, i64 %23
  store i8* %15, i8** %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @redcarpet_stack_grow(%struct.stack*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
