; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lindexconf.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lindexconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i32, i32*, i32* }
%struct.node = type { i32, i32 }

@LUA_TNUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Invalid key %f\00", align 1
@KEYTYPE_INTEGER = common dso_local global i32 0, align 4
@KEYTYPE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lindexconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lindexconf(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.node*, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call %struct.table* @get_table(i32* %12, i32 1)
  store %struct.table* %13, %struct.table** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_type(i32* %14, i32 2)
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i8* null, i8** %10, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @LUA_TNUMBER, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %1
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_isinteger(i32* %20, i32 2)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_tonumber(i32* %25, i32 2)
  %27 = call i32 @luaL_error(i32* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %19
  %29 = load i32*, i32** %3, align 8
  %30 = call i64 @lua_tointeger(i32* %29, i32 2)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.table*, %struct.table** %4, align 8
  %37 = getelementptr inbounds %struct.table, %struct.table* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sle i32 %35, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.table*, %struct.table** %4, align 8
  %45 = getelementptr inbounds %struct.table, %struct.table* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.table*, %struct.table** %4, align 8
  %48 = getelementptr inbounds %struct.table, %struct.table* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.table*, %struct.table** %4, align 8
  %55 = getelementptr inbounds %struct.table, %struct.table* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @pushvalue(i32* %43, i32 %46, i32 %53, i32* %59)
  store i32 1, i32* %2, align 4
  br label %94

61:                                               ; preds = %34, %28
  %62 = load i32, i32* @KEYTYPE_INTEGER, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %6, align 8
  br label %72

65:                                               ; preds = %1
  %66 = load i32*, i32** %3, align 8
  %67 = call i8* @luaL_checklstring(i32* %66, i32 2, i64* %9)
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i64 @calchash(i8* %68, i64 %69)
  store i64 %70, i64* %6, align 8
  %71 = load i32, i32* @KEYTYPE_STRING, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %65, %61
  %73 = load %struct.table*, %struct.table** %4, align 8
  %74 = load i64, i64* %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i8*, i8** %10, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call %struct.node* @lookup_key(%struct.table* %73, i64 %74, i32 %75, i32 %76, i8* %77, i64 %78)
  store %struct.node* %79, %struct.node** %11, align 8
  %80 = load %struct.node*, %struct.node** %11, align 8
  %81 = icmp ne %struct.node* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %72
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.table*, %struct.table** %4, align 8
  %85 = getelementptr inbounds %struct.table, %struct.table* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.node*, %struct.node** %11, align 8
  %88 = getelementptr inbounds %struct.node, %struct.node* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.node*, %struct.node** %11, align 8
  %91 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 0
  %92 = call i32 @pushvalue(i32* %83, i32 %86, i32 %89, i32* %91)
  store i32 1, i32* %2, align 4
  br label %94

93:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %82, %40, %23
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.table* @get_table(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_isinteger(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @pushvalue(i32*, i32, i32, i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @calchash(i8*, i64) #1

declare dso_local %struct.node* @lookup_key(%struct.table*, i64, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
