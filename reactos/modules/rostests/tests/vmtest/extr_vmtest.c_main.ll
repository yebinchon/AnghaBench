; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/vmtest/extr_vmtest.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/vmtest/extr_vmtest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM_RESERVE = common dso_local global i32 0, align 4
@PAGE_READWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"VirtualAlloc failed 1\0A\00", align 1
@MEM_COMMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"VirtualAlloc failed 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"VirtualAlloc failed 3\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"VirtualAlloc failed 4\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"VirtualAlloc failed 5\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @MEM_RESERVE, align 4
  %5 = load i32, i32* @PAGE_READWRITE, align 4
  %6 = call i8* @VirtualAlloc(i32* null, i32 1048576, i32 %4, i32 %5)
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 4096
  %15 = load i32, i32* @MEM_COMMIT, align 4
  %16 = load i32, i32* @PAGE_READWRITE, align 4
  %17 = call i8* @VirtualAlloc(i32* %14, i32 4096, i32 %15, i32 %16)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %12
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 12288
  %26 = load i32, i32* @MEM_COMMIT, align 4
  %27 = load i32, i32* @PAGE_READWRITE, align 4
  %28 = call i8* @VirtualAlloc(i32* %25, i32 4096, i32 %26, i32 %27)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 20480
  %37 = load i32, i32* @MEM_COMMIT, align 4
  %38 = load i32, i32* @PAGE_READWRITE, align 4
  %39 = call i8* @VirtualAlloc(i32* %36, i32 4096, i32 %37, i32 %38)
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %3, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %34
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4096
  %48 = load i32, i32* @MEM_RESERVE, align 4
  %49 = load i32, i32* @PAGE_READWRITE, align 4
  %50 = call i8* @VirtualAlloc(i32* %47, i32 28672, i32 %48, i32 %49)
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %3, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %45
  ret i32 0
}

declare dso_local i8* @VirtualAlloc(i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
