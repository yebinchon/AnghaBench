; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlCompareMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlCompareMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pRtlCompareMemory = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"RtlCompareMemory is not available\0A\00", align 1
@dest = common dso_local global i8* null, align 8
@src = common dso_local global i8* null, align 8
@LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlCompareMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlCompareMemory() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @pRtlCompareMemory, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %0
  %5 = call i32 @win_skip(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %24

6:                                                ; preds = %0
  %7 = load i8*, i8** @dest, align 8
  %8 = load i8*, i8** @src, align 8
  %9 = call i32 @strcpy(i8* %7, i8* %8)
  %10 = load i8*, i8** @src, align 8
  %11 = load i8*, i8** @src, align 8
  %12 = call i32 @COMP(i8* %10, i8* %11, i32 0, i32 0)
  %13 = load i8*, i8** @src, align 8
  %14 = load i8*, i8** @src, align 8
  %15 = load i32, i32* @LEN, align 4
  %16 = load i32, i32* @LEN, align 4
  %17 = call i32 @COMP(i8* %13, i8* %14, i32 %15, i32 %16)
  %18 = load i8*, i8** @dest, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 120, i8* %19, align 1
  %20 = load i8*, i8** @src, align 8
  %21 = load i8*, i8** @dest, align 8
  %22 = load i32, i32* @LEN, align 4
  %23 = call i32 @COMP(i8* %20, i8* %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %6, %4
  ret void
}

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @COMP(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
