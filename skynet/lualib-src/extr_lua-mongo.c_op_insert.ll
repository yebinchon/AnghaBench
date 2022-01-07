; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_insert.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i64 }

@OP_INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @op_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_insert(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i8* @luaL_checklstring(i32* %14, i32 2, i64* %3)
  store i8* %15, i8** %4, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @document_length(i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @luaL_buffinit(i32* %18, i32* %6)
  %20 = call i32 @buffer_create(%struct.buffer* %7)
  %21 = call i32 @reserve_length(%struct.buffer* %7)
  store i32 %21, i32* %8, align 4
  %22 = call i32 @write_int32(%struct.buffer* %7, i32 0)
  %23 = call i32 @write_int32(%struct.buffer* %7, i32 0)
  %24 = load i32, i32* @OP_INSERT, align 4
  %25 = call i32 @write_int32(%struct.buffer* %7, i32 %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i32 @lua_tointeger(i32* %26, i32 1)
  %28 = call i32 @write_int32(%struct.buffer* %7, i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @write_string(%struct.buffer* %7, i8* %29, i64 %30)
  %32 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @write_length(%struct.buffer* %7, i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @luaL_addlstring(i32* %6, i8* %41, i32 %43)
  %45 = call i32 @buffer_destroy(%struct.buffer* %7)
  %46 = load i32*, i32** %2, align 8
  %47 = call i64 @lua_isuserdata(i32* %46, i32 3)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %1
  %50 = load i32*, i32** %2, align 8
  %51 = call i64 @lua_touserdata(i32* %50, i32 3)
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %10, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @get_length(i64 %54)
  %56 = call i32 @luaL_addlstring(i32* %6, i8* %53, i32 %55)
  br label %81

57:                                               ; preds = %1
  %58 = load i32*, i32** %2, align 8
  %59 = call i32 @lua_rawlen(i32* %58, i32 3)
  store i32 %59, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %77, %57
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @lua_rawgeti(i32* %65, i32 3, i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = call i64 @lua_touserdata(i32* %68, i32 -1)
  store i64 %69, i64* %13, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = call i32 @lua_pop(i32* %70, i32 1)
  %72 = load i64, i64* %13, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @get_length(i64 %74)
  %76 = call i32 @luaL_addlstring(i32* %6, i8* %73, i32 %75)
  br label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %60

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80, %49
  %82 = call i32 @luaL_pushresult(i32* %6)
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @document_length(i32*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @buffer_create(%struct.buffer*) #1

declare dso_local i32 @reserve_length(%struct.buffer*) #1

declare dso_local i32 @write_int32(%struct.buffer*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @write_string(%struct.buffer*, i8*, i64) #1

declare dso_local i32 @write_length(%struct.buffer*, i32, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @buffer_destroy(%struct.buffer*) #1

declare dso_local i64 @lua_isuserdata(i32*, i32) #1

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @get_length(i64) #1

declare dso_local i32 @lua_rawlen(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
