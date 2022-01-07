; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_struct.c_b_pack.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lua_struct.c_b_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"string too short\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @b_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b_pack(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @luaL_checkstring(i32* %15, i32 1)
  store i8* %16, i8** %4, align 8
  store i32 2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %17 = call i32 @defaultoptions(%struct.TYPE_5__* %5)
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @lua_pushnil(i32* %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @luaL_buffinit(i32* %20, i32* %3)
  br label %22

22:                                               ; preds = %119, %1
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %123

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @optsize(i32* %32, i32 %33, i8** %4)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @gettoalign(i64 %35, %struct.TYPE_5__* %5, i32 %36, i64 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %7, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %47, %27
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  %46 = icmp sgt i32 %44, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = call i32 @luaL_addchar(i32* %3, i8 signext 0)
  br label %43

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  switch i32 %50, label %115 [
    i32 98, label %51
    i32 66, label %51
    i32 104, label %51
    i32 72, label %51
    i32 108, label %51
    i32 76, label %51
    i32 84, label %51
    i32 105, label %51
    i32 73, label %51
    i32 120, label %59
    i32 102, label %61
    i32 100, label %75
    i32 99, label %88
    i32 115, label %88
  ]

51:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49, %49
  %52 = load i32*, i32** %2, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @putinteger(i32* %52, i32* %3, i32 %53, i32 %56, i64 %57)
  br label %119

59:                                               ; preds = %49
  %60 = call i32 @luaL_addchar(i32* %3, i8 signext 0)
  br label %119

61:                                               ; preds = %49
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = call double @luaL_checknumber(i32* %62, i32 %63)
  %66 = fptrunc double %65 to float
  store float %66, float* %11, align 4
  %67 = bitcast float* %11 to i8*
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @correctbytes(i8* %67, i64 %68, i32 %70)
  %72 = bitcast float* %11 to i8*
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @luaL_addlstring(i32* %3, i8* %72, i64 %73)
  br label %119

75:                                               ; preds = %49
  %76 = load i32*, i32** %2, align 8
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = call double @luaL_checknumber(i32* %76, i32 %77)
  store double %79, double* %12, align 8
  %80 = bitcast double* %12 to i8*
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @correctbytes(i8* %80, i64 %81, i32 %83)
  %85 = bitcast double* %12 to i8*
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @luaL_addlstring(i32* %3, i8* %85, i64 %86)
  br label %119

88:                                               ; preds = %49, %49
  %89 = load i32*, i32** %2, align 8
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  %92 = call i8* @luaL_checklstring(i32* %89, i32 %90, i64* %13)
  store i8* %92, i8** %14, align 8
  %93 = load i64, i64* %9, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i64, i64* %13, align 8
  store i64 %96, i64* %9, align 8
  br label %97

97:                                               ; preds = %95, %88
  %98 = load i32*, i32** %2, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* %9, align 8
  %101 = icmp uge i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @luaL_argcheck(i32* %98, i32 %102, i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %105 = load i8*, i8** %14, align 8
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @luaL_addlstring(i32* %3, i8* %105, i64 %106)
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 115
  br i1 %109, label %110, label %114

110:                                              ; preds = %97
  %111 = call i32 @luaL_addchar(i32* %3, i8 signext 0)
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %9, align 8
  br label %114

114:                                              ; preds = %110, %97
  br label %119

115:                                              ; preds = %49
  %116 = load i32*, i32** %2, align 8
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @controloptions(i32* %116, i32 %117, i8** %4, %struct.TYPE_5__* %5)
  br label %119

119:                                              ; preds = %115, %114, %75, %61, %59, %51
  %120 = load i64, i64* %9, align 8
  %121 = load i64, i64* %7, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %7, align 8
  br label %22

123:                                              ; preds = %22
  %124 = call i32 @luaL_pushresult(i32* %3)
  ret i32 1
}

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @defaultoptions(%struct.TYPE_5__*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i64 @optsize(i32*, i32, i8**) #1

declare dso_local i32 @gettoalign(i64, %struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @luaL_addchar(i32*, i8 signext) #1

declare dso_local i32 @putinteger(i32*, i32*, i32, i32, i64) #1

declare dso_local double @luaL_checknumber(i32*, i32) #1

declare dso_local i32 @correctbytes(i8*, i64, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i64) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @controloptions(i32*, i32, i8**, %struct.TYPE_5__*) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
