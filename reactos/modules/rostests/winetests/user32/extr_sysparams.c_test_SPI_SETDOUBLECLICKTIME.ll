; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETDOUBLECLICKTIME.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETDOUBLECLICKTIME.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"testing SPI_{GET,SET}DOUBLECLICKTIME\0A\00", align 1
@SPI_SETDOUBLECLICKTIME = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"SPI_{GET,SET}DOUBLECLICKTIME\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SPI_SETDOUBLECLICKTIME_REGKEY = common dso_local global i32 0, align 4
@SPI_SETDOUBLECLICKTIME_VALNAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"GetDoubleClickTime\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"SystemParametersInfoA: rc=%d err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"***warning*** failed to restore the original value: rc=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SPI_SETDOUBLECLICKTIME to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SPI_SETDOUBLECLICKTIME() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [10 x i8], align 1
  %6 = call i32 @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @GetDoubleClickTime()
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %2, align 4
  %8 = call i32 @SetLastError(i32 -559038737)
  %9 = load i32, i32* @SPI_SETDOUBLECLICKTIME, align 4
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %12 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @SystemParametersInfoA(i32 %9, i32 %10, i32 0, i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = call i32 @test_error_msg(i32 %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %0
  br label %87

19:                                               ; preds = %0
  %20 = load i32, i32* @SPI_SETDOUBLECLICKTIME, align 4
  %21 = call i32 @test_change_message(i32 %20, i32 0)
  %22 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @SPI_SETDOUBLECLICKTIME_REGKEY, align 4
  %26 = load i32, i32* @SPI_SETDOUBLECLICKTIME_VALNAME, align 4
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %28 = call i32 @test_reg_key(i32 %25, i32 %26, i8* %27)
  store i32 500, i32* %2, align 4
  %29 = call i32 (...) @GetDoubleClickTime()
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @eq(i32 %29, i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 1000, i32* %2, align 4
  %32 = load i32, i32* @SPI_SETDOUBLECLICKTIME, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %35 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @SystemParametersInfoA(i32 %32, i32 %33, i32 0, i32 %36)
  store i32 %37, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* %1, align 4
  %40 = call i32 (...) @GetLastError()
  %41 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* @SPI_SETDOUBLECLICKTIME, align 4
  %43 = call i32 @test_change_message(i32 %42, i32 0)
  %44 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @SPI_SETDOUBLECLICKTIME_REGKEY, align 4
  %48 = load i32, i32* @SPI_SETDOUBLECLICKTIME_VALNAME, align 4
  %49 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %50 = call i32 @test_reg_key(i32 %47, i32 %48, i8* %49)
  %51 = call i32 (...) @GetDoubleClickTime()
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @eq(i32 %51, i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* %2, align 4
  store i32 %54, i32* %3, align 4
  store i32 0, i32* %2, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @SetDoubleClickTime(i32 %55)
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @SPI_SETDOUBLECLICKTIME_REGKEY, align 4
  %61 = load i32, i32* @SPI_SETDOUBLECLICKTIME_VALNAME, align 4
  %62 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %63 = call i32 @test_reg_key(i32 %60, i32 %61, i8* %62)
  store i32 500, i32* %2, align 4
  %64 = call i32 (...) @GetDoubleClickTime()
  %65 = load i32, i32* %2, align 4
  %66 = call i32 @eq(i32 %64, i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 1000, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @SetDoubleClickTime(i32 %67)
  %69 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @sprintf(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @SPI_SETDOUBLECLICKTIME_REGKEY, align 4
  %73 = load i32, i32* @SPI_SETDOUBLECLICKTIME_VALNAME, align 4
  %74 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %75 = call i32 @test_reg_key(i32 %72, i32 %73, i8* %74)
  %76 = call i32 (...) @GetDoubleClickTime()
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @eq(i32 %76, i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @SPI_SETDOUBLECLICKTIME, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %82 = call i32 @SystemParametersInfoA(i32 %79, i32 %80, i32 0, i32 %81)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* %1, align 4
  %85 = call i32 (...) @GetLastError()
  %86 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @GetDoubleClickTime(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SystemParametersInfoA(i32, i32, i32, i32) #1

declare dso_local i32 @test_error_msg(i32, i8*) #1

declare dso_local i32 @test_change_message(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @test_reg_key(i32, i32, i8*) #1

declare dso_local i32 @eq(i32, i32, i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SetDoubleClickTime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
