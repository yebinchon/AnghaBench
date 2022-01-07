; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_delete.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"Invalid param\00", align 1
@OP_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @op_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_delete(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @lua_touserdata(i32* %11, i32 3)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @luaL_error(i32* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %1
  store i64 0, i64* %4, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i8* @luaL_checklstring(i32* %19, i32 1, i64* %4)
  store i8* %20, i8** %5, align 8
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @luaL_buffinit(i32* %21, i32* %6)
  %23 = call i32 @buffer_create(%struct.buffer* %7)
  %24 = call i32 @reserve_length(%struct.buffer* %7)
  store i32 %24, i32* %8, align 4
  %25 = call i32 @write_int32(%struct.buffer* %7, i32 0)
  %26 = call i32 @write_int32(%struct.buffer* %7, i32 0)
  %27 = load i32, i32* @OP_DELETE, align 4
  %28 = call i32 @write_int32(%struct.buffer* %7, i32 %27)
  %29 = call i32 @write_int32(%struct.buffer* %7, i32 0)
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @write_string(%struct.buffer* %7, i8* %30, i64 %31)
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @lua_tointeger(i32* %33, i32 2)
  %35 = call i32 @write_int32(%struct.buffer* %7, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @get_length(i32* %36)
  store i32 %37, i32* %9, align 4
  %38 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @write_length(%struct.buffer* %7, i32 %42, i32 %43)
  %45 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @luaL_addlstring(i32* %6, i8* %47, i32 %49)
  %51 = call i32 @buffer_destroy(%struct.buffer* %7)
  %52 = load i32*, i32** %3, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @luaL_addlstring(i32* %6, i8* %53, i32 %54)
  %56 = call i32 @luaL_pushresult(i32* %6)
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
