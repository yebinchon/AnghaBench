; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_SystemParametersInfo.c_Test_MouseSpeed.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/user32/extr_SystemParametersInfo.c_Test_MouseSpeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPI_GETMOUSESPEED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SystemParametersInfo failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Wrong mouse speed (%d)\0A\00", align 1
@SPI_SETMOUSESPEED = common dso_local global i32 0, align 4
@SPIF_SENDCHANGE = common dso_local global i32 0, align 4
@SPIF_UPDATEINIFILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"SPI_GETMOUSESPEED did not get value set by SPI_SETMOUSESPEED (%d instead of 1)\0A\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"SPI_GETMOUSESPEED did not get value set by SPI_SETMOUSESPEED (%d instead of 20)\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"expected SystemParametersInfo to fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"SPI_GETMOUSESPEED got unexpected value (%d instead of 20)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_MouseSpeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_MouseSpeed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @SPI_GETMOUSESPEED, align 4
  %5 = call i32 @SystemParametersInfo(i32 %4, i32 0, i32* %1, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 (i32, i8*, ...) @ok(i32 %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %1, align 4
  %9 = icmp sge i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp sle i32 %11, 20
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %1, align 4
  %17 = call i32 (i32, i8*, ...) @ok(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 1, i32* %2, align 4
  %18 = load i32, i32* @SPI_SETMOUSESPEED, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32* @UlongToPtr(i32 %19)
  %21 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %22 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @SystemParametersInfo(i32 %18, i32 0, i32* %20, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @SPI_GETMOUSESPEED, align 4
  %28 = call i32 @SystemParametersInfo(i32 %27, i32 0, i32* %2, i32 0)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %2, align 4
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 20, i32* %2, align 4
  %36 = load i32, i32* @SPI_SETMOUSESPEED, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32* @UlongToPtr(i32 %37)
  %39 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %40 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @SystemParametersInfo(i32 %36, i32 0, i32* %38, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @SPI_GETMOUSESPEED, align 4
  %46 = call i32 @SystemParametersInfo(i32 %45, i32 0, i32* %2, i32 0)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* %2, align 4
  %50 = icmp eq i32 %49, 20
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  store i32 21, i32* %2, align 4
  %54 = load i32, i32* @SPI_SETMOUSESPEED, align 4
  %55 = load i32, i32* %2, align 4
  %56 = call i32* @UlongToPtr(i32 %55)
  %57 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %58 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @SystemParametersInfo(i32 %54, i32 0, i32* %56, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i32, i32* @SPI_GETMOUSESPEED, align 4
  %67 = call i32 @SystemParametersInfo(i32 %66, i32 0, i32* %2, i32 0)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* %2, align 4
  %71 = icmp eq i32 %70, 20
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %2, align 4
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  store i32 0, i32* %2, align 4
  %75 = load i32, i32* @SPI_SETMOUSESPEED, align 4
  %76 = load i32, i32* %2, align 4
  %77 = call i32* @UlongToPtr(i32 %76)
  %78 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %79 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @SystemParametersInfo(i32 %75, i32 0, i32* %77, i32 %80)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* @SPI_GETMOUSESPEED, align 4
  %88 = call i32 @SystemParametersInfo(i32 %87, i32 0, i32* %2, i32 0)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, ...) @ok(i32 %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %2, align 4
  %92 = icmp eq i32 %91, 20
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %2, align 4
  %95 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @SPI_SETMOUSESPEED, align 4
  %97 = load i32, i32* %1, align 4
  %98 = call i32* @UlongToPtr(i32 %97)
  %99 = load i32, i32* @SPIF_SENDCHANGE, align 4
  %100 = load i32, i32* @SPIF_UPDATEINIFILE, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @SystemParametersInfo(i32 %96, i32 0, i32* %98, i32 %101)
  store i32 %102, i32* %3, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SystemParametersInfo(i32, i32, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32* @UlongToPtr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
