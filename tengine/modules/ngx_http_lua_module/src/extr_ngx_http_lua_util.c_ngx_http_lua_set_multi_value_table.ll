; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_set_multi_value_table.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_util.c_ngx_http_lua_set_multi_value_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_lua_set_multi_value_table(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %9, %10
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %7, %2
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @lua_pushvalue(i32* %14, i32 -2)
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @lua_rawget(i32* %16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @lua_isnil(i32* %19, i32 -1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pop(i32* %23, i32 1)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @lua_rawset(i32* %25, i32 %26)
  br label %57

28:                                               ; preds = %13
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_istable(i32* %29, i32 -1)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_createtable(i32* %33, i32 4, i32 0)
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_insert(i32* %35, i32 -2)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_rawseti(i32* %37, i32 -2, i32 1)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @lua_insert(i32* %39, i32 -2)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @lua_rawseti(i32* %41, i32 -2, i32 2)
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @lua_rawset(i32* %43, i32 %44)
  br label %56

46:                                               ; preds = %28
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @lua_insert(i32* %47, i32 -2)
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @lua_objlen(i32* %50, i32 -2)
  %52 = add nsw i32 %51, 1
  %53 = call i32 @lua_rawseti(i32* %49, i32 -2, i32 %52)
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @lua_pop(i32* %54, i32 2)
  br label %56

56:                                               ; preds = %46, %32
  br label %57

57:                                               ; preds = %56, %22
  ret void
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_rawget(i32*, i32) #1

declare dso_local i64 @lua_isnil(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

declare dso_local i32 @lua_istable(i32*, i32) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_objlen(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
