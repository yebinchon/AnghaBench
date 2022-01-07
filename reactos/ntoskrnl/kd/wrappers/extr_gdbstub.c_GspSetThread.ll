; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspSetThread.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspSetThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GspOutBuffer = common dso_local global i8* null, align 8
@GspRunThread = common dso_local global i32* null, align 8
@GspDbgThread = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GspSetThread(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %65 [
    i32 99, label %11
    i32 103, label %37
  ]

11:                                               ; preds = %1
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @GspFindThread(i32* %12, i32** %4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i8*, i8** @GspOutBuffer, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 79, i8* %17, align 1
  %18 = load i8*, i8** @GspOutBuffer, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 75, i8* %19, align 1
  %20 = load i32*, i32** @GspRunThread, align 8
  %21 = icmp ne i32* null, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32*, i32** @GspRunThread, align 8
  %24 = call i32 @ObDereferenceObject(i32* %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = load i32*, i32** %4, align 8
  store i32* %26, i32** @GspRunThread, align 8
  %27 = load i32*, i32** @GspRunThread, align 8
  %28 = icmp ne i32* null, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32*, i32** @GspRunThread, align 8
  %31 = call i32 @ObReferenceObject(i32* %30)
  br label %32

32:                                               ; preds = %29, %25
  br label %36

33:                                               ; preds = %11
  %34 = load i8*, i8** @GspOutBuffer, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 69, i8* %35, align 1
  br label %36

36:                                               ; preds = %33, %32
  br label %66

37:                                               ; preds = %1
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @GspFindThread(i32* %38, i32** %4)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i8*, i8** @GspOutBuffer, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  store i8 79, i8* %43, align 1
  %44 = load i8*, i8** @GspOutBuffer, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8 75, i8* %45, align 1
  %46 = load i32*, i32** @GspDbgThread, align 8
  %47 = icmp ne i32* null, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32*, i32** @GspDbgThread, align 8
  %50 = call i32 @ObDereferenceObject(i32* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32*, i32** %4, align 8
  %53 = call i32* (...) @PsGetCurrentThread()
  %54 = icmp eq i32* %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  store i32* null, i32** @GspDbgThread, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @ObDereferenceObject(i32* %56)
  br label %60

58:                                               ; preds = %51
  %59 = load i32*, i32** %4, align 8
  store i32* %59, i32** @GspDbgThread, align 8
  br label %60

60:                                               ; preds = %58, %55
  br label %64

61:                                               ; preds = %37
  %62 = load i8*, i8** @GspOutBuffer, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 69, i8* %63, align 1
  br label %64

64:                                               ; preds = %61, %60
  br label %66

65:                                               ; preds = %1
  br label %66

66:                                               ; preds = %65, %64, %36
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @GspFindThread(i32*, i32**) #1

declare dso_local i32 @ObDereferenceObject(i32*) #1

declare dso_local i32 @ObReferenceObject(i32*) #1

declare dso_local i32* @PsGetCurrentThread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
