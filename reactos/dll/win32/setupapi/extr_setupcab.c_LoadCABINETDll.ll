; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_setupcab.c_LoadCABINETDll.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/setupapi/extr_setupcab.c_LoadCABINETDll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CABINET_hInstance = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"cabinet.dll\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"FDICreate\00", align 1
@sc_FDICreate = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"FDICopy\00", align 1
@sc_FDICopy = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"FDIDestroy\00", align 1
@sc_FDIDestroy = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"load cabinet dll failed.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @LoadCABINETDll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LoadCABINETDll() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @CABINET_hInstance, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %0
  %5 = call i64 @LoadLibraryA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i64 %5, i64* @CABINET_hInstance, align 8
  %6 = load i64, i64* @CABINET_hInstance, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load i64, i64* @CABINET_hInstance, align 8
  %10 = call i64 @GetProcAddress(i64 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @sc_FDICreate, align 8
  %12 = load i64, i64* @CABINET_hInstance, align 8
  %13 = call i64 @GetProcAddress(i64 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @sc_FDICopy, align 8
  %15 = load i64, i64* @CABINET_hInstance, align 8
  %16 = call i64 @GetProcAddress(i64 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** @sc_FDIDestroy, align 8
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %1, align 4
  br label %24

19:                                               ; preds = %4
  %20 = call i32 @ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %1, align 4
  br label %24

22:                                               ; preds = %0
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %19, %8
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i64 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

declare dso_local i32 @ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
