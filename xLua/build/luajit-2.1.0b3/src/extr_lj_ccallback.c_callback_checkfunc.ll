; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ccallback.c_callback_checkfunc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_ccallback.c_callback_checkfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64 }

@LJ_64 = common dso_local global i64 0, align 8
@CTSIZE_PTR = common dso_local global i64 0, align 8
@CTF_VARARG = common dso_local global i32 0, align 4
@LUA_MINSTACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, %struct.TYPE_7__*)* @callback_checkfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @callback_checkfunc(i32* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @ctype_isptr(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load i64, i64* @LJ_64, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CTSIZE_PTR, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %138

26:                                               ; preds = %19, %16
  %27 = load i32*, i32** %4, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = call %struct.TYPE_7__* @ctype_rawchild(i32* %27, %struct.TYPE_7__* %28)
  store %struct.TYPE_7__* %29, %struct.TYPE_7__** %5, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @ctype_isfunc(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %137

35:                                               ; preds = %26
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = call %struct.TYPE_7__* @ctype_rawchild(i32* %36, %struct.TYPE_7__* %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %7, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @ctype_isvoid(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %71, label %47

47:                                               ; preds = %35
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @ctype_isenum(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @ctype_isptr(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ctype_isnum(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sle i64 %68, 8
  br i1 %69, label %71, label %70

70:                                               ; preds = %65, %59
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %138

71:                                               ; preds = %65, %53, %47, %35
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CTF_VARARG, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %138

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %131, %79
  %81 = load i64, i64* %8, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %80
  %84 = load i32*, i32** %4, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call %struct.TYPE_7__* @ctype_get(i32* %84, i64 %85)
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %9, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ctype_isattrib(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %131, label %92

92:                                               ; preds = %83
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ctype_isfield(i32 %95)
  %97 = call i32 @lua_assert(i32 %96)
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = call %struct.TYPE_7__* @ctype_rawchild(i32* %98, %struct.TYPE_7__* %99)
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %10, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @ctype_isenum(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %123, label %106

106:                                              ; preds = %92
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @ctype_isptr(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %106
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @ctype_isnum(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %112
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp sle i64 %121, 8
  br i1 %122, label %123, label %129

123:                                              ; preds = %118, %106, %92
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* @LUA_MINSTACK, align 4
  %127 = sub nsw i32 %126, 3
  %128 = icmp sge i32 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123, %118, %112
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %138

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130, %83
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %8, align 8
  br label %80

135:                                              ; preds = %80
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %136, %struct.TYPE_7__** %3, align 8
  br label %138

137:                                              ; preds = %26
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %3, align 8
  br label %138

138:                                              ; preds = %137, %135, %129, %78, %70, %25
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  ret %struct.TYPE_7__* %139
}

declare dso_local i64 @ctype_isptr(i32) #1

declare dso_local %struct.TYPE_7__* @ctype_rawchild(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @ctype_isfunc(i32) #1

declare dso_local i64 @ctype_isvoid(i32) #1

declare dso_local i64 @ctype_isenum(i32) #1

declare dso_local i64 @ctype_isnum(i32) #1

declare dso_local %struct.TYPE_7__* @ctype_get(i32*, i64) #1

declare dso_local i32 @ctype_isattrib(i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ctype_isfield(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
