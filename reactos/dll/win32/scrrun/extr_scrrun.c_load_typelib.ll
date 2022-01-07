; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_scrrun.c_load_typelib.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/scrrun/extr_scrrun.c_load_typelib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@typelib = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@LIBID_Scripting = common dso_local global i32 0, align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"LoadRegTypeLib failed: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @load_typelib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_typelib() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = load i64, i64* @typelib, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @S_OK, align 4
  store i32 %7, i32* %1, align 4
  br label %27

8:                                                ; preds = %0
  %9 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %10 = call i32 @LoadRegTypeLib(i32* @LIBID_Scripting, i32 1, i32 0, i32 %9, i32** %3)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @FAILED(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %1, align 4
  br label %27

18:                                               ; preds = %8
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @InterlockedCompareExchangePointer(i8** bitcast (i64* @typelib to i8**), i32* %19, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @ITypeLib_Release(i32* %23)
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %1, align 4
  br label %27

27:                                               ; preds = %25, %14, %6
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @LoadRegTypeLib(i32*, i32, i32, i32, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i64 @InterlockedCompareExchangePointer(i8**, i32*, i32*) #1

declare dso_local i32 @ITypeLib_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
