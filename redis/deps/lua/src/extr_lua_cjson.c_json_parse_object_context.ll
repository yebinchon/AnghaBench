; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_parse_object_context.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_parse_object_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@T_OBJ_END = common dso_local global i64 0, align 8
@T_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"object key string\00", align 1
@T_COLON = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"colon\00", align 1
@T_COMMA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"comma or object end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @json_parse_object_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_parse_object_context(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @json_decode_descend(i32* %6, i32* %7, i32 3)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_newtable(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @json_next_token(i32* %11, %struct.TYPE_7__* %5)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @T_OBJ_END, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @json_decode_ascend(i32* %18)
  br label %77

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %74
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @T_STRING, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @json_throw_parse_error(i32* %27, i32* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %5)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @lua_pushlstring(i32* %31, i32 %34, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @json_next_token(i32* %38, %struct.TYPE_7__* %5)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @T_COLON, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load i32*, i32** %3, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @json_throw_parse_error(i32* %45, i32* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %5)
  br label %48

48:                                               ; preds = %44, %30
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @json_next_token(i32* %49, %struct.TYPE_7__* %5)
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @json_process_value(i32* %51, i32* %52, %struct.TYPE_7__* %5)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @lua_rawset(i32* %54, i32 -3)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @json_next_token(i32* %56, %struct.TYPE_7__* %5)
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @T_OBJ_END, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @json_decode_ascend(i32* %63)
  br label %77

65:                                               ; preds = %48
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @T_COMMA, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = call i32 @json_throw_parse_error(i32* %71, i32* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %5)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @json_next_token(i32* %75, %struct.TYPE_7__* %5)
  br label %21

77:                                               ; preds = %62, %17
  ret void
}

declare dso_local i32 @json_decode_descend(i32*, i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @json_next_token(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @json_decode_ascend(i32*) #1

declare dso_local i32 @json_throw_parse_error(i32*, i32*, i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @lua_pushlstring(i32*, i32, i32) #1

declare dso_local i32 @json_process_value(i32*, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
