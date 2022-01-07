; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_query.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-mongo.c_op_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"require query document\00", align 1
@OP_QUERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @op_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_query(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @luaL_checkinteger(i32* %18, i32 1)
  store i32 %19, i32* %4, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32* @lua_touserdata(i32* %20, i32 6)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @luaL_error(i32* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %2, align 4
  br label %94

27:                                               ; preds = %1
  %28 = load i32*, i32** %3, align 8
  %29 = call i32* @lua_touserdata(i32* %28, i32 7)
  store i32* %29, i32** %6, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @luaL_checkinteger(i32* %30, i32 2)
  store i32 %31, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = call i8* @luaL_checklstring(i32* %32, i32 3, i64* %8)
  store i8* %33, i8** %9, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @luaL_checkinteger(i32* %34, i32 4)
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @luaL_checkinteger(i32* %36, i32 5)
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @luaL_buffinit(i32* %38, i32* %12)
  %40 = call i32 @buffer_create(%struct.buffer* %13)
  %41 = call i32 @reserve_length(%struct.buffer* %13)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @write_int32(%struct.buffer* %13, i32 %42)
  %44 = call i32 @write_int32(%struct.buffer* %13, i32 0)
  %45 = load i32, i32* @OP_QUERY, align 4
  %46 = call i32 @write_int32(%struct.buffer* %13, i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @write_int32(%struct.buffer* %13, i32 %47)
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @write_string(%struct.buffer* %13, i8* %49, i64 %50)
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @write_int32(%struct.buffer* %13, i32 %52)
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @write_int32(%struct.buffer* %13, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @get_length(i32* %56)
  store i32 %57, i32* %15, align 4
  %58 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %59, %60
  store i32 %61, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %27
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @get_length(i32* %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %16, align 4
  br label %70

70:                                               ; preds = %64, %27
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @write_length(%struct.buffer* %13, i32 %71, i32 %72)
  %74 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = getelementptr inbounds %struct.buffer, %struct.buffer* %13, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @luaL_addlstring(i32* %12, i8* %76, i32 %78)
  %80 = call i32 @buffer_destroy(%struct.buffer* %13)
  %81 = load i32*, i32** %5, align 8
  %82 = bitcast i32* %81 to i8*
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @luaL_addlstring(i32* %12, i8* %82, i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %70
  %88 = load i32*, i32** %6, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @luaL_addlstring(i32* %12, i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %70
  %93 = call i32 @luaL_pushresult(i32* %12)
  store i32 1, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %24
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i32 @buffer_create(%struct.buffer*) #1

declare dso_local i32 @reserve_length(%struct.buffer*) #1

declare dso_local i32 @write_int32(%struct.buffer*, i32) #1

declare dso_local i32 @write_string(%struct.buffer*, i8*, i64) #1

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
