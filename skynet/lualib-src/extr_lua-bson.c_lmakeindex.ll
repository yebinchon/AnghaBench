; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lmakeindex.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-bson.c_lmakeindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bson_reader = type { i64, i32*, i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"bson\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid bson type : %d\00", align 1
@BSON_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lmakeindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmakeindex(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bson_reader, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32* @luaL_checkudata(i32* %17, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  store i32* %19, i32** %4, align 8
  %20 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %5, i32 0, i32 0
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = ptrtoint i32* %22 to i64
  store i64 %23, i64* %20, align 8
  %24 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %5, i32 0, i32 1
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @get_length(i32* %25)
  %27 = sub nsw i32 %26, 5
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %24, align 8
  %30 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %5, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %5, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @lua_newtable(i32* %32)
  br label %34

34:                                               ; preds = %116, %82, %1
  %35 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %117

39:                                               ; preds = %34
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @read_byte(i32* %40, %struct.bson_reader* %5)
  store i32 %41, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = call i8* @read_cstring(i32* %42, %struct.bson_reader* %5, i64* %7)
  store i8* %43, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  switch i32 %44, label %82 [
    i32 138, label %45
    i32 128, label %45
    i32 142, label %45
    i32 132, label %45
    i32 144, label %46
    i32 137, label %47
    i32 129, label %47
    i32 130, label %47
    i32 143, label %53
    i32 146, label %53
    i32 140, label %53
    i32 145, label %60
    i32 133, label %67
    i32 135, label %68
    i32 136, label %68
    i32 134, label %68
    i32 131, label %69
    i32 139, label %74
    i32 141, label %75
  ]

45:                                               ; preds = %39, %39, %39, %39
  store i32 8, i32* %9, align 4
  br label %88

46:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %88

47:                                               ; preds = %39, %39, %39
  %48 = load i32*, i32** %2, align 8
  %49 = call i32 @read_int32(i32* %48, %struct.bson_reader* %5)
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @read_bytes(i32* %50, %struct.bson_reader* %5, i32 %51)
  br label %88

53:                                               ; preds = %39, %39, %39
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @read_int32(i32* %54, %struct.bson_reader* %5)
  store i32 %55, i32* %11, align 4
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %57, 4
  %59 = call i32 @read_bytes(i32* %56, %struct.bson_reader* %5, i32 %58)
  br label %88

60:                                               ; preds = %39
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @read_int32(i32* %61, %struct.bson_reader* %5)
  store i32 %62, i32* %12, align 4
  %63 = load i32*, i32** %2, align 8
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @read_bytes(i32* %63, %struct.bson_reader* %5, i32 %65)
  br label %88

67:                                               ; preds = %39
  store i32 12, i32* %9, align 4
  br label %88

68:                                               ; preds = %39, %39, %39
  br label %88

69:                                               ; preds = %39
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %70 = load i32*, i32** %2, align 8
  %71 = call i8* @read_cstring(i32* %70, %struct.bson_reader* %5, i64* %13)
  %72 = load i32*, i32** %2, align 8
  %73 = call i8* @read_cstring(i32* %72, %struct.bson_reader* %5, i64* %14)
  br label %88

74:                                               ; preds = %39
  store i32 4, i32* %9, align 4
  br label %88

75:                                               ; preds = %39
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @read_int32(i32* %76, %struct.bson_reader* %5)
  store i32 %77, i32* %15, align 4
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 12
  %81 = call i32 @read_bytes(i32* %78, %struct.bson_reader* %5, i32 %80)
  br label %88

82:                                               ; preds = %39
  %83 = load i32*, i32** %2, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @luaL_error(i32* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32*, i32** %2, align 8
  %87 = call i32 @lua_pop(i32* %86, i32 1)
  br label %34

88:                                               ; preds = %75, %74, %69, %68, %67, %60, %53, %47, %46, %45
  %89 = load i32, i32* %9, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %116

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = getelementptr inbounds %struct.bson_reader, %struct.bson_reader* %5, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32*, i32** %4, align 8
  %96 = ptrtoint i32* %94 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @BSON_TYPE_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = or i32 %92, %102
  store i32 %103, i32* %16, align 4
  %104 = load i32*, i32** %2, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @read_bytes(i32* %104, %struct.bson_reader* %5, i32 %105)
  %107 = load i32*, i32** %2, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @lua_pushlstring(i32* %107, i8* %108, i64 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = load i32, i32* %16, align 4
  %113 = call i32 @lua_pushinteger(i32* %111, i32 %112)
  %114 = load i32*, i32** %2, align 8
  %115 = call i32 @lua_rawset(i32* %114, i32 -3)
  br label %116

116:                                              ; preds = %91, %88
  br label %34

117:                                              ; preds = %38
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @lua_setuservalue(i32* %118, i32 1)
  %120 = load i32*, i32** %2, align 8
  %121 = call i32 @lua_settop(i32* %120, i32 1)
  ret i32 1
}

declare dso_local i32* @luaL_checkudata(i32*, i32, i8*) #1

declare dso_local i32 @get_length(i32*) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @read_byte(i32*, %struct.bson_reader*) #1

declare dso_local i8* @read_cstring(i32*, %struct.bson_reader*, i64*) #1

declare dso_local i32 @read_int32(i32*, %struct.bson_reader*) #1

declare dso_local i32 @read_bytes(i32*, %struct.bson_reader*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_setuservalue(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
