; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_create_chm.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/itss/extr_protocol.c_create_chm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"test.chm\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not create test.chm file\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_chm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_chm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @GENERIC_WRITE, align 4
  %6 = load i32, i32* @CREATE_ALWAYS, align 4
  %7 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %8 = call i64 @CreateFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %5, i32 0, i32* null, i32 %6, i32 %7, i32* null)
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %1, align 4
  br label %32

19:                                               ; preds = %0
  %20 = call i32 @MAKEINTRESOURCEA(i32 60)
  %21 = call i32 @MAKEINTRESOURCEA(i32 60)
  %22 = call i32 @FindResourceA(i32* null, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i64, i64* %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @LoadResource(i32* null, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @SizeofResource(i32* null, i32 %26)
  %28 = call i32 @WriteFile(i64 %23, i32 %25, i32 %27, i32* %4, i32* null)
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @CloseHandle(i64 %29)
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %19, %17
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @FindResourceA(i32*, i32, i32) #1

declare dso_local i32 @MAKEINTRESOURCEA(i32) #1

declare dso_local i32 @WriteFile(i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @LoadResource(i32*, i32) #1

declare dso_local i32 @SizeofResource(i32*, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
