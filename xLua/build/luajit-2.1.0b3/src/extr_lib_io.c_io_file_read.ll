; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_io.c_io_file_read.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lib_io.c_io_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }

@LUA_MINSTACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@LJ_ERR_INVFMT = common dso_local global i32 0, align 4
@LJ_ERR_INVOPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32)* @io_file_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_file_read(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @clearerr(i32* %22)
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @io_file_readline(%struct.TYPE_11__* %27, i32* %28, i32 1)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %150

32:                                               ; preds = %3
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @LUA_MINSTACK, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @luaL_checkstack(%struct.TYPE_11__* %33, i64 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %146, %32
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %10, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %40
  %48 = phi i1 [ false, %40 ], [ %46, %44 ]
  br i1 %48, label %49, label %149

49:                                               ; preds = %47
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i64 @tvisstr(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %120

58:                                               ; preds = %49
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = call i8* @strVdata(i64 %64)
  store i8* %65, i8** %11, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 42
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %11, align 8
  br label %74

74:                                               ; preds = %71, %58
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 110
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @io_file_readnum(%struct.TYPE_11__* %81, i32* %82)
  store i32 %83, i32* %8, align 4
  br label %119

84:                                               ; preds = %74
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = and i32 %88, -33
  %90 = icmp eq i32 %89, 76
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 108
  %99 = zext i1 %98 to i32
  %100 = call i32 @io_file_readline(%struct.TYPE_11__* %92, i32* %93, i32 %99)
  store i32 %100, i32* %8, align 4
  br label %118

101:                                              ; preds = %84
  %102 = load i8*, i8** %11, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 97
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @io_file_readall(%struct.TYPE_11__* %108, i32* %109)
  br label %117

111:                                              ; preds = %101
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* @LJ_ERR_INVFMT, align 4
  %116 = call i32 @lj_err_arg(%struct.TYPE_11__* %112, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %107
  br label %118

118:                                              ; preds = %117, %91
  br label %119

119:                                              ; preds = %118, %80
  br label %145

120:                                              ; preds = %49
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = call i64 @tvisnumber(i64 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %120
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  %135 = call i64 @lj_lib_checkint(%struct.TYPE_11__* %132, i32 %134)
  %136 = trunc i64 %135 to i32
  %137 = call i32 @io_file_readlen(%struct.TYPE_11__* %130, i32* %131, i32 %136)
  store i32 %137, i32* %8, align 4
  br label %144

138:                                              ; preds = %120
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* @LJ_ERR_INVOPT, align 4
  %143 = call i32 @lj_err_arg(%struct.TYPE_11__* %139, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %138, %129
  br label %145

145:                                              ; preds = %144, %119
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %40

149:                                              ; preds = %47
  br label %150

150:                                              ; preds = %149, %26
  %151 = load i32*, i32** %6, align 8
  %152 = call i64 @ferror(i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %150
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = call i32 @luaL_fileresult(%struct.TYPE_11__* %155, i32 0, i32* null)
  store i32 %156, i32* %4, align 4
  br label %170

157:                                              ; preds = %150
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %157
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %163, 1
  %165 = call i32 @setnilV(i64 %164)
  br label %166

166:                                              ; preds = %160, %157
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %7, align 4
  %169 = sub nsw i32 %167, %168
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %166, %154
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @io_file_readline(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @luaL_checkstack(%struct.TYPE_11__*, i64, i8*) #1

declare dso_local i64 @tvisstr(i64) #1

declare dso_local i8* @strVdata(i64) #1

declare dso_local i32 @io_file_readnum(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @io_file_readall(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @lj_err_arg(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @tvisnumber(i64) #1

declare dso_local i32 @io_file_readlen(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i64 @lj_lib_checkint(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @luaL_fileresult(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @setnilV(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
