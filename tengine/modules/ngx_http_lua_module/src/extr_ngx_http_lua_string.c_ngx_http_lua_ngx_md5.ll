; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_md5.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_md5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"expecting one argument\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_md5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_md5(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %11 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = mul nuw i64 4, %12
  %16 = mul i64 2, %15
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @lua_gettop(i32* %18)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaL_error(i32* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %47

24:                                               ; preds = %1
  %25 = load i32*, i32** %3, align 8
  %26 = call i64 @lua_isnil(i32* %25, i32 1)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32* bitcast ([1 x i8]* @.str.1 to i32*), i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %33

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @luaL_checklstring(i32* %30, i32 1, i64* %5)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %4, align 8
  br label %33

33:                                               ; preds = %29, %28
  %34 = call i32 @ngx_md5_init(i32* %6)
  %35 = load i32*, i32** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @ngx_md5_update(i32* %6, i32* %35, i64 %36)
  %38 = call i32 @ngx_md5_final(i32* %14, i32* %6)
  %39 = mul nuw i64 4, %12
  %40 = trunc i64 %39 to i32
  %41 = call i32 @ngx_hex_dump(i32* %17, i32* %14, i32 %40)
  %42 = load i32*, i32** %3, align 8
  %43 = bitcast i32* %17 to i8*
  %44 = mul nuw i64 4, %16
  %45 = trunc i64 %44 to i32
  %46 = call i32 @lua_pushlstring(i32* %42, i8* %43, i32 %45)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %33, %21
  %48 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lua_gettop(i32*) #2

declare dso_local i32 @luaL_error(i32*, i8*) #2

declare dso_local i64 @lua_isnil(i32*, i32) #2

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #2

declare dso_local i32 @ngx_md5_init(i32*) #2

declare dso_local i32 @ngx_md5_update(i32*, i32*, i64) #2

declare dso_local i32 @ngx_md5_final(i32*, i32*) #2

declare dso_local i32 @ngx_hex_dump(i32*, i32*, i32) #2

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
