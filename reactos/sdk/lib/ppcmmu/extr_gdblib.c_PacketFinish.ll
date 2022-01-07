; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_gdblib.c_PacketFinish.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_gdblib.c_PacketFinish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PacketSent = common dso_local global i64 0, align 8
@DataOutAddr = common dso_local global i32 0, align 4
@DataOutBuffer = common dso_local global i8* null, align 8
@hex = common dso_local global i8* null, align 8
@DataOutCsum = common dso_local global i32 0, align 4
@serport = common dso_local global i32 0, align 4
@ParseState = common dso_local global i64 0, align 8
@DataInAddr = common dso_local global i64 0, align 8
@ComputedCsum = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PacketFinish() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i64 0, i64* @PacketSent, align 8
  %4 = call i32 @SerialWrite(i8 signext 36)
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %16, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @DataOutAddr, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = load i8*, i8** @DataOutBuffer, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = call i32 @SerialWrite(i8 signext %14)
  br label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %5

19:                                               ; preds = %5
  %20 = call i32 @SerialWrite(i8 signext 35)
  %21 = load i8*, i8** @hex, align 8
  %22 = load i32, i32* @DataOutCsum, align 4
  %23 = ashr i32 %22, 4
  %24 = and i32 %23, 15
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @SerialWrite(i8 signext %27)
  %29 = load i8*, i8** @hex, align 8
  %30 = load i32, i32* @DataOutCsum, align 4
  %31 = and i32 %30, 15
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @SerialWrite(i8 signext %34)
  br label %36

36:                                               ; preds = %48, %19
  %37 = load i32, i32* @serport, align 4
  %38 = call i32 @chr(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = call i32 (...) @SerialRead()
  store i32 %41, i32* %2, align 4
  %42 = icmp ne i32 %41, 43
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 36
  br label %46

46:                                               ; preds = %43, %40, %36
  %47 = phi i1 [ false, %40 ], [ false, %36 ], [ %45, %43 ]
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  br label %36

49:                                               ; preds = %46
  %50 = load i32, i32* %2, align 4
  %51 = icmp eq i32 %50, 36
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i64 0, i64* @ParseState, align 8
  store i64 0, i64* @DataInAddr, align 8
  store i64 0, i64* @ComputedCsum, align 8
  br label %53

53:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @SerialWrite(i8 signext) #1

declare dso_local i32 @chr(i32) #1

declare dso_local i32 @SerialRead(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
