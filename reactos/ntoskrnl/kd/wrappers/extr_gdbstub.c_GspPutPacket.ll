; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspPutPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kd/wrappers/extr_gdbstub.c_GspPutPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HexChars = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GspPutPacket(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  br label %7

7:                                                ; preds = %41, %1
  %8 = call i32 @GdbPutChar(i8 signext 36)
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %15, %7
  %10 = load i32*, i32** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load i32, i32* %6, align 4
  %17 = trunc i32 %16 to i8
  %18 = call i32 @GdbPutChar(i8 signext %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %5, align 8
  br label %9

24:                                               ; preds = %9
  %25 = call i32 @GdbPutChar(i8 signext 35)
  %26 = load i8*, i8** @HexChars, align 8
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 4
  %29 = and i32 %28, 15
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %26, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = call i32 @GdbPutChar(i8 signext %32)
  %34 = load i8*, i8** @HexChars, align 8
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 15
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = call i32 @GdbPutChar(i8 signext %39)
  br label %41

41:                                               ; preds = %24
  %42 = call signext i8 (...) @GdbGetChar()
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 43
  br i1 %44, label %7, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @GdbPutChar(i8 signext) #1

declare dso_local signext i8 @GdbGetChar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
