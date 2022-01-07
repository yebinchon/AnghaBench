; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_LoopbackDtrDcd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_test_LoopbackDtrDcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@loopback_dtr_dcd = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"GetCommState failed\0A\00", align 1
@DTR_CONTROL_HANDSHAKE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"DTR_CONTROL_HANDSHAKE is set, so don't manipulate DTR\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"GetCommModemStatus failed\0A\00", align 1
@MS_CTS_ON = common dso_local global i32 0, align 4
@MS_DSR_ON = common dso_local global i32 0, align 4
@MS_RING_ON = common dso_local global i32 0, align 4
@MS_RLSD_ON = common dso_local global i32 0, align 4
@CLRDTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"EscapeCommFunction failed to clear DTR\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"RLSD didn't react: 0x%04x,  expected 0x%04x\0A\00", align 1
@SETDTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"EscapeCommFunction failed to set DTR\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Failed to restore RLSD: 0x%04x, expected 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LoopbackDtrDcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LoopbackDtrDcd() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @loopback_dtr_dcd, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %113

8:                                                ; preds = %0
  %9 = load i32, i32* @FALSE, align 4
  %10 = call i64 @test_OpenComm(i32 %9)
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %113

15:                                               ; preds = %8
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @GetCommState(i64 %16, %struct.TYPE_3__* %4)
  %18 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DTR_CONTROL_HANDSHAKE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = call i32 @trace(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @CloseHandle(i64 %25)
  br label %113

27:                                               ; preds = %15
  %28 = load i64, i64* %1, align 8
  %29 = call i32 @GetCommModemStatus(i64 %28, i32* %3)
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @MS_CTS_ON, align 4
  %32 = load i32, i32* @MS_DSR_ON, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @MS_RING_ON, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MS_RLSD_ON, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @MS_RLSD_ON, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %27
  %45 = load i64, i64* %1, align 8
  %46 = load i32, i32* @CLRDTR, align 4
  %47 = call i32 @EscapeCommFunction(i64 %45, i32 %46)
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i64, i64* %1, align 8
  %50 = call i32 @GetCommModemStatus(i64 %49, i32* %2)
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @MS_RLSD_ON, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @MS_RLSD_ON, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load i64, i64* %1, align 8
  %64 = load i32, i32* @SETDTR, align 4
  %65 = call i32 @EscapeCommFunction(i64 %63, i32 %64)
  %66 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i64, i64* %1, align 8
  %68 = call i32 @GetCommModemStatus(i64 %67, i32* %2)
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* %2, align 4
  %71 = load i32, i32* %3, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 (i32, i8*, ...) @ok(i32 %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %74, i32 %75)
  br label %110

77:                                               ; preds = %27
  %78 = load i64, i64* %1, align 8
  %79 = load i32, i32* @SETDTR, align 4
  %80 = call i32 @EscapeCommFunction(i64 %78, i32 %79)
  %81 = call i32 (i32, i8*, ...) @ok(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i64, i64* %1, align 8
  %83 = call i32 @GetCommModemStatus(i64 %82, i32* %2)
  %84 = call i32 (i32, i8*, ...) @ok(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %85 = load i32, i32* %2, align 4
  %86 = load i32, i32* @MS_RLSD_ON, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @MS_RLSD_ON, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @MS_RLSD_ON, align 4
  %94 = or i32 %92, %93
  %95 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i64, i64* %1, align 8
  %97 = load i32, i32* @CLRDTR, align 4
  %98 = call i32 @EscapeCommFunction(i64 %96, i32 %97)
  %99 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i64, i64* %1, align 8
  %101 = call i32 @GetCommModemStatus(i64 %100, i32* %2)
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %2, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %77, %44
  %111 = load i64, i64* %1, align 8
  %112 = call i32 @CloseHandle(i64 %111)
  br label %113

113:                                              ; preds = %110, %23, %14, %7
  ret void
}

declare dso_local i64 @test_OpenComm(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetCommState(i64, %struct.TYPE_3__*) #1

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
