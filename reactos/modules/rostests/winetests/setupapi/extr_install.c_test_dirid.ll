; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_install.c_test_dirid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/setupapi/extr_install.c_test_dirid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@DIRID_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DIRID_WINDOWS = common dso_local global i32 0, align 4
@DIRID_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"\\unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_dirid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_dirid() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @MAX_PATH, align 4
  %4 = zext i32 %3 to i64
  %5 = call i8* @llvm.stacksave()
  store i8* %5, i8** %1, align 8
  %6 = alloca i8, i64 %4, align 16
  store i64 %4, i64* %2, align 8
  %7 = load i32, i32* @DIRID_NULL, align 4
  %8 = call i32 @check_dirid(i32 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @MAX_PATH, align 4
  %10 = call i32 @GetWindowsDirectoryA(i8* %6, i32 %9)
  %11 = load i32, i32* @DIRID_WINDOWS, align 4
  %12 = call i32 @check_dirid(i32 %11, i8* %6)
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = call i32 @GetSystemDirectoryA(i8* %6, i32 %13)
  %15 = load i32, i32* @DIRID_SYSTEM, align 4
  %16 = call i32 @check_dirid(i32 %15, i8* %6)
  %17 = call i32 @strcat(i8* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @check_dirid(i32 40, i8* %6)
  %19 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %19)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_dirid(i32, i8*) #2

declare dso_local i32 @GetWindowsDirectoryA(i8*, i32) #2

declare dso_local i32 @GetSystemDirectoryA(i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
