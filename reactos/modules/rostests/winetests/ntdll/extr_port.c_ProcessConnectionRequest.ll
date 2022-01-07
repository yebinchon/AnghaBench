; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_port.c_ProcessConnectionRequest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_port.c_ProcessConnectionRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.lpc_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32* }
%struct.TYPE_3__ = type { i64, i32* }

@is_wow64 = common dso_local global i64 0, align 8
@LPC_CONNECTION_REQUEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Expected LPC_CONNECTION_REQUEST, got %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Expected empty string!\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Expected STATUS_SUCCESS, got %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.lpc_message*, i32*)* @ProcessConnectionRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessConnectionRequest(%union.lpc_message* %0, i32* %1) #0 {
  %3 = alloca %union.lpc_message*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %union.lpc_message* %0, %union.lpc_message** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i64, i64* @is_wow64, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = load %union.lpc_message*, %union.lpc_message** %3, align 8
  %10 = bitcast %union.lpc_message* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LPC_CONNECTION_REQUEST, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load %union.lpc_message*, %union.lpc_message** %3, align 8
  %17 = bitcast %union.lpc_message* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %union.lpc_message*, %union.lpc_message** %3, align 8
  %22 = bitcast %union.lpc_message* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %52

30:                                               ; preds = %2
  %31 = load %union.lpc_message*, %union.lpc_message** %3, align 8
  %32 = bitcast %union.lpc_message* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LPC_CONNECTION_REQUEST, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load %union.lpc_message*, %union.lpc_message** %3, align 8
  %39 = bitcast %union.lpc_message* %38 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load %union.lpc_message*, %union.lpc_message** %3, align 8
  %44 = bitcast %union.lpc_message* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %30, %8
  %53 = load i32*, i32** %4, align 8
  %54 = load %union.lpc_message*, %union.lpc_message** %3, align 8
  %55 = bitcast %union.lpc_message* %54 to %struct.TYPE_4__*
  %56 = call i64 @pNtAcceptConnectPort(i32* %53, i32 0, %struct.TYPE_4__* %55, i32 1, i32* null, i32* null)
  store i64 %56, i64* %5, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @STATUS_SUCCESS, align 8
  %59 = icmp eq i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i64, i64* %5, align 8
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @pNtCompleteConnectPort(i32 %64)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @STATUS_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %5, align 8
  %71 = call i32 (i32, i8*, ...) @ok(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @pNtAcceptConnectPort(i32*, i32, %struct.TYPE_4__*, i32, i32*, i32*) #1

declare dso_local i64 @pNtCompleteConnectPort(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
