; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_autoext.c_Sqlitetest_autoext_Init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_autoext.c_Sqlitetest_autoext_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"sqlite3_auto_extension_sqr\00", align 1
@autoExtSqrObjCmd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"sqlite3_auto_extension_cube\00", align 1
@autoExtCubeObjCmd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"sqlite3_auto_extension_broken\00", align 1
@autoExtBrokenObjCmd = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"sqlite3_cancel_auto_extension_sqr\00", align 1
@cancelAutoExtSqrObjCmd = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"sqlite3_cancel_auto_extension_cube\00", align 1
@cancelAutoExtCubeObjCmd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"sqlite3_cancel_auto_extension_broken\00", align 1
@cancelAutoExtBrokenObjCmd = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"sqlite3_reset_auto_extension\00", align 1
@resetAutoExtObjCmd = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sqlitetest_autoext_Init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @autoExtSqrObjCmd, align 4
  %5 = call i32 @Tcl_CreateObjCommand(i32* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %4, i32 0, i32 0)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @autoExtCubeObjCmd, align 4
  %8 = call i32 @Tcl_CreateObjCommand(i32* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 0, i32 0)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @autoExtBrokenObjCmd, align 4
  %11 = call i32 @Tcl_CreateObjCommand(i32* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 0, i32 0)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @cancelAutoExtSqrObjCmd, align 4
  %14 = call i32 @Tcl_CreateObjCommand(i32* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %13, i32 0, i32 0)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @cancelAutoExtCubeObjCmd, align 4
  %17 = call i32 @Tcl_CreateObjCommand(i32* %15, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %16, i32 0, i32 0)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* @cancelAutoExtBrokenObjCmd, align 4
  %20 = call i32 @Tcl_CreateObjCommand(i32* %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %19, i32 0, i32 0)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @resetAutoExtObjCmd, align 4
  %23 = call i32 @Tcl_CreateObjCommand(i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %22, i32 0, i32 0)
  %24 = load i32, i32* @TCL_OK, align 4
  ret i32 %24
}

declare dso_local i32 @Tcl_CreateObjCommand(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
