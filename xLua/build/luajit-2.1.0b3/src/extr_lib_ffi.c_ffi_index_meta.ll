; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_ffi.c_ffi_index_meta.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_ffi.c_ffi_index_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_11__ = type { i32 }

@LJ_ERR_FFI_BADMEMBER = common dso_local global i32 0, align 4
@LJ_ERR_FFI_BADIDXW = common dso_local global i32 0, align 4
@MM_index = common dso_local global i32 0, align 4
@LJ_FR2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, i32*, i32)* @ffi_index_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffi_index_meta(%struct.TYPE_10__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @ctype_typeid(i32* %17, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32* @lj_ctype_meta(i32* %20, i32 %21, i32 %22)
  store i32* %23, i32** %11, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %83, label %29

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %103, %29
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @lj_ctype_repr(%struct.TYPE_10__* %31, i32 %32, i32* null)
  %34 = call i8* @strdata(i32 %33)
  store i8* %34, i8** %13, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = call i64 @tvisstr(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %43 = load i32, i32* @LJ_ERR_FFI_BADMEMBER, align 4
  %44 = load i8*, i8** %13, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = call i8* @strVdata(i32* %48)
  %50 = call i32 @lj_err_callerv(%struct.TYPE_10__* %42, i32 %43, i8* %44, i8* %49)
  br label %82

51:                                               ; preds = %30
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = call i64 @tviscdata(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = call %struct.TYPE_11__* @cdataV(i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @lj_ctype_repr(%struct.TYPE_10__* %59, i32 %66, i32* null)
  %68 = call i8* @strdata(i32 %67)
  br label %75

69:                                               ; preds = %51
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = call i8* @lj_typename(i32* %73)
  br label %75

75:                                               ; preds = %69, %58
  %76 = phi i8* [ %68, %58 ], [ %74, %69 ]
  store i8* %76, i8** %14, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = load i32, i32* @LJ_ERR_FFI_BADIDXW, align 4
  %79 = load i8*, i8** %13, align 8
  %80 = load i8*, i8** %14, align 8
  %81 = call i32 @lj_err_callerv(%struct.TYPE_10__* %77, i32 %78, i8* %79, i8* %80)
  br label %82

82:                                               ; preds = %75, %41
  br label %83

83:                                               ; preds = %82, %4
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @tvisfunc(i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %145, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @MM_index, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %87
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = call i32* @lj_meta_tget(%struct.TYPE_10__* %92, i32* %93, i32* %95)
  store i32* %96, i32** %15, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %91
  %100 = load i32*, i32** %15, align 8
  %101 = call i64 @tvisnil(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %30

104:                                              ; preds = %99
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 -1
  %110 = load i32*, i32** %15, align 8
  %111 = call i32 @copyTV(%struct.TYPE_10__* %105, i32* %109, i32* %110)
  store i32 1, i32* %5, align 4
  br label %149

112:                                              ; preds = %91
  br label %128

113:                                              ; preds = %87
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = call i32* @lj_meta_tset(%struct.TYPE_10__* %114, i32* %115, i32* %117)
  store i32* %118, i32** %16, align 8
  %119 = load i32*, i32** %16, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = load i32*, i32** %16, align 8
  %124 = load i32*, i32** %12, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = call i32 @copyTV(%struct.TYPE_10__* %122, i32* %123, i32* %125)
  store i32 0, i32* %5, align 4
  br label %149

127:                                              ; preds = %113
  br label %128

128:                                              ; preds = %127, %112
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @copyTV(%struct.TYPE_10__* %129, i32* %130, i32* %133)
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 -1
  %139 = load i32*, i32** @LJ_FR2, align 8
  %140 = ptrtoint i32* %138 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = inttoptr i64 %143 to i32*
  store i32* %144, i32** %11, align 8
  br label %145

145:                                              ; preds = %128, %83
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @lj_meta_tailcall(%struct.TYPE_10__* %146, i32* %147)
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %145, %121, %104
  %150 = load i32, i32* %5, align 4
  ret i32 %150
}

declare dso_local i32 @ctype_typeid(i32*, i32*) #1

declare dso_local i32* @lj_ctype_meta(i32*, i32, i32) #1

declare dso_local i8* @strdata(i32) #1

declare dso_local i32 @lj_ctype_repr(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i64 @tvisstr(i32*) #1

declare dso_local i32 @lj_err_callerv(%struct.TYPE_10__*, i32, i8*, i8*) #1

declare dso_local i8* @strVdata(i32*) #1

declare dso_local i64 @tviscdata(i32*) #1

declare dso_local %struct.TYPE_11__* @cdataV(i32*) #1

declare dso_local i8* @lj_typename(i32*) #1

declare dso_local i32 @tvisfunc(i32*) #1

declare dso_local i32* @lj_meta_tget(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i64 @tvisnil(i32*) #1

declare dso_local i32 @copyTV(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32* @lj_meta_tset(%struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @lj_meta_tailcall(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
