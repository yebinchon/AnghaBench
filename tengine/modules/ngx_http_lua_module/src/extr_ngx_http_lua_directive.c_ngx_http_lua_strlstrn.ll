; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_directive.c_ngx_http_lua_strlstrn.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_directive.c_ngx_http_lua_strlstrn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"testing char '%c' vs '%c'\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"testing against pattern \22%.*s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i64)* @ngx_http_lua_strlstrn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_lua_strlstrn(i32* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %13, i32** %8, align 8
  %14 = load i32, i32* %12, align 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %11, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = sub i64 0, %16
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %7, align 8
  br label %20

20:                                               ; preds = %46, %4
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp uge i32* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32* null, i32** %5, align 8
  br label %55

26:                                               ; preds = %21
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %27, align 4
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i64, i64* %11, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @dd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %21, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %8, align 8
  %44 = ptrtoint i32* %43 to i32
  %45 = call i32 @dd(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %44)
  br label %46

46:                                               ; preds = %40
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @ngx_strncmp(i32* %47, i32* %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %20, label %52

52:                                               ; preds = %46
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 -1
  store i32* %54, i32** %6, align 8
  store i32* %54, i32** %5, align 8
  br label %55

55:                                               ; preds = %52, %25
  %56 = load i32*, i32** %5, align 8
  ret i32* %56
}

declare dso_local i32 @dd(i8*, i32, i32) #1

declare dso_local i64 @ngx_strncmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
