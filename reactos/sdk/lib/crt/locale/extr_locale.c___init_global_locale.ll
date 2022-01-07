; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/crt/locale/extr_locale.c___init_global_locale.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/crt/locale/extr_locale.c___init_global_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32, i32, i32 }

@LOCK_LOCALE = common dso_local global i32 0, align 4
@global_locale = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@MSVCRT_locale = common dso_local global %struct.TYPE_4__* null, align 8
@__lc_codepage = common dso_local global i32 0, align 4
@MSVCRT___lc_collate_cp = common dso_local global i32 0, align 4
@__mb_cur_max = common dso_local global i32 0, align 4
@LC_MIN = common dso_local global i32 0, align 4
@LC_MAX = common dso_local global i32 0, align 4
@MSVCRT___lc_handle = common dso_local global i32* null, align 8
@_MB_CP_ANSI = common dso_local global i32 0, align 4
@UNLOCK_LOCALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__init_global_locale() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @LOCK_LOCALE, align 4
  %3 = load i64, i64* @global_locale, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %49

6:                                                ; preds = %0
  %7 = call i64 @MSVCRT__create_locale(i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %7, i64* @global_locale, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSVCRT_locale, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* @__lc_codepage, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSVCRT_locale, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* @MSVCRT___lc_collate_cp, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSVCRT_locale, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* @__mb_cur_max, align 4
  %23 = load i32, i32* @LC_MIN, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %42, %6
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @LC_MAX, align 4
  %27 = icmp ule i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @MSVCRT_locale, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %1, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @MSVCRT___lc_handle, align 8
  %39 = load i32, i32* %1, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %1, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %24

45:                                               ; preds = %24
  %46 = load i32, i32* @_MB_CP_ANSI, align 4
  %47 = call i32 @_setmbcp(i32 %46)
  %48 = load i32, i32* @UNLOCK_LOCALE, align 4
  br label %49

49:                                               ; preds = %45, %5
  ret void
}

declare dso_local i64 @MSVCRT__create_locale(i32, i8*) #1

declare dso_local i32 @_setmbcp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
