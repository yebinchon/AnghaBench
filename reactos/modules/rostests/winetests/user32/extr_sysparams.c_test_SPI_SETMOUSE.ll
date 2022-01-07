; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETMOUSE.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETMOUSE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@__const.test_SPI_SETMOUSE.curr_val = private unnamed_addr constant [3 x i32] [i32 6, i32 10, i32 1], align 4
@__const.test_SPI_SETMOUSE.req_change = private unnamed_addr constant [6 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 6, i32 6 }, %struct.TYPE_4__ { i32 7, i32 6 }, %struct.TYPE_4__ { i32 8, i32 6 }, %struct.TYPE_4__ { i32 10, i32 10 }, %struct.TYPE_4__ { i32 11, i32 10 }, %struct.TYPE_4__ { i32 100, i32 100 }], align 16
@__const.test_SPI_SETMOUSE.proj_change1 = private unnamed_addr constant [6 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 6, i32 6 }, %struct.TYPE_4__ { i32 14, i32 6 }, %struct.TYPE_4__ { i32 16, i32 6 }, %struct.TYPE_4__ { i32 20, i32 20 }, %struct.TYPE_4__ { i32 22, i32 20 }, %struct.TYPE_4__ { i32 200, i32 200 }], align 16
@__const.test_SPI_SETMOUSE.proj_change2 = private unnamed_addr constant [6 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 6, i32 6 }, %struct.TYPE_4__ { i32 14, i32 6 }, %struct.TYPE_4__ { i32 16, i32 6 }, %struct.TYPE_4__ { i32 20, i32 20 }, %struct.TYPE_4__ { i32 44, i32 20 }, %struct.TYPE_4__ { i32 400, i32 400 }], align 16
@__const.test_SPI_SETMOUSE.proj_change3 = private unnamed_addr constant [6 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 6, i32 6 }, %struct.TYPE_4__ { i32 14, i32 6 }, %struct.TYPE_4__ { i32 16, i32 6 }, %struct.TYPE_4__ { i32 20, i32 20 }, %struct.TYPE_4__ { i32 22, i32 20 }, %struct.TYPE_4__ { i32 200, i32 200 }], align 16
@__const.test_SPI_SETMOUSE.proj_change4 = private unnamed_addr constant [6 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 6, i32 6 }, %struct.TYPE_4__ { i32 7, i32 6 }, %struct.TYPE_4__ { i32 8, i32 6 }, %struct.TYPE_4__ { i32 10, i32 10 }, %struct.TYPE_4__ { i32 11, i32 10 }, %struct.TYPE_4__ { i32 100, i32 100 }], align 16
@__const.test_SPI_SETMOUSE.proj_change5 = private unnamed_addr constant [6 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 6, i32 6 }, %struct.TYPE_4__ { i32 7, i32 6 }, %struct.TYPE_4__ { i32 16, i32 6 }, %struct.TYPE_4__ { i32 20, i32 20 }, %struct.TYPE_4__ { i32 22, i32 20 }, %struct.TYPE_4__ { i32 200, i32 200 }], align 16
@__const.test_SPI_SETMOUSE.proj_change6 = private unnamed_addr constant [6 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 6, i32 6 }, %struct.TYPE_4__ { i32 28, i32 6 }, %struct.TYPE_4__ { i32 32, i32 6 }, %struct.TYPE_4__ { i32 40, i32 40 }, %struct.TYPE_4__ { i32 44, i32 40 }, %struct.TYPE_4__ { i32 400, i32 400 }], align 16
@__const.test_SPI_SETMOUSE.proj_change7 = private unnamed_addr constant [6 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 6, i32 6 }, %struct.TYPE_4__ { i32 14, i32 6 }, %struct.TYPE_4__ { i32 32, i32 6 }, %struct.TYPE_4__ { i32 40, i32 40 }, %struct.TYPE_4__ { i32 44, i32 40 }, %struct.TYPE_4__ { i32 400, i32 400 }], align 16
@__const.test_SPI_SETMOUSE.proj_change8 = private unnamed_addr constant [6 x %struct.TYPE_4__] [%struct.TYPE_4__ { i32 6, i32 6 }, %struct.TYPE_4__ { i32 28, i32 6 }, %struct.TYPE_4__ { i32 32, i32 6 }, %struct.TYPE_4__ { i32 40, i32 40 }, %struct.TYPE_4__ { i32 44, i32 40 }, %struct.TYPE_4__ { i32 400, i32 400 }], align 16
@.str = private unnamed_addr constant [28 x i8] c"testing SPI_{GET,SET}MOUSE\0A\00", align 1
@SPI_GETMOUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"SPI_{GET,SET}MOUSE\00", align 1
@SPI_SETMOUSE = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"***warning*** failed to restore the original value: rc=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SPI_SETMOUSE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SPI_SETMOUSE() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32], align 4
  %3 = alloca [3 x i32], align 4
  %4 = alloca [6 x %struct.TYPE_4__], align 16
  %5 = alloca [6 x %struct.TYPE_4__], align 16
  %6 = alloca [6 x %struct.TYPE_4__], align 16
  %7 = alloca [6 x %struct.TYPE_4__], align 16
  %8 = alloca [6 x %struct.TYPE_4__], align 16
  %9 = alloca [6 x %struct.TYPE_4__], align 16
  %10 = alloca [6 x %struct.TYPE_4__], align 16
  %11 = alloca [6 x %struct.TYPE_4__], align 16
  %12 = alloca [6 x %struct.TYPE_4__], align 16
  %13 = alloca i32, align 4
  %14 = bitcast [3 x i32]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([3 x i32]* @__const.test_SPI_SETMOUSE.curr_val to i8*), i64 12, i1 false)
  %15 = bitcast [6 x %struct.TYPE_4__]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([6 x %struct.TYPE_4__]* @__const.test_SPI_SETMOUSE.req_change to i8*), i64 48, i1 false)
  %16 = bitcast [6 x %struct.TYPE_4__]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([6 x %struct.TYPE_4__]* @__const.test_SPI_SETMOUSE.proj_change1 to i8*), i64 48, i1 false)
  %17 = bitcast [6 x %struct.TYPE_4__]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([6 x %struct.TYPE_4__]* @__const.test_SPI_SETMOUSE.proj_change2 to i8*), i64 48, i1 false)
  %18 = bitcast [6 x %struct.TYPE_4__]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([6 x %struct.TYPE_4__]* @__const.test_SPI_SETMOUSE.proj_change3 to i8*), i64 48, i1 false)
  %19 = bitcast [6 x %struct.TYPE_4__]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([6 x %struct.TYPE_4__]* @__const.test_SPI_SETMOUSE.proj_change4 to i8*), i64 48, i1 false)
  %20 = bitcast [6 x %struct.TYPE_4__]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([6 x %struct.TYPE_4__]* @__const.test_SPI_SETMOUSE.proj_change5 to i8*), i64 48, i1 false)
  %21 = bitcast [6 x %struct.TYPE_4__]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([6 x %struct.TYPE_4__]* @__const.test_SPI_SETMOUSE.proj_change6 to i8*), i64 48, i1 false)
  %22 = bitcast [6 x %struct.TYPE_4__]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([6 x %struct.TYPE_4__]* @__const.test_SPI_SETMOUSE.proj_change7 to i8*), i64 48, i1 false)
  %23 = bitcast [6 x %struct.TYPE_4__]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([6 x %struct.TYPE_4__]* @__const.test_SPI_SETMOUSE.proj_change8 to i8*), i64 48, i1 false)
  store i32 6, i32* %13, align 4
  %24 = call i32 @trace(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = load i32, i32* @SPI_GETMOUSE, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %28 = call i32 @SystemParametersInfoA(i32 %26, i32 0, i32* %27, i32 0)
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @test_error_msg(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %0
  br label %95

33:                                               ; preds = %0
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %35 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %36 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %5, i64 0, i64 0
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @run_spi_setmouse_test(i32* %34, %struct.TYPE_4__* %35, %struct.TYPE_4__* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %95

41:                                               ; preds = %33
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 2, i32* %42, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %44 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %45 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %6, i64 0, i64 0
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @run_spi_setmouse_test(i32* %43, %struct.TYPE_4__* %44, %struct.TYPE_4__* %45, i32 %46)
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 3, i32* %48, align 4
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %50 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %51 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %7, i64 0, i64 0
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @run_spi_setmouse_test(i32* %49, %struct.TYPE_4__* %50, %struct.TYPE_4__* %51, i32 %52)
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %56 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %57 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %8, i64 0, i64 0
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @run_spi_setmouse_test(i32* %55, %struct.TYPE_4__* %56, %struct.TYPE_4__* %57, i32 %58)
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 1, i32* %60, align 4
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32 7, i32* %61, align 4
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %63 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %64 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %9, i64 0, i64 0
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @run_spi_setmouse_test(i32* %62, %struct.TYPE_4__* %63, %struct.TYPE_4__* %64, i32 %65)
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 2
  store i32 2, i32* %67, align 4
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32 6, i32* %68, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  store i32 6, i32* %69, align 4
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %71 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %72 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %10, i64 0, i64 0
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @run_spi_setmouse_test(i32* %70, %struct.TYPE_4__* %71, %struct.TYPE_4__* %72, i32 %73)
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  store i32 7, i32* %75, align 4
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %77 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %78 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %11, i64 0, i64 0
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @run_spi_setmouse_test(i32* %76, %struct.TYPE_4__* %77, %struct.TYPE_4__* %78, i32 %79)
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 1
  store i32 5, i32* %81, align 4
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  %83 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %4, i64 0, i64 0
  %84 = getelementptr inbounds [6 x %struct.TYPE_4__], [6 x %struct.TYPE_4__]* %12, i64 0, i64 0
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @run_spi_setmouse_test(i32* %82, %struct.TYPE_4__* %83, %struct.TYPE_4__* %84, i32 %85)
  %87 = load i32, i32* @SPI_SETMOUSE, align 4
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %2, i64 0, i64 0
  %89 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %90 = call i32 @SystemParametersInfoA(i32 %87, i32 0, i32* %88, i32 %89)
  store i32 %90, i32* %1, align 4
  %91 = load i32, i32* %1, align 4
  %92 = load i32, i32* %1, align 4
  %93 = call i32 (...) @GetLastError()
  %94 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %41, %40, %32
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @trace(i8*) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @SystemParametersInfoA(i32, i32, i32*, i32) #2

declare dso_local i32 @test_error_msg(i32, i8*) #2

declare dso_local i32 @run_spi_setmouse_test(i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
