; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_testCreateCollationDel.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_testCreateCollationDel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@TCL_EVAL_DIRECT = common dso_local global i32 0, align 4
@TCL_EVAL_GLOBAL = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @testCreateCollationDel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testCreateCollationDel(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @TCL_EVAL_DIRECT, align 4
  %14 = load i32, i32* @TCL_EVAL_GLOBAL, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @Tcl_EvalObjEx(i32 %9, i32 %12, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TCL_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @Tcl_BackgroundError(i32 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @Tcl_DecrRefCount(i32 %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @Tcl_DecrRefCount(i32 %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %35 = bitcast %struct.TYPE_2__* %34 to i8*
  %36 = call i32 @sqlite3_free(i8* %35)
  ret void
}

declare dso_local i32 @Tcl_EvalObjEx(i32, i32, i32) #1

declare dso_local i32 @Tcl_BackgroundError(i32) #1

declare dso_local i32 @Tcl_DecrRefCount(i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
