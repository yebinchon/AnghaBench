; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_base.c_reader_func.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_base.c_reader_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"too many nested functions\00", align 1
@LJ_ERR_RDRSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, i8*, i64*)* @reader_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @reader_func(%struct.TYPE_8__* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @UNUSED(i8* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = call i32 @luaL_checkstack(%struct.TYPE_8__* %10, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @copyTV(%struct.TYPE_8__* %12, i64 %15, i64 %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = call i32 @lua_call(%struct.TYPE_8__* %21, i32 0, i32 1)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @tvisnil(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i64*, i64** %7, align 8
  store i64 0, i64* %33, align 8
  store i8* null, i8** %4, align 8
  br label %63

34:                                               ; preds = %3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @tvisstr(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @tvisnumber(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %40, %34
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @copyTV(%struct.TYPE_8__* %47, i64 %51, i64 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = call i8* @lua_tolstring(%struct.TYPE_8__* %56, i32 5, i64* %57)
  store i8* %58, i8** %4, align 8
  br label %63

59:                                               ; preds = %40
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = load i32, i32* @LJ_ERR_RDRSTR, align 4
  %62 = call i32 @lj_err_caller(%struct.TYPE_8__* %60, i32 %61)
  store i8* null, i8** %4, align 8
  br label %63

63:                                               ; preds = %59, %46, %32
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i32 @luaL_checkstack(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @copyTV(%struct.TYPE_8__*, i64, i64) #1

declare dso_local i32 @lua_call(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @tvisnil(i64) #1

declare dso_local i64 @tvisstr(i64) #1

declare dso_local i64 @tvisnumber(i64) #1

declare dso_local i8* @lua_tolstring(%struct.TYPE_8__*, i32, i64*) #1

declare dso_local i32 @lj_err_caller(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
