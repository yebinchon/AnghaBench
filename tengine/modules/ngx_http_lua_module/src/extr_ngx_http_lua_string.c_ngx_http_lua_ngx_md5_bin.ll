; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_md5_bin.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_md5_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MD5_DIGEST_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"expecting one argument\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"slen: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ngx_http_lua_ngx_md5_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_ngx_md5_bin(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32, i32* @MD5_DIGEST_LENGTH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_gettop(i32* %14)
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @luaL_error(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %43

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = call i64 @lua_isnil(i32* %21, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32* bitcast ([1 x i8]* @.str.1 to i32*), i32** %4, align 8
  store i64 0, i64* %5, align 8
  br label %29

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @luaL_checklstring(i32* %26, i32 1, i64* %5)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %4, align 8
  br label %29

29:                                               ; preds = %25, %24
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @dd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = call i32 @ngx_md5_init(i32* %6)
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @ngx_md5_update(i32* %6, i32* %34, i64 %35)
  %37 = call i32 @ngx_md5_final(i32* %13, i32* %6)
  %38 = load i32*, i32** %3, align 8
  %39 = bitcast i32* %13 to i8*
  %40 = mul nuw i64 4, %11
  %41 = trunc i64 %40 to i32
  %42 = call i32 @lua_pushlstring(i32* %38, i8* %39, i32 %41)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %29, %17
  %44 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lua_gettop(i32*) #2

declare dso_local i32 @luaL_error(i32*, i8*) #2

declare dso_local i64 @lua_isnil(i32*, i32) #2

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #2

declare dso_local i32 @dd(i8*, i32) #2

declare dso_local i32 @ngx_md5_init(i32*) #2

declare dso_local i32 @ngx_md5_update(i32*, i32*, i64) #2

declare dso_local i32 @ngx_md5_final(i32*, i32*) #2

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
