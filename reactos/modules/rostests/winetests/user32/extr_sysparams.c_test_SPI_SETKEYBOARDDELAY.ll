; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETKEYBOARDDELAY.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETKEYBOARDDELAY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_SPI_SETKEYBOARDDELAY.vals = private unnamed_addr constant [2 x i32] [i32 0, i32 3], align 4
@.str = private unnamed_addr constant [36 x i8] c"testing SPI_{GET,SET}KEYBOARDDELAY\0A\00", align 1
@SPI_GETKEYBOARDDELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"SPI_{GET,SET}KEYBOARDDELAY\00", align 1
@SPI_SETKEYBOARDDELAY = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"SPI_SETKEYBOARDDELAY\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%d: rc=%d err=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SPI_SETKEYBOARDDELAY_REGKEY = common dso_local global i32 0, align 4
@SPI_SETKEYBOARDDELAY_VALNAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [66 x i8] c"***warning*** failed to restore the original value: rc=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SPI_SETKEYBOARDDELAY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SPI_SETKEYBOARDDELAY() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i8], align 1
  %7 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast ([2 x i32]* @__const.test_SPI_SETKEYBOARDDELAY.vals to i8*), i64 8, i1 false)
  %8 = call i32 @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @SetLastError(i32 -559038737)
  %10 = load i32, i32* @SPI_GETKEYBOARDDELAY, align 4
  %11 = call i32 @SystemParametersInfoA(i32 %10, i32 0, i32* %2, i32 0)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @test_error_msg(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %0
  br label %78

16:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %66, %16
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %19, 2
  br i1 %20, label %21, label %69

21:                                               ; preds = %17
  %22 = load i32, i32* @SPI_SETKEYBOARDDELAY, align 4
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
  %32 = call i32 @test_error_msg(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  br label %78

35:                                               ; preds = %21
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @SPI_SETKEYBOARDDELAY, align 4
  %42 = call i32 @test_change_message(i32 %41, i32 0)
  %43 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sprintf(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @SPI_SETKEYBOARDDELAY_REGKEY, align 4
  %50 = load i32, i32* @SPI_SETKEYBOARDDELAY_VALNAME, align 4
  %51 = getelementptr inbounds [10 x i8], [10 x i8]* %6, i64 0, i64 0
  %52 = call i32 @test_reg_key(i32 %49, i32 %50, i8* %51)
  %53 = load i32, i32* @SPI_GETKEYBOARDDELAY, align 4
  %54 = call i32 @SystemParametersInfoA(i32 %53, i32 0, i32* %5, i32 0)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %1, align 4
  %58 = call i32 (...) @GetLastError()
  %59 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @eq(i32 %60, i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %35
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %17

69:                                               ; preds = %17
  %70 = load i32, i32* @SPI_SETKEYBOARDDELAY, align 4
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %73 = call i32 @SystemParametersInfoA(i32 %70, i32 %71, i32* null, i32 %72)
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* %1, align 4
  %76 = call i32 (...) @GetLastError()
  %77 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %74, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %34, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace(i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @SystemParametersInfoA(i32, i32, i32*, i32) #2

declare dso_local i32 @test_error_msg(i32, i8*) #2

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @test_change_message(i32, i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @test_reg_key(i32, i32, i8*) #2

declare dso_local i32 @eq(i32, i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
