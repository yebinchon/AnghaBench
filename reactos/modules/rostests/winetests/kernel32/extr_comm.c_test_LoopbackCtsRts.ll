; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_LoopbackCtsRts.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_LoopbackCtsRts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@loopback_rts_cts = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GetCommState failed\0A\00", align 1
@RTS_CONTROL_HANDSHAKE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"RTS_CONTROL_HANDSHAKE is set, so don't manipulate RTS\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GetCommModemStatus failed\0A\00", align 1
@MS_CTS_ON = common dso_local global i32 0, align 4
@MS_DSR_ON = common dso_local global i32 0, align 4
@MS_RING_ON = common dso_local global i32 0, align 4
@MS_RLSD_ON = common dso_local global i32 0, align 4
@CLRRTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"EscapeCommFunction failed to clear RTS\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"CTS didn't react: 0x%04x,  expected 0x%04x\0A\00", align 1
@SETRTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"Failed to restore CTS: 0x%04x, expected 0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"EscapeCommFunction failed to set RTS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LoopbackCtsRts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LoopbackCtsRts() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @loopback_rts_cts, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %114

8:                                                ; preds = %0
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i64 @test_OpenComm(i32 %9)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %114

15:                                               ; preds = %8
  %16 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 8)
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @GetCommState(i64 %17, %struct.TYPE_4__* %4)
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RTS_CONTROL_HANDSHAKE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = call i32 @trace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i64, i64* %1, align 8
  %27 = call i32 @CloseHandle(i64 %26)
  br label %114

28:                                               ; preds = %15
  %29 = load i64, i64* %1, align 8
  %30 = call i32 @GetCommModemStatus(i64 %29, i32* %3)
  %31 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @MS_CTS_ON, align 4
  %33 = load i32, i32* @MS_DSR_ON, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MS_RING_ON, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MS_RLSD_ON, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @MS_CTS_ON, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %78

45:                                               ; preds = %28
  %46 = load i64, i64* %1, align 8
  %47 = load i32, i32* @CLRRTS, align 4
  %48 = call i32 @EscapeCommFunction(i64 %46, i32 %47)
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i64, i64* %1, align 8
  %51 = call i32 @GetCommModemStatus(i64 %50, i32* %2)
  %52 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @MS_CTS_ON, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @MS_CTS_ON, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %62)
  %64 = load i64, i64* %1, align 8
  %65 = load i32, i32* @SETRTS, align 4
  %66 = call i32 @EscapeCommFunction(i64 %64, i32 %65)
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i64, i64* %1, align 8
  %69 = call i32 @GetCommModemStatus(i64 %68, i32* %2)
  %70 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %3, align 4
  %73 = icmp eq i32 %71, %72
  %74 = zext i1 %73 to i32
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %76)
  br label %111

78:                                               ; preds = %28
  %79 = load i64, i64* %1, align 8
  %80 = load i32, i32* @SETRTS, align 4
  %81 = call i32 @EscapeCommFunction(i64 %79, i32 %80)
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %83 = load i64, i64* %1, align 8
  %84 = call i32 @GetCommModemStatus(i64 %83, i32* %2)
  %85 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @MS_CTS_ON, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @MS_CTS_ON, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @MS_CTS_ON, align 4
  %95 = or i32 %93, %94
  %96 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %92, i32 %95)
  %97 = load i64, i64* %1, align 8
  %98 = load i32, i32* @CLRRTS, align 4
  %99 = call i32 @EscapeCommFunction(i64 %97, i32 %98)
  %100 = call i32 (i32, i8*, ...) @ok(i32 %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i64, i64* %1, align 8
  %102 = call i32 @GetCommModemStatus(i64 %101, i32* %2)
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp eq i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = load i32, i32* %2, align 4
  %109 = load i32, i32* %3, align 4
  %110 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %78, %45
  %112 = load i64, i64* %1, align 8
  %113 = call i32 @CloseHandle(i64 %112)
  br label %114

114:                                              ; preds = %111, %24, %14, %7
  ret void
}

declare dso_local i64 @test_OpenComm(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetCommState(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @GetCommModemStatus(i64, i32*) #1

declare dso_local i32 @EscapeCommFunction(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
