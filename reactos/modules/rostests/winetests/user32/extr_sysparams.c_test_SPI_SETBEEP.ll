; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETBEEP.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_sysparams.c_test_SPI_SETBEEP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"testing SPI_{GET,SET}BEEP\0A\00", align 1
@SPI_GETBEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"SPI_{GET,SET}BEEP\00", align 1
@TRUE = common dso_local global i64 0, align 8
@SPI_SETBEEP = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"SPI_SETBEEP\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"SystemParametersInfoA: rc=%d err=%d\0A\00", align 1
@SPI_SETBEEP_REGKEY = common dso_local global i32 0, align 4
@SPI_SETBEEP_VALNAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"SystemParametersInfoW: rc=%d err=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"SystemParametersInfoW\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"SystemParametersInfo: rc=%d err=%d\0A\00", align 1
@MB_OK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [52 x i8] c"Return value of MessageBeep when sound is disabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"***warning*** failed to restore the original value: rc=%d err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SPI_SETBEEP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SPI_SETBEEP() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @SetLastError(i32 -559038737)
  %7 = load i32, i32* @SPI_GETBEEP, align 4
  %8 = call i64 @SystemParametersInfoA(i32 %7, i64 0, i64* %2, i32 0)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @test_error_msg(i64 %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  br label %150

13:                                               ; preds = %0
  %14 = load i64, i64* @TRUE, align 8
  store i64 %14, i64* %4, align 8
  %15 = load i32, i32* @SPI_SETBEEP, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %18 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @SystemParametersInfoA(i32 %15, i64 %16, i64* null, i32 %19)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = call i32 @test_error_msg(i64 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %150

25:                                               ; preds = %13
  %26 = load i64, i64* %1, align 8
  %27 = load i64, i64* %1, align 8
  %28 = call i64 (...) @GetLastError()
  %29 = call i32 (i64, i8*, ...) @ok(i64 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %27, i64 %28)
  %30 = load i32, i32* @SPI_SETBEEP, align 4
  %31 = call i32 @test_change_message(i32 %30, i32 0)
  %32 = load i32, i32* @SPI_SETBEEP_REGKEY, align 4
  %33 = load i32, i32* @SPI_SETBEEP_VALNAME, align 4
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %38 = call i32 @test_reg_key(i32 %32, i32 %33, i8* %37)
  %39 = load i32, i32* @SPI_GETBEEP, align 4
  %40 = call i64 @SystemParametersInfoA(i32 %39, i64 0, i64* %3, i32 0)
  store i64 %40, i64* %1, align 8
  %41 = load i64, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = call i64 (...) @GetLastError()
  %44 = call i32 (i64, i8*, ...) @ok(i64 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %42, i64 %43)
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @eq(i64 %45, i64 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %48 = load i32, i32* @SPI_GETBEEP, align 4
  %49 = call i64 @SystemParametersInfoW(i32 %48, i64 0, i64* %3, i32 0)
  store i64 %49, i64* %1, align 8
  %50 = load i64, i64* %1, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %25
  %53 = call i64 (...) @GetLastError()
  %54 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52, %25
  %57 = load i64, i64* %1, align 8
  %58 = load i64, i64* %1, align 8
  %59 = call i64 (...) @GetLastError()
  %60 = call i32 (i64, i8*, ...) @ok(i64 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %58, i64 %59)
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = call i32 @eq(i64 %61, i64 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %64

64:                                               ; preds = %56, %52
  %65 = load i32, i32* @SPI_SETBEEP, align 4
  %66 = load i64, i64* %4, align 8
  %67 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %68 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %69 = or i32 %67, %68
  %70 = call i64 @SystemParametersInfoA(i32 %65, i64 %66, i64* null, i32 %69)
  store i64 %70, i64* %1, align 8
  %71 = load i64, i64* %1, align 8
  %72 = load i64, i64* %1, align 8
  %73 = call i64 (...) @GetLastError()
  %74 = call i32 (i64, i8*, ...) @ok(i64 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %72, i64 %73)
  %75 = load i32, i32* @SPI_SETBEEP, align 4
  %76 = call i32 @test_change_message(i32 %75, i32 0)
  %77 = load i64, i64* @FALSE, align 8
  store i64 %77, i64* %4, align 8
  %78 = load i32, i32* @SPI_SETBEEP, align 4
  %79 = load i64, i64* %4, align 8
  %80 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %81 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %82 = or i32 %80, %81
  %83 = call i64 @SystemParametersInfoW(i32 %78, i64 %79, i64* null, i32 %82)
  store i64 %83, i64* %1, align 8
  %84 = load i64, i64* %1, align 8
  %85 = load i64, i64* @FALSE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %64
  %88 = call i64 (...) @GetLastError()
  %89 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i32, i32* @SPI_SETBEEP, align 4
  %93 = load i64, i64* %4, align 8
  %94 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %95 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %96 = or i32 %94, %95
  %97 = call i64 @SystemParametersInfoA(i32 %92, i64 %93, i64* null, i32 %96)
  store i64 %97, i64* %1, align 8
  br label %98

98:                                               ; preds = %91, %87, %64
  %99 = load i64, i64* %1, align 8
  %100 = load i64, i64* %1, align 8
  %101 = call i64 (...) @GetLastError()
  %102 = call i32 (i64, i8*, ...) @ok(i64 %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i64 %100, i64 %101)
  %103 = load i32, i32* @SPI_SETBEEP, align 4
  %104 = call i32 @test_change_message(i32 %103, i32 0)
  %105 = load i32, i32* @SPI_SETBEEP_REGKEY, align 4
  %106 = load i32, i32* @SPI_SETBEEP_VALNAME, align 4
  %107 = load i64, i64* %4, align 8
  %108 = icmp ne i64 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %111 = call i32 @test_reg_key(i32 %105, i32 %106, i8* %110)
  %112 = load i32, i32* @SPI_GETBEEP, align 4
  %113 = call i64 @SystemParametersInfoA(i32 %112, i64 0, i64* %3, i32 0)
  store i64 %113, i64* %1, align 8
  %114 = load i64, i64* %1, align 8
  %115 = load i64, i64* %1, align 8
  %116 = call i64 (...) @GetLastError()
  %117 = call i32 (i64, i8*, ...) @ok(i64 %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %115, i64 %116)
  %118 = load i64, i64* %3, align 8
  %119 = load i64, i64* %4, align 8
  %120 = call i32 @eq(i64 %118, i64 %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %121 = load i32, i32* @SPI_GETBEEP, align 4
  %122 = call i64 @SystemParametersInfoW(i32 %121, i64 0, i64* %3, i32 0)
  store i64 %122, i64* %1, align 8
  %123 = load i64, i64* %1, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %98
  %126 = call i64 (...) @GetLastError()
  %127 = load i64, i64* @ERROR_CALL_NOT_IMPLEMENTED, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %125, %98
  %130 = load i64, i64* %1, align 8
  %131 = load i64, i64* %1, align 8
  %132 = call i64 (...) @GetLastError()
  %133 = call i32 (i64, i8*, ...) @ok(i64 %130, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %131, i64 %132)
  %134 = load i64, i64* %3, align 8
  %135 = load i64, i64* %4, align 8
  %136 = call i32 @eq(i64 %134, i64 %135, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %137

137:                                              ; preds = %129, %125
  %138 = load i32, i32* @MB_OK, align 4
  %139 = call i32 @MessageBeep(i32 %138)
  %140 = sext i32 %139 to i64
  %141 = call i32 (i64, i8*, ...) @ok(i64 %140, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  %142 = load i32, i32* @SPI_SETBEEP, align 4
  %143 = load i64, i64* %2, align 8
  %144 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %145 = call i64 @SystemParametersInfoA(i32 %142, i64 %143, i64* null, i32 %144)
  store i64 %145, i64* %1, align 8
  %146 = load i64, i64* %1, align 8
  %147 = load i64, i64* %1, align 8
  %148 = call i64 (...) @GetLastError()
  %149 = call i32 (i64, i8*, ...) @ok(i64 %146, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0), i64 %147, i64 %148)
  br label %150

150:                                              ; preds = %137, %24, %12
  ret void
}

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i64 @SystemParametersInfoA(i32, i64, i64*, i32) #1

declare dso_local i32 @test_error_msg(i64, i8*) #1

declare dso_local i32 @ok(i64, i8*, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @test_change_message(i32, i32) #1

declare dso_local i32 @test_reg_key(i32, i32, i8*) #1

declare dso_local i32 @eq(i64, i64, i8*, i8*) #1

declare dso_local i64 @SystemParametersInfoW(i32, i64, i64*, i32) #1

declare dso_local i32 @MessageBeep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
