; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_lua_cjson_safe_new.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_lua_cjson_safe_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@__const.lua_cjson_safe_new.func = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@json_protect_conversion = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_cjson_safe_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_cjson_safe_new(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [3 x i8*], align 16
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = bitcast [3 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([3 x i8*]* @__const.lua_cjson_safe_new.func to i8*), i64 24, i1 false)
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @lua_cjson_new(i32* %6)
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @lua_pushcfunction(i32* %8, i32 (i32*)* @lua_cjson_safe_new)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @lua_setfield(i32* %10, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %34, %1
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @lua_getfield(i32* %19, i32 -1, i8* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* @json_protect_conversion, align 4
  %27 = call i32 @lua_pushcclosure(i32* %25, i32 %26, i32 1)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @lua_setfield(i32* %28, i32 -2, i8* %32)
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %12

37:                                               ; preds = %12
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @lua_cjson_new(i32*) #2

declare dso_local i32 @lua_pushcfunction(i32*, i32 (i32*)*) #2

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #2

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #2

declare dso_local i32 @lua_pushcclosure(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
