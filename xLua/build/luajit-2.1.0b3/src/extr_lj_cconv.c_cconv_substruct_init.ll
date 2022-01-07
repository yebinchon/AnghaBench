; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cconv.c_cconv_substruct_init.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_cconv.c_cconv_substruct_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64 }

@CTF_UNION = common dso_local global i32 0, align 4
@CTA_SUBTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_8__*, i32*, i32*, i32, i32*)* @cconv_substruct_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cconv_substruct_init(i32* %0, %struct.TYPE_8__* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %13, align 8
  br label %19

19:                                               ; preds = %132, %48, %6
  %20 = load i64, i64* %13, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %133

22:                                               ; preds = %19
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call %struct.TYPE_8__* @ctype_get(i32* %23, i64 %24)
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %14, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %13, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @ctype_isfield(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %22
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ctype_isbitfield(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %102

40:                                               ; preds = %34, %22
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %15, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @gcref(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %19

49:                                               ; preds = %40
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %133

54:                                               ; preds = %49
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32*, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @ctype_isfield(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %54
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %67 = call %struct.TYPE_8__* @ctype_rawchild(i32* %65, %struct.TYPE_8__* %66)
  %68 = load i32*, i32** %9, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = call i32 @lj_cconv_ct_tv(i32* %64, %struct.TYPE_8__* %67, i32* %73, i32* %77, i32 0)
  br label %93

79:                                               ; preds = %54
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @lj_cconv_bf_tv(i32* %80, %struct.TYPE_8__* %81, i32* %87, i32* %91)
  br label %93

93:                                               ; preds = %79, %63
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CTF_UNION, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %133

101:                                              ; preds = %93
  br label %132

102:                                              ; preds = %34
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @CTA_SUBTYPE, align 4
  %107 = call i64 @ctype_isxattrib(i32 %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %102
  %110 = load i32*, i32** %7, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %113 = call %struct.TYPE_8__* @ctype_rawchild(i32* %111, %struct.TYPE_8__* %112)
  %114 = load i32*, i32** %9, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32*, i32** %12, align 8
  call void @cconv_substruct_init(i32* %110, %struct.TYPE_8__* %113, i32* %119, i32* %120, i32 %121, i32* %122)
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @CTF_UNION, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %109
  br label %133

130:                                              ; preds = %109
  br label %131

131:                                              ; preds = %130, %102
  br label %132

132:                                              ; preds = %131, %101
  br label %19

133:                                              ; preds = %129, %100, %53, %19
  ret void
}

declare dso_local %struct.TYPE_8__* @ctype_get(i32*, i64) #1

declare dso_local i64 @ctype_isfield(i32) #1

declare dso_local i64 @ctype_isbitfield(i32) #1

declare dso_local i32 @gcref(i32) #1

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
