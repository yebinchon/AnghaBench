; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cconv.c_cconv_substruct_tab.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cconv.c_cconv_substruct_tab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64 }

@CTF_UNION = common dso_local global i32 0, align 4
@CTA_SUBTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32*, i32*, i64*, i32)* @cconv_substruct_tab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cconv_substruct_tab(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %13, align 8
  br label %21

21:                                               ; preds = %161, %97, %51, %6
  %22 = load i64, i64* %13, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %162

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = load i64, i64* %13, align 8
  %27 = call %struct.TYPE_8__* @ctype_get(i32* %25, i64 %26)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %14, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ctype_isfield(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @ctype_isbitfield(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %139

42:                                               ; preds = %36, %24
  %43 = load i64*, i64** %11, align 8
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %16, align 8
  store i64 %45, i64* %17, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @gcref(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %21

52:                                               ; preds = %42
  %53 = load i64, i64* %16, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* %16, align 8
  %59 = call i64 @lj_tab_getint(i32* %57, i64 %58)
  %60 = inttoptr i64 %59 to i32*
  store i32* %60, i32** %15, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32*, i32** %15, align 8
  %65 = call i64 @tvisnil(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %63, %56
  %68 = load i64, i64* %16, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i64 1, i64* %16, align 8
  br label %56

71:                                               ; preds = %67
  %72 = load i64, i64* %17, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  store i64 -1, i64* %16, align 8
  %75 = load i64*, i64** %11, align 8
  store i64 -1, i64* %75, align 8
  br label %82

76:                                               ; preds = %71
  br label %162

77:                                               ; preds = %63
  %78 = load i64, i64* %16, align 8
  %79 = add nsw i64 %78, 1
  %80 = load i64*, i64** %11, align 8
  store i64 %79, i64* %80, align 8
  br label %99

81:                                               ; preds = %52
  br label %82

82:                                               ; preds = %81, %74
  %83 = load i32*, i32** %10, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @gcref(i32 %86)
  %88 = call i32 @gco2str(i32 %87)
  %89 = call i64 @lj_tab_getstr(i32* %83, i32 %88)
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %15, align 8
  %91 = load i32*, i32** %15, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = load i32*, i32** %15, align 8
  %95 = call i64 @tvisnil(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %82
  br label %21

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %77
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @ctype_isfield(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load i32*, i32** %7, align 8
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %109 = call %struct.TYPE_8__* @ctype_rawchild(i32* %107, %struct.TYPE_8__* %108)
  %110 = load i32*, i32** %9, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32*, i32** %15, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @lj_cconv_ct_tv(i32* %106, %struct.TYPE_8__* %109, i32* %115, i32* %116, i32 %117)
  br label %130

119:                                              ; preds = %99
  %120 = load i32*, i32** %7, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32*, i32** %15, align 8
  %129 = call i32 @lj_cconv_bf_tv(i32* %120, %struct.TYPE_8__* %121, i32* %127, i32* %128)
  br label %130

130:                                              ; preds = %119, %105
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @CTF_UNION, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %162

138:                                              ; preds = %130
  br label %161

139:                                              ; preds = %36
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @CTA_SUBTYPE, align 4
  %144 = call i64 @ctype_isxattrib(i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %160

146:                                              ; preds = %139
  %147 = load i32*, i32** %7, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %150 = call %struct.TYPE_8__* @ctype_rawchild(i32* %148, %struct.TYPE_8__* %149)
  %151 = load i32*, i32** %9, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load i32*, i32** %10, align 8
  %158 = load i64*, i64** %11, align 8
  %159 = load i32, i32* %12, align 4
  call void @cconv_substruct_tab(i32* %147, %struct.TYPE_8__* %150, i32* %156, i32* %157, i64* %158, i32 %159)
  br label %160

160:                                              ; preds = %146, %139
  br label %161

161:                                              ; preds = %160, %138
  br label %21

162:                                              ; preds = %137, %76, %21
  ret void
}

declare dso_local %struct.TYPE_8__* @ctype_get(i32*, i64) #1

declare dso_local i64 @ctype_isfield(i32) #1

declare dso_local i64 @ctype_isbitfield(i32) #1

declare dso_local i32 @gcref(i32) #1

declare dso_local i64 @lj_tab_getint(i32*, i64) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local i64 @lj_tab_getstr(i32*, i32) #1

declare dso_local i32 @gco2str(i32) #1

declare dso_local i32 @lj_cconv_ct_tv(i32*, %struct.TYPE_8__*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @ctype_rawchild(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @lj_cconv_bf_tv(i32*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i64 @ctype_isxattrib(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
