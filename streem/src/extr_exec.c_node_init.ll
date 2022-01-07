; ModuleID = '/home/carl/AnghaBench/streem/src/extr_exec.c_node_init.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_exec.c_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@STRM_IO_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@STRM_IO_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"puts\00", align 1
@exec_puts = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@exec_eq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@exec_neq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@exec_bar = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"fread\00", align 1
@exec_fread = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1
@exec_fwrite = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@exec_exit = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@exec_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @node_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @strm_init(i32* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = load i32, i32* @STRM_IO_READ, align 4
  %7 = call i32 @strm_io_new(i32 0, i32 %6)
  %8 = call i32 @strm_var_def(i32* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @STRM_IO_WRITE, align 4
  %11 = call i32 @strm_io_new(i32 1, i32 %10)
  %12 = call i32 @strm_var_def(i32* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @STRM_IO_WRITE, align 4
  %15 = call i32 @strm_io_new(i32 2, i32 %14)
  %16 = call i32 @strm_var_def(i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* @exec_puts, align 4
  %19 = call i32 @strm_cfunc_value(i32 %18)
  %20 = call i32 @strm_var_def(i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @exec_puts, align 4
  %23 = call i32 @strm_cfunc_value(i32 %22)
  %24 = call i32 @strm_var_def(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @exec_eq, align 4
  %27 = call i32 @strm_cfunc_value(i32 %26)
  %28 = call i32 @strm_var_def(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @exec_neq, align 4
  %31 = call i32 @strm_cfunc_value(i32 %30)
  %32 = call i32 @strm_var_def(i32* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* @exec_bar, align 4
  %35 = call i32 @strm_cfunc_value(i32 %34)
  %36 = call i32 @strm_var_def(i32* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i32, i32* @exec_fread, align 4
  %39 = call i32 @strm_cfunc_value(i32 %38)
  %40 = call i32 @strm_var_def(i32* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @exec_fwrite, align 4
  %43 = call i32 @strm_cfunc_value(i32 %42)
  %44 = call i32 @strm_var_def(i32* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @exec_exit, align 4
  %47 = call i32 @strm_cfunc_value(i32 %46)
  %48 = call i32 @strm_var_def(i32* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = load i32, i32* @exec_match, align 4
  %51 = call i32 @strm_cfunc_value(i32 %50)
  %52 = call i32 @strm_var_def(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %51)
  ret void
}

declare dso_local i32 @strm_init(i32*) #1

declare dso_local i32 @strm_var_def(i32*, i8*, i32) #1

declare dso_local i32 @strm_io_new(i32, i32) #1

declare dso_local i32 @strm_cfunc_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
