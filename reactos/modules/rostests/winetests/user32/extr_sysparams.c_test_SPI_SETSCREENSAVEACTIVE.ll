; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETSCREENSAVEACTIVE.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETSCREENSAVEACTIVE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"testing SPI_{GET,SET}SCREENSAVEACTIVE\0A\00", align 1
@SPI_GETSCREENSAVEACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"SPI_{GET,SET}SCREENSAVEACTIVE\00", align 1
@SPI_SETSCREENSAVEACTIVE = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"SPI_SETSCREENSAVEACTIVE\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%d: rc=%d err=%d\0A\00", align 1
@SPI_SETSCREENSAVEACTIVE_REGKEY = common dso_local global i32 0, align 4
@SPI_SETSCREENSAVEACTIVE_VALNAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"SPI_{GET,SET}SCREENSAVEACTIVE: got %d instead of %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"***warning*** failed to restore the original value: rc=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SPI_SETSCREENSAVEACTIVE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SPI_SETSCREENSAVEACTIVE() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %7 = load i32, i32* @TRUE, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds i32, i32* %6, i64 1
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %8, align 4
  %10 = call i32 @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = load i32, i32* @SPI_GETSCREENSAVEACTIVE, align 4
  %13 = call i32 @SystemParametersInfoA(i32 %12, i32 0, i32* %2, i32 0)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @test_error_msg(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  br label %96

18:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %84, %18
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %21, 2
  br i1 %22, label %23, label %87

23:                                               ; preds = %19
  %24 = load i32, i32* @SPI_SETSCREENSAVEACTIVE, align 4
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %30 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @SystemParametersInfoA(i32 %24, i32 %28, i32* null, i32 %31)
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @test_error_msg(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  br label %96

37:                                               ; preds = %23
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %1, align 4
  %41 = call i32 (...) @GetLastError()
  %42 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* @SPI_SETSCREENSAVEACTIVE, align 4
  %44 = call i32 @test_change_message(i32 %43, i32 0)
  %45 = load i32, i32* @SPI_SETSCREENSAVEACTIVE_REGKEY, align 4
  %46 = load i32, i32* @SPI_SETSCREENSAVEACTIVE_VALNAME, align 4
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)
  %54 = call i32 @test_reg_key(i32 %45, i32 %46, i8* %53)
  %55 = load i32, i32* @SPI_GETSCREENSAVEACTIVE, align 4
  %56 = call i32 @SystemParametersInfoA(i32 %55, i32 0, i32* %5, i32 0)
  store i32 %56, i32* %1, align 4
  %57 = load i32, i32* %1, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %1, align 4
  %60 = call i32 (...) @GetLastError()
  %61 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %57, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %62, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %37
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @broken(i32 %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %68, %37
  %76 = phi i1 [ true, %37 ], [ %74, %68 ]
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %4, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %19

87:                                               ; preds = %19
  %88 = load i32, i32* @SPI_SETSCREENSAVEACTIVE, align 4
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %91 = call i32 @SystemParametersInfoA(i32 %88, i32 %89, i32* null, i32 %90)
  store i32 %91, i32* %1, align 4
  %92 = load i32, i32* %1, align 4
  %93 = load i32, i32* %1, align 4
  %94 = call i32 (...) @GetLastError()
  %95 = call i32 (i32, i8*, i32, i32, ...) @ok(i32 %92, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %36, %17
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @SystemParametersInfoA(i32, i32, i32*, i32) #1

declare dso_local i32 @test_error_msg(i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @test_change_message(i32, i32) #1

declare dso_local i32 @test_reg_key(i32, i32, i8*) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
