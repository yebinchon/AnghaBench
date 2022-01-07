; ModuleID = '/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ltablib.c_auxsort.c'
source_filename = "/home/carl/AnghaBench/xLua/WebGLPlugins/extr_ltablib.c_auxsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RANLIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @auxsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auxsort(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %11

11:                                               ; preds = %154, %4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %155

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @lua_geti(i32* %16, i32 1, i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @lua_geti(i32* %19, i32 1, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @sort_comp(i32* %22, i32 -1, i32 -2)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @set2(i32* %26, i32 %27, i32 %28)
  br label %33

30:                                               ; preds = %15
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @lua_pop(i32* %31, i32 2)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %155

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* @RANLIMIT, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45, %39
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = sdiv i32 %51, 2
  store i32 %52, i32* %9, align 4
  br label %58

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @choosePivot(i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @lua_geti(i32* %59, i32 1, i32 %60)
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @lua_geti(i32* %62, i32 1, i32 %63)
  %65 = load i32*, i32** %5, align 8
  %66 = call i64 @sort_comp(i32* %65, i32 -2, i32 -1)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @set2(i32* %69, i32 %70, i32 %71)
  br label %91

73:                                               ; preds = %58
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @lua_pop(i32* %74, i32 1)
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @lua_geti(i32* %76, i32 1, i32 %77)
  %79 = load i32*, i32** %5, align 8
  %80 = call i64 @sort_comp(i32* %79, i32 -1, i32 -2)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load i32*, i32** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @set2(i32* %83, i32 %84, i32 %85)
  br label %90

87:                                               ; preds = %73
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @lua_pop(i32* %88, i32 2)
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %68
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %92, %93
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %155

97:                                               ; preds = %91
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @lua_geti(i32* %98, i32 1, i32 %99)
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @lua_pushvalue(i32* %101, i32 -1)
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %104, 1
  %106 = call i32 @lua_geti(i32* %103, i32 1, i32 %105)
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @set2(i32* %107, i32 %108, i32 %110)
  %112 = load i32*, i32** %5, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @partition(i32* %112, i32 %113, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %9, align 4
  %121 = sub nsw i32 %119, %120
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %97
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 %126, 1
  %128 = load i32, i32* %8, align 4
  call void @auxsort(i32* %124, i32 %125, i32 %127, i32 %128)
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %6, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %6, align 4
  br label %145

134:                                              ; preds = %97
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  call void @auxsort(i32* %135, i32 %137, i32 %138, i32 %139)
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %140, %141
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %9, align 4
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %134, %123
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* %6, align 4
  %148 = sub nsw i32 %146, %147
  %149 = sdiv i32 %148, 128
  %150 = load i32, i32* %10, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i32 (...) @l_randomizePivot()
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %152, %145
  br label %11

155:                                              ; preds = %38, %96, %11
  ret void
}

declare dso_local i32 @lua_geti(i32*, i32, i32) #1

declare dso_local i64 @sort_comp(i32*, i32, i32) #1

declare dso_local i32 @set2(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @choosePivot(i32, i32, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @partition(i32*, i32, i32) #1

declare dso_local i32 @l_randomizePivot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
