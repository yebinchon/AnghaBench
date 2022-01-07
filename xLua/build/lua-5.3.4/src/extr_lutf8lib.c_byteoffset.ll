; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lutf8lib.c_byteoffset.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.4/src/extr_lutf8lib.c_byteoffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"position out of range\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"initial position is a continuation byte\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @byteoffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @byteoffset(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @luaL_checklstring(i32* %7, i32 1, i64* %3)
  store i8* %8, i8** %4, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @luaL_checkinteger(i32* %9, i32 2)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %17

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %15, 1
  br label %17

17:                                               ; preds = %14, %13
  %18 = phi i64 [ 1, %13 ], [ %16, %14 ]
  store i64 %18, i64* %6, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @luaL_optinteger(i32* %19, i32 3, i64 %20)
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @u_posrelat(i32 %21, i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i32*, i32** %2, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp sle i64 1, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp sle i64 %29, %30
  br label %32

32:                                               ; preds = %27, %17
  %33 = phi i1 [ false, %17 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @luaL_argcheck(i32* %24, i32 %34, i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %50, %38
  %40 = load i64, i64* %6, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = call i64 @iscont(i8* %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %42, %39
  %49 = phi i1 [ false, %39 ], [ %47, %42 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i64, i64* %6, align 8
  %52 = add nsw i64 %51, -1
  store i64 %52, i64* %6, align 8
  br label %39

53:                                               ; preds = %48
  br label %121

54:                                               ; preds = %32
  %55 = load i8*, i8** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = call i64 @iscont(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @luaL_error(i32* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %54
  %64 = load i64, i64* %5, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %63
  br label %67

67:                                               ; preds = %90, %66
  %68 = load i64, i64* %5, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* %6, align 8
  %72 = icmp sgt i64 %71, 0
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i1 [ false, %67 ], [ %72, %70 ]
  br i1 %74, label %75, label %93

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i64, i64* %6, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %6, align 8
  %81 = icmp sgt i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = call i64 @iscont(i8* %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %82, %79
  %89 = phi i1 [ false, %79 ], [ %87, %82 ]
  br i1 %89, label %76, label %90

90:                                               ; preds = %88
  %91 = load i64, i64* %5, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %5, align 8
  br label %67

93:                                               ; preds = %73
  br label %120

94:                                               ; preds = %63
  %95 = load i64, i64* %5, align 8
  %96 = add nsw i64 %95, -1
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %116, %94
  %98 = load i64, i64* %5, align 8
  %99 = icmp sgt i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %3, align 8
  %103 = icmp slt i64 %101, %102
  br label %104

104:                                              ; preds = %100, %97
  %105 = phi i1 [ false, %97 ], [ %103, %100 ]
  br i1 %105, label %106, label %119

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %110, %106
  %108 = load i64, i64* %6, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %6, align 8
  br label %110

110:                                              ; preds = %107
  %111 = load i8*, i8** %4, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = call i64 @iscont(i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %107, label %116

116:                                              ; preds = %110
  %117 = load i64, i64* %5, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* %5, align 8
  br label %97

119:                                              ; preds = %104
  br label %120

120:                                              ; preds = %119, %93
  br label %121

121:                                              ; preds = %120, %53
  %122 = load i64, i64* %5, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32*, i32** %2, align 8
  %126 = load i64, i64* %6, align 8
  %127 = add nsw i64 %126, 1
  %128 = call i32 @lua_pushinteger(i32* %125, i64 %127)
  br label %132

129:                                              ; preds = %121
  %130 = load i32*, i32** %2, align 8
  %131 = call i32 @lua_pushnil(i32* %130)
  br label %132

132:                                              ; preds = %129, %124
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @luaL_checkinteger(i32*, i32) #1

declare dso_local i64 @u_posrelat(i32, i64) #1

declare dso_local i32 @luaL_optinteger(i32*, i32, i64) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @iscont(i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i64) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
