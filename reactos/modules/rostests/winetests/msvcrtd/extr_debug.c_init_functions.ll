; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrtd/extr_debug.c_init_functions.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrtd/extr_debug.c_init_functions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"msvcrtd.dll\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"LoadLibraryA failed to load msvcrtd.dll with GLE=%d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@pMSVCRTD_operator_new_dbg = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"??2@YAPEAX_KHPEBDH@Z\00", align 1
@pMSVCRTD_operator_delete = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"??3@YAXPEAX@Z\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_functions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_functions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @LoadLibraryA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = call i32 (...) @GetLastError()
  %8 = call i32 @trace(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %1, align 4
  br label %21

10:                                               ; preds = %0
  %11 = load i32*, i32** @pMSVCRTD_operator_new_dbg, align 8
  %12 = call i32 @SET(i32* %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32*, i32** @pMSVCRTD_operator_delete, align 8
  %14 = call i32 @SET(i32* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32*, i32** @pMSVCRTD_operator_new_dbg, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %1, align 4
  br label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %17, %6
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @LoadLibraryA(i8*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SET(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
