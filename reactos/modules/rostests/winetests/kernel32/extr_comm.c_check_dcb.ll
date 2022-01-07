; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_check_dcb.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_comm.c_check_dcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@DCBlength = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@fOutxCtsFlow = common dso_local global i32 0, align 4
@fDtrControl = common dso_local global i32 0, align 4
@fOutX = common dso_local global i32 0, align 4
@fInX = common dso_local global i32 0, align 4
@fRtsControl = common dso_local global i32 0, align 4
@fOutxDsrFlow = common dso_local global i32 0, align 4
@fDsrSensitivity = common dso_local global i32 0, align 4
@BaudRate = common dso_local global i32 0, align 4
@fBinary = common dso_local global i32 0, align 4
@fParity = common dso_local global i32 0, align 4
@fTXContinueOnXoff = common dso_local global i32 0, align 4
@fErrorChar = common dso_local global i32 0, align 4
@fNull = common dso_local global i32 0, align 4
@fAbortOnError = common dso_local global i32 0, align 4
@fDummy2 = common dso_local global i32 0, align 4
@wReserved = common dso_local global i32 0, align 4
@XonLim = common dso_local global i32 0, align 4
@XoffLim = common dso_local global i32 0, align 4
@ByteSize = common dso_local global i32 0, align 4
@Parity = common dso_local global i32 0, align 4
@StopBits = common dso_local global i32 0, align 4
@XonChar = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@XoffChar = common dso_local global i32 0, align 4
@ErrorChar = common dso_local global i32 0, align 4
@EofChar = common dso_local global i32 0, align 4
@EvtChar = common dso_local global i32 0, align 4
@wReserved1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_6__*, i32, %struct.TYPE_7__*, %struct.TYPE_7__*)* @check_dcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_dcb(i8* %0, %struct.TYPE_6__* %1, i32 %2, %struct.TYPE_7__* %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %10, align 8
  %11 = load i32, i32* @DCBlength, align 4
  %12 = call i32 @check_dcb_member2(i32 %11, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %5
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  %23 = load i32, i32* @fOutxCtsFlow, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 1
  %26 = call i32 @check_dcb_member2(i32 %23, i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @fDtrControl, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 3
  %30 = call i32 @check_dcb_member2(i32 %27, i32 %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @fOutX, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 1
  %34 = call i32 @check_dcb_member2(i32 %31, i32 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @fInX, align 4
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 1
  %38 = call i32 @check_dcb_member2(i32 %35, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @fRtsControl, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 3
  %42 = call i32 @check_dcb_member2(i32 %39, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %54

43:                                               ; preds = %17, %5
  %44 = load i32, i32* @fOutxCtsFlow, align 4
  %45 = call i32 @check_dcb_member(i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @fDtrControl, align 4
  %47 = call i32 @check_dcb_member(i32 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @fOutX, align 4
  %49 = call i32 @check_dcb_member(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @fInX, align 4
  %51 = call i32 @check_dcb_member(i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @fRtsControl, align 4
  %53 = call i32 @check_dcb_member(i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %43, %22
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %54
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @fOutxDsrFlow, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @check_dcb_member2(i32 %65, i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @fDsrSensitivity, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @check_dcb_member2(i32 %70, i32 %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %82

75:                                               ; preds = %59
  %76 = load i32, i32* @fOutxDsrFlow, align 4
  %77 = load i32, i32* %8, align 4
  %78 = and i32 %77, 1
  %79 = call i32 @check_dcb_member2(i32 %76, i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @fDsrSensitivity, align 4
  %81 = call i32 @check_dcb_member(i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %75, %64
  br label %88

83:                                               ; preds = %54
  %84 = load i32, i32* @fOutxDsrFlow, align 4
  %85 = call i32 @check_dcb_member(i32 %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @fDsrSensitivity, align 4
  %87 = call i32 @check_dcb_member(i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %82
  %89 = load i32, i32* @BaudRate, align 4
  %90 = call i32 @check_dcb_member(i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @fBinary, align 4
  %92 = call i32 @check_dcb_member(i32 %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* @fParity, align 4
  %94 = call i32 @check_dcb_member(i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @fTXContinueOnXoff, align 4
  %96 = call i32 @check_dcb_member(i32 %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %97 = load i32, i32* @fErrorChar, align 4
  %98 = call i32 @check_dcb_member(i32 %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @fNull, align 4
  %100 = call i32 @check_dcb_member(i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @fAbortOnError, align 4
  %102 = call i32 @check_dcb_member(i32 %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @fDummy2, align 4
  %104 = call i32 @check_dcb_member(i32 %103, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @wReserved, align 4
  %106 = call i32 @check_dcb_member(i32 %105, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %107 = load i32, i32* @XonLim, align 4
  %108 = call i32 @check_dcb_member(i32 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @XoffLim, align 4
  %110 = call i32 @check_dcb_member(i32 %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @ByteSize, align 4
  %112 = call i32 @check_dcb_member(i32 %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* @Parity, align 4
  %114 = call i32 @check_dcb_member(i32 %113, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %115 = load i32, i32* @StopBits, align 4
  %116 = call i32 @check_dcb_member(i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @XonChar, align 4
  %118 = call i32 @check_dcb_member(i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %119 = load i32, i32* @XoffChar, align 4
  %120 = call i32 @check_dcb_member(i32 %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @ErrorChar, align 4
  %122 = call i32 @check_dcb_member(i32 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* @EofChar, align 4
  %124 = call i32 @check_dcb_member(i32 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32, i32* @EvtChar, align 4
  %126 = call i32 @check_dcb_member(i32 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* @wReserved1, align 4
  %128 = call i32 @check_dcb_member(i32 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @check_dcb_member2(i32, i32, i8*) #1

declare dso_local i32 @check_dcb_member(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
