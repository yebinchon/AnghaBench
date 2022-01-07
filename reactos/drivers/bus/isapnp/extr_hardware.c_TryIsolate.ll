; ModuleID = '/home/carl/AnghaBench/reactos/drivers/bus/isapnp/extr_hardware.c_TryIsolate.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/bus/isapnp/extr_hardware.c_TryIsolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"Setting read data port: 0x%p\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Found no more cards\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Saw life but no cards, trying new read port\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Saw no sign of life, abandoning isolation\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Bad checksum, trying next read data port\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Found %d cards at read port 0x%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @TryIsolate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TryIsolate(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32* %11)
  %13 = call i32 (...) @WaitForKey()
  %14 = call i32 (...) @SendKey()
  %15 = call i32 (...) @ResetCsn()
  %16 = call i32 (...) @HwDelay()
  %17 = call i32 (...) @HwDelay()
  %18 = call i32 (...) @WaitForKey()
  %19 = call i32 (...) @SendKey()
  %20 = call i32 @Wake(i32 0)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @SetReadDataPort(i32* %21)
  %23 = call i32 (...) @HwDelay()
  br label %24

24:                                               ; preds = %99, %1
  %25 = load i64, i64* @TRUE, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %107

27:                                               ; preds = %24
  %28 = call i32 (...) @EnterIsolationState()
  %29 = call i32 (...) @HwDelay()
  %30 = call i32 @RtlZeroMemory(%struct.TYPE_4__* %3, i32 8)
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %7, align 8
  store i64 %31, i64* %6, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %72, %27
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 9
  br i1 %34, label %35, label %75

35:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %63, %35
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @ReadData(i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = call i32 (...) @HwDelay()
  %43 = load i32, i32* %10, align 4
  %44 = shl i32 %43, 8
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @ReadData(i32* %45)
  %47 = or i32 %44, %46
  store i32 %47, i32* %10, align 4
  %48 = call i32 (...) @HwDelay()
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 65535
  br i1 %52, label %53, label %62

53:                                               ; preds = %39
  %54 = load i64, i64* @TRUE, align 8
  store i64 %54, i64* %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 21930
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, 128
  store i32 %59, i32* %9, align 4
  %60 = load i64, i64* @TRUE, align 8
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %36

66:                                               ; preds = %36
  %67 = load i32, i32* %9, align 4
  %68 = bitcast %struct.TYPE_4__* %3 to i32*
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %32

75:                                               ; preds = %32
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %91

83:                                               ; preds = %78
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %90

88:                                               ; preds = %83
  %89 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %81
  br label %107

92:                                               ; preds = %75
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @IsaPnpChecksum(%struct.TYPE_4__* %3)
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %107

99:                                               ; preds = %92
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @WriteCsn(i32 %102)
  %104 = call i32 (...) @HwDelay()
  %105 = call i32 @Wake(i32 0)
  %106 = call i32 (...) @HwDelay()
  br label %24

107:                                              ; preds = %97, %91, %24
  %108 = call i32 (...) @WaitForKey()
  %109 = load i32, i32* %8, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %8, align 4
  %113 = load i32*, i32** %2, align 8
  %114 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %112, i32* %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32, i32* %8, align 4
  ret i32 %116
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @WaitForKey(...) #1

declare dso_local i32 @SendKey(...) #1

declare dso_local i32 @ResetCsn(...) #1

declare dso_local i32 @HwDelay(...) #1

declare dso_local i32 @Wake(i32) #1

declare dso_local i32 @SetReadDataPort(i32*) #1

declare dso_local i32 @EnterIsolationState(...) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ReadData(i32*) #1

declare dso_local i64 @IsaPnpChecksum(%struct.TYPE_4__*) #1

declare dso_local i32 @WriteCsn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
