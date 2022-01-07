; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_port.c_ProcessLpcRequest.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_port.c_ProcessLpcRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.lpc_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@is_wow64 = common dso_local global i64 0, align 8
@LPC_REQUEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Expected LPC_REQUEST, got %d\0A\00", align 1
@REQUEST2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Expected %s, got %s\0A\00", align 1
@REPLY = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Expected STATUS_SUCCESS, got %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.lpc_message*)* @ProcessLpcRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProcessLpcRequest(i32 %0, %union.lpc_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.lpc_message*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %union.lpc_message* %1, %union.lpc_message** %4, align 8
  %6 = load i64, i64* @is_wow64, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %84

8:                                                ; preds = %2
  %9 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %10 = bitcast %union.lpc_message* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LPC_REQUEST, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %17 = bitcast %union.lpc_message* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, i64, ...) @ok(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %22 = bitcast %union.lpc_message* %21 to %struct.TYPE_3__*
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @REQUEST2, align 4
  %27 = call i32 @strcmp(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @REQUEST2, align 4
  %32 = sext i32 %31 to i64
  %33 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %34 = bitcast %union.lpc_message* %33 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i32, i8*, i64, ...) @ok(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %32, i64 %36)
  %38 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %39 = bitcast %union.lpc_message* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @REPLY, align 4
  %44 = call i32 @strcpy(i32 %42, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %47 = bitcast %union.lpc_message* %46 to %struct.TYPE_4__*
  %48 = call i64 @pNtReplyPort(i32 %45, %struct.TYPE_4__* %47)
  store i64 %48, i64* %5, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @STATUS_SUCCESS, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i64, i64* %5, align 8
  %54 = call i32 (i32, i8*, i64, ...) @ok(i32 %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %56 = bitcast %union.lpc_message* %55 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LPC_REQUEST, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %63 = bitcast %union.lpc_message* %62 to %struct.TYPE_3__*
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, i64, ...) @ok(i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %68 = bitcast %union.lpc_message* %67 to %struct.TYPE_3__*
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @REPLY, align 4
  %73 = call i32 @strcmp(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* @REPLY, align 4
  %78 = sext i32 %77 to i64
  %79 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %80 = bitcast %union.lpc_message* %79 to %struct.TYPE_3__*
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32, i8*, i64, ...) @ok(i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %78, i64 %82)
  br label %160

84:                                               ; preds = %2
  %85 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %86 = bitcast %union.lpc_message* %85 to %struct.TYPE_4__*
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LPC_REQUEST, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %93 = bitcast %union.lpc_message* %92 to %struct.TYPE_4__*
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i32, i8*, i64, ...) @ok(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %95)
  %97 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %98 = bitcast %union.lpc_message* %97 to %struct.TYPE_4__*
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @REQUEST2, align 4
  %103 = call i32 @strcmp(i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* @REQUEST2, align 4
  %108 = sext i32 %107 to i64
  %109 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %110 = bitcast %union.lpc_message* %109 to %struct.TYPE_4__*
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 (i32, i8*, i64, ...) @ok(i32 %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %108, i64 %112)
  %114 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %115 = bitcast %union.lpc_message* %114 to %struct.TYPE_4__*
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* @REPLY, align 4
  %120 = call i32 @strcpy(i32 %118, i32 %119)
  %121 = load i32, i32* %3, align 4
  %122 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %123 = bitcast %union.lpc_message* %122 to %struct.TYPE_4__*
  %124 = call i64 @pNtReplyPort(i32 %121, %struct.TYPE_4__* %123)
  store i64 %124, i64* %5, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load i64, i64* @STATUS_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %5, align 8
  %130 = call i32 (i32, i8*, i64, ...) @ok(i32 %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %129)
  %131 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %132 = bitcast %union.lpc_message* %131 to %struct.TYPE_4__*
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @LPC_REQUEST, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %139 = bitcast %union.lpc_message* %138 to %struct.TYPE_4__*
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 (i32, i8*, i64, ...) @ok(i32 %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %141)
  %143 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %144 = bitcast %union.lpc_message* %143 to %struct.TYPE_4__*
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = load i32, i32* @REPLY, align 4
  %149 = call i32 @strcmp(i32 %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* @REPLY, align 4
  %154 = sext i32 %153 to i64
  %155 = load %union.lpc_message*, %union.lpc_message** %4, align 8
  %156 = bitcast %union.lpc_message* %155 to %struct.TYPE_4__*
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (i32, i8*, i64, ...) @ok(i32 %152, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %154, i64 %158)
  br label %160

160:                                              ; preds = %84, %8
  ret void
}

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @pNtReplyPort(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
