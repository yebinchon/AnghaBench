; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_drive.c_GetLogicalHandle.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_drive.c_GetLogicalHandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_HANDLE_VALUE = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"No logical drive found (unpartitioned?)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @GetLogicalHandle(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32*, i32** @INVALID_HANDLE_VALUE, align 8
  store i32* %14, i32** %12, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i8* @GetLogicalName(i32 %15, i32 %16, i32 %17, i32 %18)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = call i32 @uprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %6, align 8
  br label %33

24:                                               ; preds = %5
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32* @GetHandle(i8* %25, i32 %26, i32 %27, i32 %28)
  store i32* %29, i32** %12, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32*, i32** %12, align 8
  store i32* %32, i32** %6, align 8
  br label %33

33:                                               ; preds = %24, %22
  %34 = load i32*, i32** %6, align 8
  ret i32* %34
}

declare dso_local i8* @GetLogicalName(i32, i32, i32, i32) #1

declare dso_local i32 @uprintf(i8*) #1

declare dso_local i32* @GetHandle(i8*, i32, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
