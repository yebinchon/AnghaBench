; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_escape_sql_str.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_string.c_ngx_http_lua_ngx_escape_sql_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i64)* @ngx_http_lua_ngx_escape_sql_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_lua_ngx_escape_sql_str(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 128
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %26 [
    i32 0, label %23
    i32 8, label %23
    i32 10, label %23
    i32 13, label %23
    i32 9, label %23
    i32 26, label %23
    i32 92, label %23
    i32 39, label %23
    i32 34, label %23
  ]

23:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %8, align 8
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %23
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %7, align 8
  br label %12

33:                                               ; preds = %12
  %34 = load i64, i64* %8, align 8
  store i64 %34, i64* %4, align 8
  br label %111

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %103, %35
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %108

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 128
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %98

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %92 [
    i32 0, label %47
    i32 8, label %52
    i32 10, label %57
    i32 13, label %62
    i32 9, label %67
    i32 26, label %72
    i32 92, label %77
    i32 39, label %82
    i32 34, label %87
  ]

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %5, align 8
  store i32 92, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %5, align 8
  store i32 48, i32* %50, align 4
  br label %97

52:                                               ; preds = %44
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %5, align 8
  store i32 92, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %5, align 8
  store i32 98, i32* %55, align 4
  br label %97

57:                                               ; preds = %44
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %5, align 8
  store i32 92, i32* %58, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %5, align 8
  store i32 110, i32* %60, align 4
  br label %97

62:                                               ; preds = %44
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %5, align 8
  store i32 92, i32* %63, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %5, align 8
  store i32 114, i32* %65, align 4
  br label %97

67:                                               ; preds = %44
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  store i32 92, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %5, align 8
  store i32 116, i32* %70, align 4
  br label %97

72:                                               ; preds = %44
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %5, align 8
  store i32 92, i32* %73, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %5, align 8
  store i32 90, i32* %75, align 4
  br label %97

77:                                               ; preds = %44
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %5, align 8
  store i32 92, i32* %78, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %5, align 8
  store i32 92, i32* %80, align 4
  br label %97

82:                                               ; preds = %44
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %5, align 8
  store i32 92, i32* %83, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %5, align 8
  store i32 39, i32* %85, align 4
  br label %97

87:                                               ; preds = %44
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %5, align 8
  store i32 92, i32* %88, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %5, align 8
  store i32 34, i32* %90, align 4
  br label %97

92:                                               ; preds = %44
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  br label %97

97:                                               ; preds = %92, %87, %82, %77, %72, %67, %62, %57, %52, %47
  br label %103

98:                                               ; preds = %39
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %5, align 8
  store i32 %100, i32* %101, align 4
  br label %103

103:                                              ; preds = %98, %97
  %104 = load i32*, i32** %6, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = add i64 %106, -1
  store i64 %107, i64* %7, align 8
  br label %36

108:                                              ; preds = %36
  %109 = load i32*, i32** %5, align 8
  %110 = ptrtoint i32* %109 to i64
  store i64 %110, i64* %4, align 8
  br label %111

111:                                              ; preds = %108, %33
  %112 = load i64, i64* %4, align 8
  ret i64 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
