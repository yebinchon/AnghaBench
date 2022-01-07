; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_thread.c_tclScriptThread.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_thread.c_tclScriptThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"clock_seconds\00", align 1
@clock_seconds_proc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sqlthread\00", align 1
@sqlthread_proc = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@TCL_ALL_EVENTS = common dso_local global i32 0, align 4
@TCL_DONT_WAIT = common dso_local global i32 0, align 4
@TCL_THREAD_CREATE_RETURN = common dso_local global i32 0, align 4
@blocking_prepare_v2_proc = common dso_local global i32 0, align 4
@blocking_step_proc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tclScriptThread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tclScriptThread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = call i32* (...) @Tcl_CreateInterp()
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @clock_seconds_proc, align 4
  %14 = call i32 @Tcl_CreateObjCommand(i32* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %13, i8* null, i32 0)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @sqlthread_proc, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @Tcl_CreateObjCommand(i32* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %16, i8* %17, i32 0)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @Sqlitetest1_Init(i32* %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @Sqlitetest_mutex_Init(i32* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @Sqlite3_Init(i32* %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @Tcl_Eval(i32* %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32* @Tcl_GetObjResult(i32* %30)
  store i32* %31, i32** %5, align 8
  %32 = call i32* (...) @Tcl_NewObj()
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @Tcl_IncrRefCount(i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @Tcl_IncrRefCount(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @TCL_OK, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %1
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %44 = call i32 @Tcl_ListObjAppendElement(i32* %41, i32* %42, i32* %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @Tcl_ListObjAppendElement(i32* %45, i32* %46, i32* %47)
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @postToParent(%struct.TYPE_3__* %49, i32* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @Tcl_DecrRefCount(i32* %52)
  %54 = call i32* (...) @Tcl_NewObj()
  store i32* %54, i32** %6, align 8
  br label %55

55:                                               ; preds = %40, %1
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32* @Tcl_NewStringObj(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %59 = call i32 @Tcl_ListObjAppendElement(i32* %56, i32* %57, i32* %58)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32* @Tcl_NewStringObj(i8* %64, i32 -1)
  %66 = call i32 @Tcl_ListObjAppendElement(i32* %60, i32* %61, i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @Tcl_ListObjAppendElement(i32* %67, i32* %68, i32* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @postToParent(%struct.TYPE_3__* %71, i32* %72)
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %75 = bitcast %struct.TYPE_3__* %74 to i8*
  %76 = call i32 @ckfree(i8* %75)
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @Tcl_DecrRefCount(i32* %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @Tcl_DecrRefCount(i32* %79)
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @Tcl_DeleteInterp(i32* %81)
  br label %83

83:                                               ; preds = %89, %55
  %84 = load i32, i32* @TCL_ALL_EVENTS, align 4
  %85 = load i32, i32* @TCL_DONT_WAIT, align 4
  %86 = or i32 %84, %85
  %87 = call i64 @Tcl_DoOneEvent(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %83

90:                                               ; preds = %83
  %91 = call i32 @Tcl_ExitThread(i32 0)
  %92 = load i32, i32* @TCL_THREAD_CREATE_RETURN, align 4
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32* @Tcl_CreateInterp(...) #1

declare dso_local i32 @Tcl_CreateObjCommand(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @Sqlitetest1_Init(i32*) #1

declare dso_local i32 @Sqlitetest_mutex_Init(i32*) #1

declare dso_local i32 @Sqlite3_Init(i32*) #1

declare dso_local i32 @Tcl_Eval(i32*, i32) #1

declare dso_local i32* @Tcl_GetObjResult(i32*) #1

declare dso_local i32* @Tcl_NewObj(...) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @Tcl_ListObjAppendElement(i32*, i32*, i32*) #1

declare dso_local i32* @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i32 @postToParent(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

declare dso_local i32 @ckfree(i8*) #1

declare dso_local i32 @Tcl_DeleteInterp(i32*) #1

declare dso_local i64 @Tcl_DoOneEvent(i32) #1

declare dso_local i32 @Tcl_ExitThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
