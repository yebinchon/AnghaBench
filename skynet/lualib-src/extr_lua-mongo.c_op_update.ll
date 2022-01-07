; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_update.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"Invalid param\00", align 1
@OP_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @op_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_update(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @lua_touserdata(i32* %13, i32 3)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @lua_touserdata(i32* %15, i32 4)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @luaL_error(i32* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19
  store i64 0, i64* %5, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = call i8* @luaL_checklstring(i32* %26, i32 1, i64* %5)
  store i8* %27, i8** %6, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @luaL_buffinit(i32* %28, i32* %7)
  %30 = call i32 @buffer_create(%struct.buffer* %8)
  %31 = call i32 @reserve_length(%struct.buffer* %8)
  store i32 %31, i32* %9, align 4
  %32 = call i32 @write_int32(%struct.buffer* %8, i32 0)
  %33 = call i32 @write_int32(%struct.buffer* %8, i32 0)
  %34 = load i32, i32* @OP_UPDATE, align 4
  %35 = call i32 @write_int32(%struct.buffer* %8, i32 %34)
  %36 = call i32 @write_int32(%struct.buffer* %8, i32 0)
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @write_string(%struct.buffer* %8, i8* %37, i64 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @lua_tointeger(i32* %40, i32 2)
  %42 = call i32 @write_int32(%struct.buffer* %8, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @get_length(i32* %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @get_length(i32* %45)
  store i32 %46, i32* %11, align 4
  %47 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @write_length(%struct.buffer* %8, i32 %53, i32 %54)
  %56 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @luaL_addlstring(i32* %7, i8* %58, i32 %60)
  %62 = call i32 @buffer_destroy(%struct.buffer* %8)
  %63 = load i32*, i32** %3, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @luaL_addlstring(i32* %7, i8* %64, i32 %65)
  %67 = load i32*, i32** %4, align 8
  %68 = bitcast i32* %67 to i8*
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @luaL_addlstring(i32* %7, i8* %68, i32 %69)
  %71 = call i32 @luaL_pushresult(i32* %7)
  ret i32 1
}

declare dso_local i32* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @buffer_create(%struct.buffer*) #1

declare dso_local i32 @reserve_length(%struct.buffer*) #1

declare dso_local i32 @write_int32(%struct.buffer*, i32) #1

declare dso_local i32 @write_string(%struct.buffer*, i8*, i64) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @get_length(i32*) #1

declare dso_local i32 @write_length(%struct.buffer*, i32, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @buffer_destroy(%struct.buffer*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
