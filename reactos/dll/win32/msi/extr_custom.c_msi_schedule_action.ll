; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_msi_schedule_action.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_custom.c_msi_schedule_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64*, i32*** }

@SCRIPT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unknown script requested %u\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Scheduling action %s in script %u\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_schedule_action(%struct.TYPE_3__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32** null, i32*** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @SCRIPT_MAX, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @FIXME(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %16, i64* %4, align 8
  br label %68

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @debugstr_w(i32* %18)
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %19, i64 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %17
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32***, i32**** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i32**, i32*** %40, i64 %41
  %43 = load i32**, i32*** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = mul i64 %49, 8
  %51 = trunc i64 %50 to i32
  %52 = call i32** @msi_realloc(i32** %43, i32 %51)
  store i32** %52, i32*** %9, align 8
  br label %55

53:                                               ; preds = %17
  %54 = call i32** @msi_alloc(i32 8)
  store i32** %54, i32*** %9, align 8
  br label %55

55:                                               ; preds = %53, %37
  %56 = load i32*, i32** %7, align 8
  %57 = call i32* @strdupW(i32* %56)
  %58 = load i32**, i32*** %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  store i32* %57, i32** %60, align 8
  %61 = load i32**, i32*** %9, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32***, i32**** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i32**, i32*** %64, i64 %65
  store i32** %61, i32*** %66, align 8
  %67 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %67, i64* %4, align 8
  br label %68

68:                                               ; preds = %55, %13
  %69 = load i64, i64* %4, align 8
  ret i64 %69
}

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32** @msi_realloc(i32**, i32) #1

declare dso_local i32** @msi_alloc(i32) #1

declare dso_local i32* @strdupW(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
