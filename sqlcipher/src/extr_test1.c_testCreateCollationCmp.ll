; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_testCreateCollationCmp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_testCreateCollationCmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@TCL_OK = common dso_local global i64 0, align 8
@TCL_EVAL_DIRECT = common dso_local global i32 0, align 4
@TCL_EVAL_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i8*)* @testCreateCollationCmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testCreateCollationCmp(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %11, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @Tcl_DuplicateObj(i32 %18)
  store i32* %19, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @Tcl_IncrRefCount(i32* %20)
  %22 = load i32*, i32** %12, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @Tcl_NewStringObj(i8* %23, i32 %24)
  %26 = call i32 @Tcl_ListObjAppendElement(i32 0, i32* %22, i32 %25)
  %27 = load i32*, i32** %12, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @Tcl_NewStringObj(i8* %28, i32 %29)
  %31 = call i32 @Tcl_ListObjAppendElement(i32 0, i32* %27, i32 %30)
  %32 = load i64, i64* @TCL_OK, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* @TCL_EVAL_DIRECT, align 4
  %38 = load i32, i32* @TCL_EVAL_GLOBAL, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @Tcl_EvalObjEx(i32 %35, i32* %36, i32 %39)
  %41 = icmp ne i64 %32, %40
  br i1 %41, label %53, label %42

42:                                               ; preds = %5
  %43 = load i64, i64* @TCL_OK, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @Tcl_GetObjResult(i32 %49)
  %51 = call i64 @Tcl_GetIntFromObj(i32 %46, i32 %50, i32* %13)
  %52 = icmp ne i64 %43, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %42, %5
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @Tcl_BackgroundError(i32 %56)
  br label %58

58:                                               ; preds = %53, %42
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @Tcl_DecrRefCount(i32* %59)
  %61 = load i32, i32* %13, align 4
  ret i32 %61
}

declare dso_local i32* @Tcl_DuplicateObj(i32) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32, i32*, i32) #1

declare dso_local i32 @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i64 @Tcl_EvalObjEx(i32, i32*, i32) #1

declare dso_local i64 @Tcl_GetIntFromObj(i32, i32, i32*) #1

declare dso_local i32 @Tcl_GetObjResult(i32) #1

declare dso_local i32 @Tcl_BackgroundError(i32) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
