; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/sti/extr_sti.c_init_function_pointers.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/sti/extr_sti.c_init_function_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"sti.dll\00", align 1
@sti_dll = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"StiCreateInstance\00", align 1
@pStiCreateInstance = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"StiCreateInstanceA\00", align 1
@pStiCreateInstanceA = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"StiCreateInstanceW\00", align 1
@pStiCreateInstanceW = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_function_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_function_pointers() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @LoadLibraryA(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i64 %2, i64* @sti_dll, align 8
  %3 = load i64, i64* @sti_dll, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0
  %6 = load i64, i64* @sti_dll, align 8
  %7 = call i64 @GetProcAddress(i64 %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** @pStiCreateInstance, align 8
  %9 = load i64, i64* @sti_dll, align 8
  %10 = call i64 @GetProcAddress(i64 %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** @pStiCreateInstanceA, align 8
  %12 = load i64, i64* @sti_dll, align 8
  %13 = call i64 @GetProcAddress(i64 %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** @pStiCreateInstanceW, align 8
  %15 = load i32, i32* @TRUE, align 4
  store i32 %15, i32* %1, align 4
  br label %18

16:                                               ; preds = %0
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %16, %5
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i64 @LoadLibraryA(i8*) #1

declare dso_local i64 @GetProcAddress(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
