; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_guid.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_find_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"Unknown section_kind %x\0A\00", align 1
@STATUS_SXS_SECTION_NOT_FOUND = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32, i32*, i32, %struct.TYPE_7__*)* @find_guid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_guid(i32* %0, i32 %1, i32* %2, i32 %3, %struct.TYPE_7__* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %11, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %34 [
    i32 128, label %14
    i32 129, label %19
    i32 130, label %24
    i32 131, label %29
  ]

14:                                               ; preds = %5
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %18 = call i64 @find_tlib_redirection(i32* %15, i32* %16, %struct.TYPE_7__* %17)
  store i64 %18, i64* %12, align 8
  br label %38

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %23 = call i64 @find_comserver_redirection(i32* %20, i32* %21, %struct.TYPE_7__* %22)
  store i64 %23, i64* %12, align 8
  br label %38

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %28 = call i64 @find_cominterface_redirection(i32* %25, i32* %26, %struct.TYPE_7__* %27)
  store i64 %28, i64* %12, align 8
  br label %38

29:                                               ; preds = %5
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %33 = call i64 @find_clr_surrogate(i32* %30, i32* %31, %struct.TYPE_7__* %32)
  store i64 %33, i64* %12, align 8
  br label %38

34:                                               ; preds = %5
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* @STATUS_SXS_SECTION_NOT_FOUND, align 8
  store i64 %37, i64* %6, align 8
  br label %57

38:                                               ; preds = %29, %24, %19, %14
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @STATUS_SUCCESS, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* %12, align 8
  store i64 %43, i64* %6, align 8
  br label %57

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @FIND_ACTCTX_SECTION_KEY_RETURN_HACTCTX, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @actctx_addref(i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %55, %42, %34
  %58 = load i64, i64* %6, align 8
  ret i64 %58
}

declare dso_local i64 @find_tlib_redirection(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @find_comserver_redirection(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @find_cominterface_redirection(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @find_clr_surrogate(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @actctx_addref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
