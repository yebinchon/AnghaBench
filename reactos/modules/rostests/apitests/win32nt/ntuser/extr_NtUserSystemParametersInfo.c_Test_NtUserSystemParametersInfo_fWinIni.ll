; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_NtUserSystemParametersInfo_fWinIni.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/win32nt/ntuser/extr_NtUserSystemParametersInfo.c_Test_NtUserSystemParametersInfo_fWinIni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SPI_GETACCESSTIMEOUT = common dso_local global i32 0, align 4
@SPI_SETACCESSTIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i32] [i32 67, i32 111, i32 110, i32 116, i32 114, i32 111, i32 108, i32 32, i32 80, i32 97, i32 110, i32 101, i32 108, i32 92, i32 65, i32 99, i32 99, i32 101, i32 115, i32 115, i32 105, i32 98, i32 105, i32 108, i32 105, i32 116, i32 121, i32 92, i32 84, i32 105, i32 109, i32 101, i32 79, i32 117, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [11 x i32] [i32 84, i32 105, i32 109, i32 101, i32 84, i32 111, i32 87, i32 97, i32 105, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Test_NtUserSystemParametersInfo_fWinIni() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca [6 x i32], align 16
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 8, i32* %4, align 4
  %5 = load i32, i32* @SPI_GETACCESSTIMEOUT, align 4
  %6 = call i32 @NtUserSystemParametersInfo(i32 %5, i32 0, %struct.TYPE_3__* %1, i32 0)
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @SPI_SETACCESSTIMEOUT, align 4
  %11 = call i32 @NtUserSystemParametersInfo(i32 %10, i32 0, %struct.TYPE_3__* %1, i32 0)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @SPI_SETACCESSTIMEOUT, align 4
  %16 = call i32 @NtUserSystemParametersInfo(i32 %15, i32 0, %struct.TYPE_3__* %1, i32 0)
  store i32 6, i32* %3, align 4
  %17 = bitcast [6 x i32]* %2 to i32**
  %18 = call i32 @QueryUserRegValueW(i8* bitcast ([36 x i32]* @.str to i8*), i8* bitcast ([11 x i32]* @.str.1 to i8*), i32** %17, i32* %3, i32* null)
  ret void
}

declare dso_local i32 @NtUserSystemParametersInfo(i32, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @QueryUserRegValueW(i8*, i8*, i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
