; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_append_data.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_cjson.c_json_append_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"type not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*)* @json_append_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_append_data(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @lua_type(i32* %10, i32 -1)
  switch i32 %11, label %71 [
    i32 129, label %12
    i32 130, label %16
    i32 133, label %21
    i32 128, label %32
    i32 131, label %60
    i32 132, label %63
  ]

12:                                               ; preds = %4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @json_append_string(i32* %13, i32* %14, i32 -1)
  br label %76

16:                                               ; preds = %4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @json_append_number(i32* %17, i32* %18, i32* %19, i32 -1)
  br label %76

21:                                               ; preds = %4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @lua_toboolean(i32* %22, i32 -1)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @strbuf_append_mem(i32* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %31

28:                                               ; preds = %21
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @strbuf_append_mem(i32* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  br label %31

31:                                               ; preds = %28, %25
  br label %76

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @json_check_encode_depth(i32* %35, i32* %36, i32 %37, i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @lua_array_length(i32* %40, i32* %41, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %32
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @json_append_array(i32* %47, i32* %48, i32 %49, i32* %50, i32 %51)
  br label %59

53:                                               ; preds = %32
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @json_append_object(i32* %54, i32* %55, i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %53, %46
  br label %76

60:                                               ; preds = %4
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @strbuf_append_mem(i32* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %76

63:                                               ; preds = %4
  %64 = load i32*, i32** %5, align 8
  %65 = call i32* @lua_touserdata(i32* %64, i32 -1)
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @strbuf_append_mem(i32* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  br label %76

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %4, %70
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @json_encode_exception(i32* %72, i32* %73, i32* %74, i32 -1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %71, %67, %60, %59, %31, %16, %12
  ret void
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @json_append_string(i32*, i32*, i32) #1

declare dso_local i32 @json_append_number(i32*, i32*, i32*, i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @strbuf_append_mem(i32*, i8*, i32) #1

declare dso_local i32 @json_check_encode_depth(i32*, i32*, i32, i32*) #1

declare dso_local i32 @lua_array_length(i32*, i32*, i32*) #1

declare dso_local i32 @json_append_array(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @json_append_object(i32*, i32*, i32, i32*) #1

declare dso_local i32* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @json_encode_exception(i32*, i32*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
