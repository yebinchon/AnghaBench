; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_ldesdecode.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-crypt.c_ldesdecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"Invalid des crypt text length %d\00", align 1
@SMALL_CHUNK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid des crypt text\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ldesdecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldesdecode(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [32 x i32], align 16
  %5 = alloca [32 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 0
  %16 = call i32 @des_key(i32* %14, i32* %15)
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %38, %1
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 32
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 30, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %27
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 31, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32 x i32], [32 x i32]* %4, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 %36
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 2
  store i32 %40, i32* %6, align 4
  br label %17

41:                                               ; preds = %17
  store i64 0, i64* %7, align 8
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @luaL_checklstring(i32* %42, i32 2, i64* %7)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = and i64 %45, 7
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48, %41
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* %7, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 (i32*, i8*, ...) @luaL_error(i32* %52, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 %55, i32* %2, align 4
  br label %141

56:                                               ; preds = %48
  %57 = load i32, i32* @SMALL_CHUNK, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %9, align 8
  %60 = alloca i32, i64 %58, align 16
  store i64 %58, i64* %10, align 8
  store i32* %60, i32** %11, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i32, i32* @SMALL_CHUNK, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32*, i32** %3, align 8
  %67 = load i64, i64* %7, align 8
  %68 = call i32* @lua_newuserdata(i32* %66, i64 %67)
  store i32* %68, i32** %11, align 8
  br label %69

69:                                               ; preds = %65, %56
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %86, %69
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %7, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = call i32 @des_crypt(i32* %76, i32* %80, i32* %84)
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 8
  store i32 %88, i32* %6, align 4
  br label %70

89:                                               ; preds = %70
  store i32 1, i32* %12, align 4
  %90 = load i64, i64* %7, align 8
  %91 = sub i64 %90, 1
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %121, %89
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %7, align 8
  %97 = sub i64 %96, 8
  %98 = icmp uge i64 %95, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %93
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %120

109:                                              ; preds = %99
  %110 = load i32*, i32** %11, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 128
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %124

117:                                              ; preds = %109
  %118 = load i32*, i32** %3, align 8
  %119 = call i32 (i32*, i8*, ...) @luaL_error(i32* %118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %119, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %6, align 4
  br label %93

124:                                              ; preds = %116, %93
  %125 = load i32, i32* %12, align 4
  %126 = icmp sgt i32 %125, 8
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32*, i32** %3, align 8
  %129 = call i32 (i32*, i8*, ...) @luaL_error(i32* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %129, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

130:                                              ; preds = %124
  %131 = load i32*, i32** %3, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = bitcast i32* %132 to i8*
  %134 = load i64, i64* %7, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = sub i64 %134, %136
  %138 = call i32 @lua_pushlstring(i32* %131, i8* %133, i64 %137)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %139

139:                                              ; preds = %130, %127, %117
  %140 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %140)
  br label %141

141:                                              ; preds = %139, %51
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @des_key(i32*, i32*) #1

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @lua_newuserdata(i32*, i64) #1

declare dso_local i32 @des_crypt(i32*, i32*, i32*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
