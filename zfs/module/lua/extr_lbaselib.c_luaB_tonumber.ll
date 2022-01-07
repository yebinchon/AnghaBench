; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lbaselib.c_luaB_tonumber.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lbaselib.c_luaB_tonumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"base out of range\00", align 1
@SPACECHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_tonumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_tonumber(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @lua_isnoneornil(i32* %13, i32 2)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_tonumberx(i32* %17, i32 1, i32* %4)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @lua_pushnumber(i32* %22, i32 %23)
  store i32 1, i32* %2, align 4
  br label %137

25:                                               ; preds = %16
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_checkany(i32* %26, i32 1)
  br label %134

28:                                               ; preds = %1
  %29 = load i32*, i32** %3, align 8
  %30 = call i8* @luaL_checklstring(i32* %29, i32 1, i64* %6)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %8, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @luaL_checkint(i32* %34, i32 2)
  store i32 %35, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp sle i32 2, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 36
  br label %42

42:                                               ; preds = %39, %28
  %43 = phi i1 [ false, %28 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @luaL_argcheck(i32* %36, i32 %44, i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* @SPACECHARS, align 4
  %48 = call i32 @strspn(i8* %46, i32 %47)
  %49 = load i8*, i8** %7, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  store i32 1, i32* %10, align 4
  br label %68

59:                                               ; preds = %42
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 43
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %7, align 8
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @isalnum(i8 zeroext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %133

73:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %105, %73
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = call i64 @isdigit(i8 zeroext %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %7, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = sub nsw i32 %82, 48
  br label %91

84:                                               ; preds = %74
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = call signext i8 @toupper(i8 zeroext %86)
  %88 = sext i8 %87 to i32
  %89 = sub nsw i32 %88, 65
  %90 = add nsw i32 %89, 10
  br label %91

91:                                               ; preds = %84, %79
  %92 = phi i32 [ %83, %79 ], [ %90, %84 ]
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %110

97:                                               ; preds = %91
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %11, align 4
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %7, align 8
  br label %105

105:                                              ; preds = %97
  %106 = load i8*, i8** %7, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @isalnum(i8 zeroext %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %74, label %110

110:                                              ; preds = %105, %96
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* @SPACECHARS, align 4
  %113 = call i32 @strspn(i8* %111, i32 %112)
  %114 = load i8*, i8** %7, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %7, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = icmp eq i8* %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %110
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = sub nsw i32 0, %125
  br label %129

127:                                              ; preds = %120
  %128 = load i32, i32* %11, align 4
  br label %129

129:                                              ; preds = %127, %124
  %130 = phi i32 [ %126, %124 ], [ %128, %127 ]
  %131 = call i32 @lua_pushnumber(i32* %121, i32 %130)
  store i32 1, i32* %2, align 4
  br label %137

132:                                              ; preds = %110
  br label %133

133:                                              ; preds = %132, %68
  br label %134

134:                                              ; preds = %133, %25
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @lua_pushnil(i32* %135)
  store i32 1, i32* %2, align 4
  br label %137

137:                                              ; preds = %134, %129, %21
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @lua_tonumberx(i32*, i32, i32*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @luaL_checkany(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @strspn(i8*, i32) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local signext i8 @toupper(i8 zeroext) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
