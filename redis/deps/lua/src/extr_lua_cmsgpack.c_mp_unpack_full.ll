; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_unpack_full.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cmsgpack.c_mp_unpack_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [61 x i8] c"Invalid request to unpack with offset of %d and limit of %d.\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Start offset %d greater than input length %d.\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@MP_CUR_ERROR_EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Missing bytes in input.\00", align 1
@MP_CUR_ERROR_BADFMT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Bad data format in input.\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"in function mp_unpack_full\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_unpack_full(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ false, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = call i8* @luaL_checklstring(i32* %23, i32 1, i64* %8)
  store i8* %24, i8** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %20
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (i32*, i8*, ...) @luaL_error(i32* %31, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33)
  store i32 %34, i32* %4, align 4
  br label %121

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %8, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i32 (i32*, i8*, ...) @luaL_error(i32* %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %43)
  store i32 %44, i32* %4, align 4
  br label %121

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @INT_MAX, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %56, %58
  %60 = call i32 @mp_cur_init(%struct.TYPE_4__* %10, i8* %55, i64 %59)
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %91, %51
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp slt i32 %66, %67
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i1 [ false, %61 ], [ %68, %65 ]
  br i1 %70, label %71, label %94

71:                                               ; preds = %69
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @mp_decode_to_lua_type(i32* %72, %struct.TYPE_4__* %10)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MP_CUR_ERROR_EOF, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 (i32*, i8*, ...) @luaL_error(i32* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %80, i32* %4, align 4
  br label %121

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MP_CUR_ERROR_BADFMT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 (i32*, i8*, ...) @luaL_error(i32* %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 %88, i32* %4, align 4
  br label %121

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %61

94:                                               ; preds = %69
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %119, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %98, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @luaL_checkstack(i32* %103, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %112

110:                                              ; preds = %97
  %111 = load i32, i32* %13, align 4
  br label %112

112:                                              ; preds = %110, %109
  %113 = phi i32 [ -1, %109 ], [ %111, %110 ]
  %114 = call i32 @lua_pushinteger(i32* %105, i32 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @lua_insert(i32* %115, i32 2)
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %112, %94
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %86, %78, %40, %30
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i32 @mp_cur_init(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i32 @mp_decode_to_lua_type(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
