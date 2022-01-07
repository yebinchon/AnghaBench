; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lib.c_lib_create_table.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_lib.c_lib_create_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"_LOADED\00", align 1
@LUA_GLOBALSINDEX = common dso_local global i32 0, align 4
@LJ_ERR_BADMODN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i8*, i32)* @lib_create_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lib_create_table(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %71

9:                                                ; preds = %3
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %12 = call i32* @luaL_findtable(%struct.TYPE_9__* %10, i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 16)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @lua_getfield(%struct.TYPE_9__* %13, i32 -1, i8* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @tvistab(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %56, label %22

22:                                               ; preds = %9
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = load i32, i32* @LUA_GLOBALSINDEX, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32* @luaL_findtable(%struct.TYPE_9__* %27, i32 %28, i8* %29, i32 %30)
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = load i32, i32* @LJ_ERR_BADMODN, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @lj_err_callerv(%struct.TYPE_9__* %34, i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %33, %22
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %45, 1
  %47 = call i32* @tabV(i64 %46)
  %48 = call i32 @settabV(%struct.TYPE_9__* %39, i64 %42, i32* %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @lua_setfield(%struct.TYPE_9__* %53, i32 -3, i8* %54)
  br label %56

56:                                               ; preds = %38, %9
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, -1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %64, 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32* @tabV(i64 %68)
  %70 = call i32 @settabV(%struct.TYPE_9__* %61, i64 %65, i32* %69)
  br label %75

71:                                               ; preds = %3
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @lua_createtable(%struct.TYPE_9__* %72, i32 0, i32 %73)
  br label %75

75:                                               ; preds = %71, %56
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 1
  %80 = call i32* @tabV(i64 %79)
  ret i32* %80
}

declare dso_local i32* @luaL_findtable(%struct.TYPE_9__*, i32, i8*, i32) #1

declare dso_local i32 @lua_getfield(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @tvistab(i64) #1

declare dso_local i32 @lj_err_callerv(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @settabV(%struct.TYPE_9__*, i64, i32*) #1

declare dso_local i32* @tabV(i64) #1

declare dso_local i32 @lua_setfield(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i32 @lua_createtable(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
