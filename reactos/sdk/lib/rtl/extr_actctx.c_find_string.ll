; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_string.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [33 x i8] c"Unsupported yet section_kind %x\0A\00", align 1
@STATUS_SXS_KEY_NOT_FOUND = common dso_local global i64 0, align 8
@STATUS_SXS_SECTION_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Unknown section_kind %x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32*, i32, %struct.TYPE_6__*)* @find_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_string(i32* %0, i32 %1, i32* %2, i32 %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %37 [
    i32 132, label %14
    i32 130, label %18
    i32 128, label %23
    i32 131, label %28
    i32 129, label %33
  ]

14:                                               ; preds = %5
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i64, i64* @STATUS_SXS_KEY_NOT_FOUND, align 8
  store i64 %17, i64* %6, align 8
  br label %63

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %22 = call i64 @find_dll_redirection(i32* %19, i32* %20, %struct.TYPE_6__* %21)
  store i64 %22, i64* %12, align 8
  br label %41

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = call i64 @find_window_class(i32* %24, i32* %25, %struct.TYPE_6__* %26)
  store i64 %27, i64* %12, align 8
  br label %41

28:                                               ; preds = %5
  %29 = load i32*, i32** %7, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = call i64 @find_progid_redirection(i32* %29, i32* %30, %struct.TYPE_6__* %31)
  store i64 %32, i64* %12, align 8
  br label %41

33:                                               ; preds = %5
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @DPRINT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* @STATUS_SXS_SECTION_NOT_FOUND, align 8
  store i64 %36, i64* %6, align 8
  br label %63

37:                                               ; preds = %5
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @DPRINT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i64, i64* @STATUS_SXS_SECTION_NOT_FOUND, align 8
  store i64 %40, i64* %6, align 8
  br label %63

41:                                               ; preds = %28, %23, %18
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* @STATUS_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* %12, align 8
  store i64 %46, i64* %6, align 8
  br label %63

47:                                               ; preds = %41
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = icmp ne %struct.TYPE_6__* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @actctx_addref(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %55, %50, %47
  %62 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %61, %45, %37, %33, %14
  %64 = load i64, i64* %6, align 8
  ret i64 %64
}

declare dso_local i32 @DPRINT1(i8*, i32) #1

declare dso_local i64 @find_dll_redirection(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @find_window_class(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i64 @find_progid_redirection(i32*, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @actctx_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
