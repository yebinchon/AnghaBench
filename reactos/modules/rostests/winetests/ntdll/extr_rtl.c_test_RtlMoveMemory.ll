; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlMoveMemory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlMoveMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"Th\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Thi\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"This\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"This \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"This i\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"This is\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"This is \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"This is a\00", align 1
@dest = common dso_local global i64 0, align 8
@src = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"his is a test!!\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"TThis is a test!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlMoveMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlMoveMemory() #0 {
  %1 = call i32 @COPY(i32 0)
  %2 = call i32 @CMP(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @COPY(i32 1)
  %4 = call i32 @CMP(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %5 = call i32 @COPY(i32 2)
  %6 = call i32 @CMP(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @COPY(i32 3)
  %8 = call i32 @CMP(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @COPY(i32 4)
  %10 = call i32 @CMP(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %11 = call i32 @COPY(i32 5)
  %12 = call i32 @CMP(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 @COPY(i32 6)
  %14 = call i32 @CMP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %15 = call i32 @COPY(i32 7)
  %16 = call i32 @CMP(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %17 = call i32 @COPY(i32 8)
  %18 = call i32 @CMP(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %19 = call i32 @COPY(i32 9)
  %20 = call i32 @CMP(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  %21 = load i64, i64* @dest, align 8
  %22 = load i32, i32* @src, align 4
  %23 = call i32 @strcpy(i64 %21, i32 %22)
  %24 = load i64, i64* @dest, align 8
  %25 = load i64, i64* @dest, align 8
  %26 = add nsw i64 %25, 1
  %27 = load i32, i32* @src, align 4
  %28 = call i64 @strlen(i32 %27)
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @pRtlMoveMemory(i64 %24, i64 %26, i64 %29)
  %31 = call i32 @CMP(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %32 = load i64, i64* @dest, align 8
  %33 = load i32, i32* @src, align 4
  %34 = call i32 @strcpy(i64 %32, i32 %33)
  %35 = load i64, i64* @dest, align 8
  %36 = add nsw i64 %35, 1
  %37 = load i64, i64* @dest, align 8
  %38 = load i32, i32* @src, align 4
  %39 = call i64 @strlen(i32 %38)
  %40 = call i32 @pRtlMoveMemory(i64 %36, i64 %37, i64 %39)
  %41 = call i32 @CMP(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @COPY(i32) #1

declare dso_local i32 @CMP(i8*) #1

declare dso_local i32 @strcpy(i64, i32) #1

declare dso_local i32 @pRtlMoveMemory(i64, i64, i64) #1

declare dso_local i64 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
