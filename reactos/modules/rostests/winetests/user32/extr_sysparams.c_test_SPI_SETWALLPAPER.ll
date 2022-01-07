; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETWALLPAPER.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETWALLPAPER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [36 x i8] c"testing SPI_{GET,SET}DESKWALLPAPER\0A\00", align 1
@SPI_GETDESKWALLPAPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"SPI_{GET,SET}DESKWALLPAPER\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SPI_SETDESKWALLPAPER = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"SPI_SETDESKWALLPAPER\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"SystemParametersInfoA: rc=%d err=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"***warning*** failed to restore the original value: rc=%d err=%d\0A\00", align 1
@SPI_SETDESKWALLPAPER_REGKEY = common dso_local global i32 0, align 4
@SPI_SETDESKWALLPAPER_VALNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SPI_SETWALLPAPER to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SPI_SETWALLPAPER() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [260 x i8], align 16
  %3 = alloca [260 x i8], align 16
  %4 = call i32 @trace(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @SetLastError(i32 -559038737)
  %6 = load i32, i32* @SPI_GETDESKWALLPAPER, align 4
  %7 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %8 = call i32 @SystemParametersInfoA(i32 %6, i32 260, i8* %7, i32 0)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @test_error_msg(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %45

13:                                               ; preds = %0
  %14 = getelementptr inbounds [260 x i8], [260 x i8]* %3, i64 0, i64 0
  %15 = call i32 @strcpy(i8* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32, i32* @SPI_SETDESKWALLPAPER, align 4
  %17 = getelementptr inbounds [260 x i8], [260 x i8]* %3, i64 0, i64 0
  %18 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %19 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @SystemParametersInfoA(i32 %16, i32 0, i8* %17, i32 %20)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = call i32 @test_error_msg(i32 %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  br label %45

26:                                               ; preds = %13
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 @ok(i32 %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @SPI_SETDESKWALLPAPER, align 4
  %32 = call i32 @test_change_message(i32 %31, i32 0)
  %33 = load i32, i32* @SPI_SETDESKWALLPAPER, align 4
  %34 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %35 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %36 = call i32 @SystemParametersInfoA(i32 %33, i32 0, i8* %34, i32 %35)
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* %1, align 4
  %39 = call i32 (...) @GetLastError()
  %40 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @SPI_SETDESKWALLPAPER_REGKEY, align 4
  %42 = load i32, i32* @SPI_SETDESKWALLPAPER_VALNAME, align 4
  %43 = getelementptr inbounds [260 x i8], [260 x i8]* %2, i64 0, i64 0
  %44 = call i32 @test_reg_key(i32 %41, i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %26, %25, %12
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SystemParametersInfoA(i32, i32, i8*, i32) #1

declare dso_local i32 @test_error_msg(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @test_change_message(i32, i32) #1

declare dso_local i32 @test_reg_key(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
