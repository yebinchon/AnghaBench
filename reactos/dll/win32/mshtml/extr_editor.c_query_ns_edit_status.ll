; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_query_ns_edit_status.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/mshtml/extr_editor.c_query_ns_edit_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@EDITMODE = common dso_local global i64 0, align 8
@READYSTATE_INTERACTIVE = common dso_local global i64 0, align 8
@OLECMDF_SUPPORTED = common dso_local global i32 0, align 4
@NSSTATE_ALL = common dso_local global i32 0, align 4
@OLECMDF_ENABLED = common dso_local global i32 0, align 4
@OLECMDF_LATCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*)* @query_ns_edit_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_ns_edit_status(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i64, i64* @FALSE, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EDITMODE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @READYSTATE_INTERACTIVE, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16, %2
  %25 = load i32, i32* @OLECMDF_SUPPORTED, align 4
  store i32 %25, i32* %3, align 4
  br label %63

26:                                               ; preds = %16
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = call i32* (...) @create_nscommand_params()
  store i32* %37, i32** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @get_ns_command_state(i64 %42, i8* %43, i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @NSSTATE_ALL, align 4
  %48 = call i32 @nsICommandParams_GetBooleanValue(i32* %46, i32 %47, i64* %7)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @nsICommandParams_Release(i32* %49)
  br label %51

51:                                               ; preds = %36, %33, %26
  %52 = load i32, i32* @OLECMDF_SUPPORTED, align 4
  %53 = load i32, i32* @OLECMDF_ENABLED, align 4
  %54 = or i32 %52, %53
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @OLECMDF_LATCHED, align 4
  br label %60

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = or i32 %54, %61
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %24
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32* @create_nscommand_params(...) #1

declare dso_local i32 @get_ns_command_state(i64, i8*, i32*) #1

declare dso_local i32 @nsICommandParams_GetBooleanValue(i32*, i32, i64*) #1

declare dso_local i32 @nsICommandParams_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
