; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_packreq_string.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_packreq_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"name is not a string, it's a %s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"name is too long %s\00", align 1
@TEMP_LENGTH = common dso_local global i32 0, align 4
@MULTI_PART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32)* @packreq_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packreq_string(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i8* @lua_tolstring(i32* %18, i32 1, i64* %12)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load i64, i64* %12, align 8
  %24 = icmp ult i64 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %12, align 8
  %27 = icmp ugt i64 %26, 255
  br i1 %27, label %28, label %45

28:                                               ; preds = %25, %22, %5
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @skynet_free(i8* %29)
  %31 = load i8*, i8** %13, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @lua_type(i32* %36, i32 1)
  %38 = call i8* @lua_typename(i32* %35, i32 %37)
  %39 = call i32 @luaL_error(i32* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %44

40:                                               ; preds = %28
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 @luaL_error(i32* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40, %33
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* @TEMP_LENGTH, align 4
  %47 = zext i32 %46 to i64
  %48 = call i8* @llvm.stacksave()
  store i8* %48, i8** %14, align 8
  %49 = alloca i32, i64 %47, align 16
  store i64 %47, i64* %15, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @MULTI_PART, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %97

53:                                               ; preds = %45
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 6
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %12, align 8
  %59 = add i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @fill_header(i32* %54, i32* %49, i32 %60)
  %62 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 128, i32* %62, align 8
  %63 = load i64, i64* %12, align 8
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds i32, i32* %49, i64 4
  %67 = load i8*, i8** %13, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @memcpy(i32* %66, i8* %67, i64 %68)
  %70 = getelementptr inbounds i32, i32* %49, i64 4
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %53
  br label %78

76:                                               ; preds = %53
  %77 = load i32, i32* %8, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = phi i32 [ 0, %75 ], [ %77, %76 ]
  %80 = call i32 @fill_uint32(i32* %72, i32 %79)
  %81 = getelementptr inbounds i32, i32* %49, i64 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = call i32 @memcpy(i32* %83, i8* %84, i64 %86)
  %88 = load i32*, i32** %7, align 8
  %89 = bitcast i32* %49 to i8*
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 8
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @lua_pushlstring(i32* %88, i8* %89, i32 %95)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %137

97:                                               ; preds = %45
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* @MULTI_PART, align 4
  %101 = sdiv i32 %99, %100
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = load i64, i64* %12, align 8
  %105 = add i64 10, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @fill_header(i32* %103, i32* %49, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 193, i32 129
  %112 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %111, i32* %112, align 8
  %113 = load i64, i64* %12, align 8
  %114 = trunc i64 %113 to i32
  %115 = getelementptr inbounds i32, i32* %49, i64 3
  store i32 %114, i32* %115, align 4
  %116 = getelementptr inbounds i32, i32* %49, i64 4
  %117 = load i8*, i8** %13, align 8
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @memcpy(i32* %116, i8* %117, i64 %118)
  %120 = getelementptr inbounds i32, i32* %49, i64 4
  %121 = load i64, i64* %12, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @fill_uint32(i32* %122, i32 %123)
  %125 = getelementptr inbounds i32, i32* %49, i64 8
  %126 = load i64, i64* %12, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @fill_uint32(i32* %127, i32 %128)
  %130 = load i32*, i32** %7, align 8
  %131 = bitcast i32* %49 to i8*
  %132 = load i64, i64* %12, align 8
  %133 = add i64 12, %132
  %134 = trunc i64 %133 to i32
  %135 = call i32 @lua_pushlstring(i32* %130, i8* %131, i32 %134)
  %136 = load i32, i32* %17, align 4
  store i32 %136, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %137

137:                                              ; preds = %97, %78
  %138 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @skynet_free(i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

declare dso_local i8* @lua_typename(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fill_header(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @fill_uint32(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
