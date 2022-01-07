; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_rtree.c_Sqlitetestrtree_Init.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_rtree.c_Sqlitetestrtree_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"register_cube_geom\00", align 1
@register_cube_geom = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"register_circle_geom\00", align 1
@register_circle_geom = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sqlitetestrtree_Init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @register_cube_geom, align 4
  %5 = call i32 @Tcl_CreateObjCommand(i32* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %4, i32 0, i32 0)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @register_circle_geom, align 4
  %8 = call i32 @Tcl_CreateObjCommand(i32* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 0, i32 0)
  %9 = load i32, i32* @TCL_OK, align 4
  ret i32 %9
}

declare dso_local i32 @Tcl_CreateObjCommand(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
