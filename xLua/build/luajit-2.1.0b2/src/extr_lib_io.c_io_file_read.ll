; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_io.c_io_file_read.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lib_io.c_io_file_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }

@LUA_MINSTACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"too many arguments\00", align 1
@LJ_ERR_INVOPT = common dso_local global i32 0, align 4
@LJ_ERR_INVFMT = common dso_local global i32 0, align 4
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
  br label %153

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

40:                                               ; preds = %149, %32
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
  br i1 %48, label %49, label %152

49:                                               ; preds = %47
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = call i64 @tvisstr(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %123

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
  %70 = icmp ne i32 %69, 42
  br i1 %70, label %71, label %77

71:                                               ; preds = %58
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* @LJ_ERR_INVOPT, align 4
  %76 = call i32 @lj_err_arg(%struct.TYPE_11__* %72, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %58
  %78 = load i8*, i8** %11, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 110
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @io_file_readnum(%struct.TYPE_11__* %84, i32* %85)
  store i32 %86, i32* %8, align 4
  br label %122

87:                                               ; preds = %77
  %88 = load i8*, i8** %11, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = and i32 %91, -33
  %93 = icmp eq i32 %92, 76
  br i1 %93, label %94, label %104

94:                                               ; preds = %87
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 108
  %102 = zext i1 %101 to i32
  %103 = call i32 @io_file_readline(%struct.TYPE_11__* %95, i32* %96, i32 %102)
  store i32 %103, i32* %8, align 4
  br label %121

104:                                              ; preds = %87
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 97
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @io_file_readall(%struct.TYPE_11__* %111, i32* %112)
  br label %120

114:                                              ; preds = %104
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  %118 = load i32, i32* @LJ_ERR_INVFMT, align 4
  %119 = call i32 @lj_err_arg(%struct.TYPE_11__* %115, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %110
  br label %121

121:                                              ; preds = %120, %94
  br label %122

122:                                              ; preds = %121, %83
  br label %148

123:                                              ; preds = %49
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = call i64 @tvisnumber(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %123
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  %138 = call i64 @lj_lib_checkint(%struct.TYPE_11__* %135, i32 %137)
  %139 = trunc i64 %138 to i32
  %140 = call i32 @io_file_readlen(%struct.TYPE_11__* %133, i32* %134, i32 %139)
  store i32 %140, i32* %8, align 4
  br label %147

141:                                              ; preds = %123
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32, i32* @LJ_ERR_INVOPT, align 4
  %146 = call i32 @lj_err_arg(%struct.TYPE_11__* %142, i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %141, %132
  br label %148

148:                                              ; preds = %147, %122
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %9, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %40

152:                                              ; preds = %47
  br label %153

153:                                              ; preds = %152, %26
  %154 = load i32*, i32** %6, align 8
  %155 = call i64 @ferror(i32* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %159 = call i32 @luaL_fileresult(%struct.TYPE_11__* %158, i32 0, i32* null)
  store i32 %159, i32* %4, align 4
  br label %173

160:                                              ; preds = %153
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %166, 1
  %168 = call i32 @setnilV(i64 %167)
  br label %169

169:                                              ; preds = %163, %160
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %7, align 4
  %172 = sub nsw i32 %170, %171
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %169, %157
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @io_file_readline(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @luaL_checkstack(%struct.TYPE_11__*, i64, i8*) #1

declare dso_local i64 @tvisstr(i64) #1

declare dso_local i8* @strVdata(i64) #1

declare dso_local i32 @lj_err_arg(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @io_file_readnum(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @io_file_readall(%struct.TYPE_11__*, i32*) #1

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
