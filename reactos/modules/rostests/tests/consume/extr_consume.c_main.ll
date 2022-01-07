; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/consume/extr_consume.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/consume/extr_consume.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE = common dso_local global i32 0, align 4
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_READONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate virtual memory\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"BaseAddress %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%.8x  \00", align 1
@x = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @SIZE, align 4
  %5 = load i32, i32* @MEM_COMMIT, align 4
  %6 = load i32, i32* @PAGE_READONLY, align 4
  %7 = call i32* @VirtualAlloc(i32* null, i32 %4, i32 %5, i32 %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %38

12:                                               ; preds = %0
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %34, %12
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @SIZE, align 4
  %18 = sdiv i32 %17, 4096
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = mul nsw i32 %21, 4096
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %2, align 4
  %26 = mul nsw i32 %25, 4096
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @x, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %29, i32* %33, align 4
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %15

37:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %10
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32* @VirtualAlloc(i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
