; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_gdblib.c_SerialInterrupt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/ppcmmu/extr_gdblib.c_SerialInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@serport = common dso_local global i32 0, align 4
@Signal = common dso_local global i32 0, align 4
@RegisterSaveArea = common dso_local global i32* null, align 8
@Continue = common dso_local global i64 0, align 8
@DataInAddr = common dso_local global i64 0, align 8
@ParseState = common dso_local global i32 0, align 4
@ComputedCsum = common dso_local global i32 0, align 4
@ActualCsum = common dso_local global i32 0, align 4
@DataInBuffer = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SerialInterrupt(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* @serport, align 4
  %8 = call i32 @chr(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* @Signal, align 4
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** @RegisterSaveArea, align 8
  br label %14

14:                                               ; preds = %91, %11
  %15 = call i32 (...) @SerialRead()
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  store i64 0, i64* @Continue, align 8
  %19 = call i32 @PacketWriteSignal(i32 3)
  br label %90

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %89

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 36
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 0, i64* @DataInAddr, align 8
  store i32 0, i32* @ParseState, align 4
  store i32 0, i32* @ComputedCsum, align 4
  store i32 0, i32* @ActualCsum, align 4
  br label %88

28:                                               ; preds = %24
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @ParseState, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 2, i32* @ParseState, align 4
  br label %87

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @ParseState, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ComputedCsum, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* @ComputedCsum, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** @DataInBuffer, align 8
  %44 = load i64, i64* @DataInAddr, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* @DataInAddr, align 8
  %46 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %46, align 4
  br label %86

47:                                               ; preds = %35
  %48 = load i32, i32* @ParseState, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* @ActualCsum, align 4
  %52 = load i32, i32* @ParseState, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @ParseState, align 4
  br label %85

54:                                               ; preds = %47
  %55 = load i32, i32* @ParseState, align 4
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @hex2int(i32 %58)
  %60 = load i32, i32* @ActualCsum, align 4
  %61 = call i32 @hex2int(i32 %60)
  %62 = shl i32 %61, 4
  %63 = or i32 %59, %62
  store i32 %63, i32* @ActualCsum, align 4
  %64 = load i32, i32* @ComputedCsum, align 4
  %65 = and i32 %64, 255
  store i32 %65, i32* @ComputedCsum, align 4
  store i32 -1, i32* @ParseState, align 4
  %66 = load i32, i32* @ComputedCsum, align 4
  %67 = load i32, i32* @ActualCsum, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %57
  store i32 0, i32* @ComputedCsum, align 4
  %70 = load i32*, i32** @DataInBuffer, align 8
  %71 = load i64, i64* @DataInAddr, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 0, i32* %72, align 4
  store i64 0, i64* @DataInAddr, align 8
  store i64 0, i64* @Continue, align 8
  %73 = call i32 @SerialWrite(i8 signext 43)
  %74 = call i32 (...) @GotPacket()
  br label %77

75:                                               ; preds = %57
  %76 = call i32 @SerialWrite(i8 signext 45)
  br label %77

77:                                               ; preds = %75, %69
  br label %84

78:                                               ; preds = %54
  %79 = load i32, i32* @ParseState, align 4
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 @SerialWrite(i8 signext 45)
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %83, %77
  br label %85

85:                                               ; preds = %84, %50
  br label %86

86:                                               ; preds = %85, %38
  br label %87

87:                                               ; preds = %86, %34
  br label %88

88:                                               ; preds = %87, %27
  br label %89

89:                                               ; preds = %88, %23
  br label %90

90:                                               ; preds = %89, %18
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* @Continue, align 8
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  br i1 %94, label %14, label %95

95:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %10
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @chr(i32) #1

declare dso_local i32 @SerialRead(...) #1

declare dso_local i32 @PacketWriteSignal(i32) #1

declare dso_local i32 @hex2int(i32) #1

declare dso_local i32 @SerialWrite(i8 signext) #1

declare dso_local i32 @GotPacket(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
