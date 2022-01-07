; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_comp.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LJ_HASFFI = common dso_local global i64 0, align 8
@lj_cont_condf = common dso_local global i32 0, align 4
@lj_cont_condt = common dso_local global i32 0, align 4
@MM_le = common dso_local global i32 0, align 4
@MM_lt = common dso_local global i32 0, align 4
@LJ_52 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @lj_meta_comp(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i64, i64* @LJ_HASFFI, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %4
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @tviscdata(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @tviscdata(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @lj_cont_condf, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @lj_cont_condt, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @MM_le, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @MM_lt, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %11, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i64 @tviscdata(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  br label %56

54:                                               ; preds = %46
  %55 = load i32*, i32** %8, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32* [ %53, %52 ], [ %55, %54 ]
  %58 = load i32, i32* %11, align 4
  %59 = call i32* @lj_meta_lookup(i32* %48, i32* %57, i32 %58)
  store i32* %59, i32** %12, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = call i64 @tvisnil(i32* %60)
  %62 = call i64 @LJ_UNLIKELY(i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %178

65:                                               ; preds = %56
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32* @mmcall(i32* %66, i32 %67, i32* %68, i32* %69, i32* %70)
  store i32* %71, i32** %5, align 8
  br label %183

72:                                               ; preds = %25, %4
  %73 = load i64, i64* @LJ_52, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %7, align 8
  %77 = call i64 @itype(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i64 @itype(i32* %78)
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %168

81:                                               ; preds = %75, %72
  %82 = load i32*, i32** %7, align 8
  %83 = call i64 @tvisstr(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  %86 = load i32*, i32** %8, align 8
  %87 = call i64 @tvisstr(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @strV(i32* %90)
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @strV(i32* %92)
  %94 = call i64 @lj_str_cmp(i32 %91, i32 %93)
  store i64 %94, i64* %13, align 8
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, 2
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load i64, i64* %13, align 8
  %100 = icmp sle i64 %99, 0
  %101 = zext i1 %100 to i32
  br label %106

102:                                              ; preds = %89
  %103 = load i64, i64* %13, align 8
  %104 = icmp slt i64 %103, 0
  %105 = zext i1 %104 to i32
  br label %106

106:                                              ; preds = %102, %98
  %107 = phi i32 [ %101, %98 ], [ %105, %102 ]
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, 1
  %110 = xor i32 %107, %109
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i32*
  store i32* %112, i32** %5, align 8
  br label %183

113:                                              ; preds = %85, %81
  br label %114

114:                                              ; preds = %176, %113
  br label %115

115:                                              ; preds = %114, %154
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 1
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* @lj_cont_condf, align 4
  br label %123

121:                                              ; preds = %115
  %122 = load i32, i32* @lj_cont_condt, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %9, align 4
  %126 = and i32 %125, 2
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @MM_le, align 4
  br label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @MM_lt, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  store i32 %133, i32* %15, align 4
  %134 = load i32*, i32** %6, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %15, align 4
  %137 = call i32* @lj_meta_lookup(i32* %134, i32* %135, i32 %136)
  store i32* %137, i32** %16, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i32* @lj_meta_lookup(i32* %138, i32* %139, i32 %140)
  store i32* %141, i32** %17, align 8
  %142 = load i32*, i32** %16, align 8
  %143 = call i64 @tvisnil(i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %132
  %146 = load i32*, i32** %16, align 8
  %147 = load i32*, i32** %17, align 8
  %148 = call i32 @lj_obj_equal(i32* %146, i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %145, %132
  %151 = load i32, i32* %9, align 4
  %152 = and i32 %151, 2
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i32*, i32** %7, align 8
  store i32* %155, i32** %18, align 8
  %156 = load i32*, i32** %8, align 8
  store i32* %156, i32** %7, align 8
  %157 = load i32*, i32** %18, align 8
  store i32* %157, i32** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = xor i32 %158, 3
  store i32 %159, i32* %9, align 4
  br label %115

160:                                              ; preds = %150
  br label %178

161:                                              ; preds = %145
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %14, align 4
  %164 = load i32*, i32** %16, align 8
  %165 = load i32*, i32** %7, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = call i32* @mmcall(i32* %162, i32 %163, i32* %164, i32* %165, i32* %166)
  store i32* %167, i32** %5, align 8
  br label %183

168:                                              ; preds = %75
  %169 = load i32*, i32** %7, align 8
  %170 = call i64 @tvisbool(i32* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %168
  %173 = load i32*, i32** %8, align 8
  %174 = call i64 @tvisbool(i32* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %114

177:                                              ; preds = %172, %168
  br label %178

178:                                              ; preds = %177, %160, %64
  %179 = load i32*, i32** %6, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32*, i32** %8, align 8
  %182 = call i32 @lj_err_comp(i32* %179, i32* %180, i32* %181)
  store i32* null, i32** %5, align 8
  br label %183

183:                                              ; preds = %178, %161, %106, %65
  %184 = load i32*, i32** %5, align 8
  ret i32* %184
}

declare dso_local i64 @tviscdata(i32*) #1

declare dso_local i32* @lj_meta_lookup(i32*, i32*, i32) #1

declare dso_local i64 @LJ_UNLIKELY(i64) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local i32* @mmcall(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @itype(i32*) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i64 @lj_str_cmp(i32, i32) #1

declare dso_local i32 @strV(i32*) #1

declare dso_local i32 @lj_obj_equal(i32*, i32*) #1

declare dso_local i64 @tvisbool(i32*) #1

declare dso_local i32 @lj_err_comp(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
