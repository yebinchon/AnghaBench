; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub_powerpc.c_GspQueryThreadStatus.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub_powerpc.c_GspQueryThreadStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GspOutBuffer = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GspQueryThreadStatus(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @GspFindThread(i32* %8, i32* %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ObDereferenceObject(i32 %12)
  %14 = load i8*, i8** @GspOutBuffer, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 79, i8* %15, align 1
  %16 = load i8*, i8** @GspOutBuffer, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 75, i8* %17, align 1
  %18 = load i8*, i8** @GspOutBuffer, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  store i8 0, i8* %19, align 1
  br label %25

20:                                               ; preds = %1
  %21 = load i8*, i8** @GspOutBuffer, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 69, i8* %22, align 1
  %23 = load i8*, i8** @GspOutBuffer, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %20, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @GspFindThread(i32*, i32*) #1

declare dso_local i32 @ObDereferenceObject(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
