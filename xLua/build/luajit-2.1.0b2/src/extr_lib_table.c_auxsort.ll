; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_table.c_auxsort.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_table.c_auxsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LJ_ERR_TABSORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @auxsort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auxsort(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %9

9:                                                ; preds = %182, %3
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %186

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @lua_rawgeti(i32* %14, i32 1, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @lua_rawgeti(i32* %17, i32 1, i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @sort_comp(i32* %20, i32 -1, i32 -2)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @set2(i32* %24, i32 %25, i32 %26)
  br label %31

28:                                               ; preds = %13
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @lua_pop(i32* %29, i32 2)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %32, %33
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %186

37:                                               ; preds = %31
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %7, align 4
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @lua_rawgeti(i32* %42, i32 1, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @lua_rawgeti(i32* %45, i32 1, i32 %46)
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @sort_comp(i32* %48, i32 -2, i32 -1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %37
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @set2(i32* %52, i32 %53, i32 %54)
  br label %74

56:                                               ; preds = %37
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @lua_pop(i32* %57, i32 1)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @lua_rawgeti(i32* %59, i32 1, i32 %60)
  %62 = load i32*, i32** %4, align 8
  %63 = call i64 @sort_comp(i32* %62, i32 -1, i32 -2)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @set2(i32* %66, i32 %67, i32 %68)
  br label %73

70:                                               ; preds = %56
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @lua_pop(i32* %71, i32 2)
  br label %73

73:                                               ; preds = %70, %65
  br label %74

74:                                               ; preds = %73, %51
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %75, %76
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %186

80:                                               ; preds = %74
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i64 @lua_rawgeti(i32* %81, i32 1, i32 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @lua_pushvalue(i32* %84, i32 -1)
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i64 @lua_rawgeti(i32* %86, i32 1, i32 %88)
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @set2(i32* %90, i32 %91, i32 %93)
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %145, %80
  br label %99

99:                                               ; preds = %115, %98
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  %103 = call i64 @lua_rawgeti(i32* %100, i32 1, i32 %102)
  %104 = load i32*, i32** %4, align 8
  %105 = call i64 @sort_comp(i32* %104, i32 -1, i32 -2)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* @LJ_ERR_TABSORT, align 4
  %114 = call i32 @lj_err_caller(i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i32*, i32** %4, align 8
  %117 = call i32 @lua_pop(i32* %116, i32 1)
  br label %99

118:                                              ; preds = %99
  br label %119

119:                                              ; preds = %135, %118
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %8, align 4
  %123 = call i64 @lua_rawgeti(i32* %120, i32 1, i32 %122)
  %124 = load i32*, i32** %4, align 8
  %125 = call i64 @sort_comp(i32* %124, i32 -3, i32 -1)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %119
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* @LJ_ERR_TABSORT, align 4
  %134 = call i32 @lj_err_caller(i32* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i32*, i32** %4, align 8
  %137 = call i32 @lua_pop(i32* %136, i32 1)
  br label %119

138:                                              ; preds = %119
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32*, i32** %4, align 8
  %144 = call i32 @lua_pop(i32* %143, i32 3)
  br label %150

145:                                              ; preds = %138
  %146 = load i32*, i32** %4, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @set2(i32* %146, i32 %147, i32 %148)
  br label %98

150:                                              ; preds = %142
  %151 = load i32*, i32** %4, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sub nsw i32 %152, 1
  %154 = call i64 @lua_rawgeti(i32* %151, i32 1, i32 %153)
  %155 = load i32*, i32** %4, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i64 @lua_rawgeti(i32* %155, i32 1, i32 %156)
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sub nsw i32 %159, 1
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @set2(i32* %158, i32 %160, i32 %161)
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %5, align 4
  %165 = sub nsw i32 %163, %164
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %7, align 4
  %168 = sub nsw i32 %166, %167
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %150
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %7, align 4
  %173 = sub nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 2
  store i32 %175, i32* %5, align 4
  br label %182

176:                                              ; preds = %150
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %8, align 4
  %181 = sub nsw i32 %180, 2
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %176, %170
  %183 = load i32*, i32** %4, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %7, align 4
  call void @auxsort(i32* %183, i32 %184, i32 %185)
  br label %9

186:                                              ; preds = %79, %36, %9
  ret void
}

declare dso_local i64 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i64 @sort_comp(i32*, i32, i32) #1

declare dso_local i32 @set2(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lj_err_caller(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
