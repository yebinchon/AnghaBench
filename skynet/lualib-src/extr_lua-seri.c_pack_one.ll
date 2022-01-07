; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_pack_one.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-seri.c_pack_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.write_block = type { i32 }

@MAX_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"serialize can't pack too depth table\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unsupport type %s to serialize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.write_block*, i32, i32)* @pack_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_one(i32* %0, %struct.write_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.write_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.write_block* %1, %struct.write_block** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @MAX_DEPTH, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.write_block*, %struct.write_block** %6, align 8
  %19 = call i32 @wb_free(%struct.write_block* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 (i32*, i8*, ...) @luaL_error(i32* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %17, %4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @lua_type(i32* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  switch i32 %26, label %87 [
    i32 131, label %27
    i32 130, label %30
    i32 133, label %50
    i32 129, label %56
    i32 132, label %65
    i32 128, label %71
  ]

27:                                               ; preds = %22
  %28 = load %struct.write_block*, %struct.write_block** %6, align 8
  %29 = call i32 @wb_nil(%struct.write_block* %28)
  br label %95

30:                                               ; preds = %22
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @lua_isinteger(i32* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @lua_tointeger(i32* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.write_block*, %struct.write_block** %6, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @wb_integer(%struct.write_block* %39, i32 %40)
  br label %49

42:                                               ; preds = %30
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @lua_tonumber(i32* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.write_block*, %struct.write_block** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @wb_real(%struct.write_block* %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %35
  br label %95

50:                                               ; preds = %22
  %51 = load %struct.write_block*, %struct.write_block** %6, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @lua_toboolean(i32* %52, i32 %53)
  %55 = call i32 @wb_boolean(%struct.write_block* %51, i32 %54)
  br label %95

56:                                               ; preds = %22
  store i64 0, i64* %12, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @lua_tolstring(i32* %57, i32 %58, i64* %12)
  store i8* %59, i8** %13, align 8
  %60 = load %struct.write_block*, %struct.write_block** %6, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i64, i64* %12, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @wb_string(%struct.write_block* %60, i8* %61, i32 %63)
  br label %95

65:                                               ; preds = %22
  %66 = load %struct.write_block*, %struct.write_block** %6, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @lua_touserdata(i32* %67, i32 %68)
  %70 = call i32 @wb_pointer(%struct.write_block* %66, i32 %69)
  br label %95

71:                                               ; preds = %22
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @lua_gettop(i32* %75)
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %74, %71
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.write_block*, %struct.write_block** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 @wb_table(i32* %81, %struct.write_block* %82, i32 %83, i32 %85)
  br label %95

87:                                               ; preds = %22
  %88 = load %struct.write_block*, %struct.write_block** %6, align 8
  %89 = call i32 @wb_free(%struct.write_block* %88)
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @lua_typename(i32* %91, i32 %92)
  %94 = call i32 (i32*, i8*, ...) @luaL_error(i32* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %87, %80, %65, %56, %50, %49, %27
  ret void
}

declare dso_local i32 @wb_free(%struct.write_block*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @wb_nil(%struct.write_block*) #1

declare dso_local i32 @lua_isinteger(i32*, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @wb_integer(%struct.write_block*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @wb_real(%struct.write_block*, i32) #1

declare dso_local i32 @wb_boolean(%struct.write_block*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @wb_string(%struct.write_block*, i8*, i32) #1

declare dso_local i32 @wb_pointer(%struct.write_block*, i32) #1

declare dso_local i32 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @wb_table(i32*, %struct.write_block*, i32, i32) #1

declare dso_local i32 @lua_typename(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
