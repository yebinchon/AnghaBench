; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_tclSqlCollate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_tclSqlCollate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@TCL_EVAL_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i8*)* @tclSqlCollate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tclSqlCollate(i8* %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %11, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32* @Tcl_NewStringObj(i8* %17, i32 -1)
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32 @Tcl_IncrRefCount(i32* %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32* @Tcl_NewStringObj(i8* %25, i32 %26)
  %28 = call i32 @Tcl_ListObjAppendElement(i32 %23, i32* %24, i32* %27)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32* @Tcl_NewStringObj(i8* %33, i32 %34)
  %36 = call i32 @Tcl_ListObjAppendElement(i32 %31, i32* %32, i32* %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* @TCL_EVAL_DIRECT, align 4
  %42 = call i32 @Tcl_EvalObjEx(i32 %39, i32* %40, i32 %41)
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @Tcl_DecrRefCount(i32* %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @Tcl_GetStringResult(i32 %47)
  %49 = call i32 @atoi(i32 %48)
  ret i32 %49
}

declare dso_local i32* @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32, i32*, i32*) #1

declare dso_local i32 @Tcl_EvalObjEx(i32, i32*, i32) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @Tcl_GetStringResult(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
