; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_DbWalHandler.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_DbWalHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8*, i32)* @DbWalHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DbWalHandler(i8* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %11, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %12, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @Tcl_DuplicateObj(i32 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @Tcl_IncrRefCount(i32* %34)
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @Tcl_NewStringObj(i8* %38, i32 -1)
  %40 = call i32 @Tcl_ListObjAppendElement(i32* %36, i32* %37, i32 %39)
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @Tcl_NewIntObj(i32 %43)
  %45 = call i32 @Tcl_ListObjAppendElement(i32* %41, i32* %42, i32 %44)
  %46 = load i64, i64* @TCL_OK, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i64 @Tcl_EvalObjEx(i32* %47, i32* %48, i32 0)
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %4
  %52 = load i64, i64* @TCL_OK, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @Tcl_GetObjResult(i32* %54)
  %56 = call i64 @Tcl_GetIntFromObj(i32* %53, i32 %55, i32* %9)
  %57 = icmp ne i64 %52, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %51, %4
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @Tcl_BackgroundError(i32* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @Tcl_DecrRefCount(i32* %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @Tcl_DuplicateObj(i32) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32*, i32*, i32) #1

declare dso_local i32 @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i32 @Tcl_NewIntObj(i32) #1

declare dso_local i64 @Tcl_EvalObjEx(i32*, i32*, i32) #1

declare dso_local i64 @Tcl_GetIntFromObj(i32*, i32, i32*) #1

declare dso_local i32 @Tcl_GetObjResult(i32*) #1

declare dso_local i32 @Tcl_BackgroundError(i32*) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
