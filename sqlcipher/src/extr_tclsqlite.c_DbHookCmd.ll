; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_DbHookCmd.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_tclsqlite.c_DbHookCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i64, i32* }

@DbUpdateHandler = common dso_local global i32 0, align 4
@DbRollbackHandler = common dso_local global i32 0, align 4
@DbWalHandler = common dso_local global i32 0, align 4
@DbPreUpdateHandler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32*, i32**)* @DbHookCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DbHookCmd(i32* %0, %struct.TYPE_7__* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32** %3, i32*** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  %13 = load i32**, i32*** %8, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32**, i32*** %8, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @Tcl_SetObjResult(i32* %17, i32* %19)
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32**, i32*** %8, align 8
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @Tcl_DecrRefCount(i32* %25)
  %27 = load i32**, i32*** %8, align 8
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %23, %16
  br label %29

29:                                               ; preds = %28, %4
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32**, i32*** %8, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i64 @Tcl_GetCharLength(i32* %39)
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load i32*, i32** %7, align 8
  %44 = load i32**, i32*** %8, align 8
  store i32* %43, i32** %44, align 8
  %45 = load i32**, i32*** %8, align 8
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @Tcl_IncrRefCount(i32* %46)
  br label %48

48:                                               ; preds = %42, %32
  br label %49

49:                                               ; preds = %48, %29
  %50 = load i32*, i32** %9, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @DbUpdateHandler, align 4
  br label %58

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = call i32 @sqlite3_update_hook(i32* %50, i32 %59, %struct.TYPE_7__* %60)
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @DbRollbackHandler, align 4
  br label %70

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = call i32 @sqlite3_rollback_hook(i32* %62, i32 %71, %struct.TYPE_7__* %72)
  %74 = load i32*, i32** %9, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @DbWalHandler, align 4
  br label %82

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = call i32 @sqlite3_wal_hook(i32* %74, i32 %83, %struct.TYPE_7__* %84)
  ret void
}

declare dso_local i32 @Tcl_SetObjResult(i32*, i32*) #1

declare dso_local i32 @Tcl_DecrRefCount(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @Tcl_GetCharLength(i32*) #1

declare dso_local i32 @Tcl_IncrRefCount(i32*) #1

declare dso_local i32 @sqlite3_update_hook(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3_rollback_hook(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3_wal_hook(i32*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
