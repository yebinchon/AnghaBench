; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_append_string.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_append_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@char2escape = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @json_append_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_append_string(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @lua_tolstring(i32* %11, i32 %12, i64* %10)
  store i8* %13, i8** %9, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %10, align 8
  %16 = mul i64 %15, 6
  %17 = add i64 %16, 2
  %18 = call i32 @strbuf_ensure_empty_length(i32* %14, i64 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @strbuf_append_char_unsafe(i32* %19, i8 signext 34)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %51, %3
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %10, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %21
  %27 = load i8**, i8*** @char2escape, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %27, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load i32*, i32** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @strbuf_append_string(i32* %39, i8* %40)
  br label %50

42:                                               ; preds = %26
  %43 = load i32*, i32** %5, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @strbuf_append_char_unsafe(i32* %43, i8 signext %48)
  br label %50

50:                                               ; preds = %42, %38
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %21

54:                                               ; preds = %21
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @strbuf_append_char_unsafe(i32* %55, i8 signext 34)
  ret void
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @strbuf_ensure_empty_length(i32*, i64) #1

declare dso_local i32 @strbuf_append_char_unsafe(i32*, i8 signext) #1

declare dso_local i32 @strbuf_append_string(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
