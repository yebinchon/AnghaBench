; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETWHEELSCROLLCHARS.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETWHEELSCROLLCHARS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SPI_SETWHEELSCROLLCHARS.vals = private unnamed_addr constant [2 x i32] [i32 32767, i32 0], align 4
@.str = private unnamed_addr constant [39 x i8] c"testing SPI_{GET,SET}WHEELSCROLLCHARS\0A\00", align 1
@SPI_GETWHEELSCROLLCHARS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"SPI_{GET,SET}WHEELSCROLLCHARS\00", align 1
@SPI_SETWHEELSCROLLCHARS = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"SPI_SETWHEELSCROLLCHARS\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SPI_SETMOUSESCROLLCHARS_REGKEY = common dso_local global i32 0, align 4
@SPI_SETMOUSESCROLLCHARS_VALNAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"%d: rc=%d err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"***warning*** failed to restore the original value: rc=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SPI_SETWHEELSCROLLCHARS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SPI_SETWHEELSCROLLCHARS() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  %7 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([2 x i32]* @__const.test_SPI_SETWHEELSCROLLCHARS.vals to i8*), i64 8, i1 false)
  %8 = call i32 @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @SetLastError(i32 -559038737)
  %10 = load i32, i32* @SPI_GETWHEELSCROLLCHARS, align 4
  %11 = call i32 @SystemParametersInfoA(i32 %10, i32 0, i32* %2, i32 0)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @test_error_msg(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  br label %73

16:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %61, %16
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %19, 2
  br i1 %20, label %21, label %64

21:                                               ; preds = %17
  %22 = load i32, i32* @SPI_SETWHEELSCROLLCHARS, align 4
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %28 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @SystemParametersInfoA(i32 %22, i32 %26, i32* null, i32 %29)
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @test_error_msg(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %73

35:                                               ; preds = %21
  %36 = load i32, i32* @SPI_SETWHEELSCROLLCHARS, align 4
  %37 = call i32 @test_change_message(i32 %36, i32 0)
  %38 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @SPI_SETMOUSESCROLLCHARS_REGKEY, align 4
  %45 = load i32, i32* @SPI_SETMOUSESCROLLCHARS_VALNAME, align 4
  %46 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %47 = call i32 @test_reg_key(i32 %44, i32 %45, i8* %46)
  %48 = load i32, i32* @SPI_GETWHEELSCROLLCHARS, align 4
  %49 = call i32 @SystemParametersInfoA(i32 %48, i32 0, i32* %5, i32 0)
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %1, align 4
  %53 = call i32 (...) @GetLastError()
  %54 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @eq(i32 %55, i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %35
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %17

64:                                               ; preds = %17
  %65 = load i32, i32* @SPI_SETWHEELSCROLLCHARS, align 4
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %68 = call i32 @SystemParametersInfoA(i32 %65, i32 %66, i32* null, i32 %67)
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* %1, align 4
  %70 = load i32, i32* %1, align 4
  %71 = call i32 (...) @GetLastError()
  %72 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %69, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %64, %34, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace(i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @SystemParametersInfoA(i32, i32, i32*, i32) #2

declare dso_local i32 @test_error_msg(i32, i8*) #2

declare dso_local i32 @test_change_message(i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @test_reg_key(i32, i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @eq(i32, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
