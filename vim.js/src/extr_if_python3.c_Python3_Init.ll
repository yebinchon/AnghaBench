; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_if_python3.c_Python3_Init.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_if_python3.c_Python3_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@py3initialised = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vim\00", align 1
@Py3Init_vim = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"__main__\00", align 1
@globals = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [102 x i8] c"import vim; import sys; sys.path = list(filter(lambda x: not x.endswith('must>not&exist'), sys.path))\00", align 1
@PYTHON3_HOME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @Python3_Init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Python3_Init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @py3initialised, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @init_structs()
  %6 = load i32, i32* @Py3Init_vim, align 4
  %7 = call i32 @PyImport_AppendInittab(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 (...) @Py_Initialize()
  %9 = call i32 (...) @PyEval_InitThreads()
  %10 = call i64 (...) @PythonIO_Init_io()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %19

13:                                               ; preds = %4
  %14 = call i32 @PyImport_AddModule(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @PyModule_GetDict(i32 %14)
  store i32 %15, i32* @globals, align 4
  %16 = call i32 @PyRun_SimpleString(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0))
  %17 = call i32 (...) @PyEval_SaveThread()
  store i32 1, i32* @py3initialised, align 4
  br label %18

18:                                               ; preds = %13, %0
  store i32 0, i32* %1, align 4
  br label %21

19:                                               ; preds = %12
  %20 = call i32 (...) @PythonIO_Flush()
  store i32 -1, i32* %1, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @init_structs(...) #1

declare dso_local i32 @PyImport_AppendInittab(i8*, i32) #1

declare dso_local i32 @Py_Initialize(...) #1

declare dso_local i32 @PyEval_InitThreads(...) #1

declare dso_local i64 @PythonIO_Init_io(...) #1

declare dso_local i32 @PyModule_GetDict(i32) #1

declare dso_local i32 @PyImport_AddModule(i8*) #1

declare dso_local i32 @PyRun_SimpleString(i8*) #1

declare dso_local i32 @PyEval_SaveThread(...) #1

declare dso_local i32 @PythonIO_Flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
