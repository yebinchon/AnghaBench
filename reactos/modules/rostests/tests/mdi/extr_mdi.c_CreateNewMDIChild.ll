; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/mdi/extr_mdi.c_CreateNewMDIChild.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/mdi/extr_mdi.c_CreateNewMDIChild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"[Untitled]\00", align 1
@g_szChildClassName = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i8* null, align 8
@MDIS_ALLCHILDSTYLES = common dso_local global i32 0, align 4
@WM_MDICREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"MDI Child creation failed.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Oh Oh...\00", align 1
@MB_ICONEXCLAMATION = common dso_local global i32 0, align 4
@MB_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CreateNewMDIChild(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_2__, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load i32, i32* @g_szChildClassName, align 4
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 7
  store i32 %6, i32* %7, align 4
  %8 = call i32 @GetModuleHandle(i32* null)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 6
  store i32 %8, i32* %9, align 8
  %10 = load i8*, i8** @CW_USEDEFAULT, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 4
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 5
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @CW_USEDEFAULT, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @MDIS_ALLCHILDSTYLES, align 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load i32, i32* @WM_MDICREATE, align 4
  %20 = ptrtoint %struct.TYPE_2__* %3 to i32
  %21 = call i64 @SendMessage(i64 %18, i32 %19, i32 0, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* %2, align 8
  %26 = load i32, i32* @MB_ICONEXCLAMATION, align 4
  %27 = load i32, i32* @MB_OK, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @MessageBox(i64 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load i64, i64* %4, align 8
  ret i64 %31
}

declare dso_local i32 @GetModuleHandle(i32*) #1

declare dso_local i64 @SendMessage(i64, i32, i32, i32) #1

declare dso_local i32 @MessageBox(i64, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
