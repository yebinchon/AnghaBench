; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_dumpstack.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_dumpstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"[builtin#\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_debug_dumpstack(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  %22 = alloca %struct.TYPE_12__*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = xor i32 %27, -1
  store i32 %28, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %4
  br label %30

30:                                               ; preds = %183, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %187

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32* @lj_debug_frame(i32* %35, i32 %36, i32* %13)
  store i32* %37, i32** %14, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %174

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  br label %49

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi i32* [ %47, %43 ], [ null, %48 ]
  store i32* %50, i32** %15, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call %struct.TYPE_13__* @frame_func(i32* %51)
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %16, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = bitcast i8* %53 to i32*
  store i32* %54, i32** %17, align 8
  br label %55

55:                                               ; preds = %172, %49
  %56 = load i32*, i32** %17, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %17, align 8
  %58 = load i32, i32* %56, align 4
  store i32 %58, i32* %18, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %173

60:                                               ; preds = %55
  %61 = load i32, i32* %18, align 4
  switch i32 %61, label %168 [
    i32 112, label %62
    i32 70, label %63
    i32 102, label %63
    i32 108, label %98
    i32 90, label %165
  ]

62:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %172

63:                                               ; preds = %60, %60
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = call i8* @lj_debug_funcname(i32* %64, i32* %65, i8** %19)
  store i8* %66, i8** %20, align 8
  %67 = load i8*, i8** %20, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  %70 = load i32, i32* %18, align 4
  %71 = icmp eq i32 %70, 70
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %74 = call i32 @isluafunc(%struct.TYPE_13__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %78 = call %struct.TYPE_12__* @funcproto(%struct.TYPE_13__* %77)
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %21, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, -1
  br i1 %82, label %83, label %90

83:                                               ; preds = %76
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @debug_putchunkname(i32* %84, %struct.TYPE_12__* %85, i32 %86)
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @lj_buf_putb(i32* %88, i32 58)
  br label %90

90:                                               ; preds = %83, %76
  br label %91

91:                                               ; preds = %90, %72, %69
  %92 = load i32*, i32** %6, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = load i8*, i8** %19, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = call i32 @lj_buf_putmem(i32* %92, i8* %93, i32 %95)
  br label %172

97:                                               ; preds = %63
  br label %98

98:                                               ; preds = %60, %97
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %100 = call i32 @isluafunc(%struct.TYPE_13__* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %139

102:                                              ; preds = %98
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %104 = call %struct.TYPE_12__* @funcproto(%struct.TYPE_13__* %103)
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %22, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @debug_putchunkname(i32* %105, %struct.TYPE_12__* %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %102
  %111 = load i32, i32* %18, align 4
  %112 = icmp eq i32 %111, 108
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32*, i32** %5, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %116 = load i32*, i32** %15, align 8
  %117 = call i32 @debug_frameline(i32* %114, %struct.TYPE_13__* %115, i32* %116)
  br label %122

118:                                              ; preds = %110
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  br label %122

122:                                              ; preds = %118, %113
  %123 = phi i32 [ %117, %113 ], [ %121, %118 ]
  store i32 %123, i32* %23, align 4
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @lj_buf_putb(i32* %124, i32 58)
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %23, align 4
  %128 = icmp sge i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32, i32* %23, align 4
  br label %135

131:                                              ; preds = %122
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  br label %135

135:                                              ; preds = %131, %129
  %136 = phi i32 [ %130, %129 ], [ %134, %131 ]
  %137 = call i32 @lj_strfmt_putint(i32* %126, i32 %136)
  br label %138

138:                                              ; preds = %135, %102
  br label %164

139:                                              ; preds = %98
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %141 = call i32 @isffunc(%struct.TYPE_13__* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %139
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @lj_buf_putmem(i32* %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %146 = load i32*, i32** %6, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @lj_strfmt_putint(i32* %146, i32 %150)
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @lj_buf_putb(i32* %152, i32 93)
  br label %163

154:                                              ; preds = %139
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @lj_buf_putb(i32* %155, i32 64)
  %157 = load i32*, i32** %6, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @lj_strfmt_putptr(i32* %157, i32 %161)
  br label %163

163:                                              ; preds = %154, %143
  br label %164

164:                                              ; preds = %163, %138
  br label %172

165:                                              ; preds = %60
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 @sbuflen(i32* %166)
  store i32 %167, i32* %12, align 4
  br label %172

168:                                              ; preds = %60
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %18, align 4
  %171 = call i32 @lj_buf_putb(i32* %169, i32 %170)
  br label %172

172:                                              ; preds = %168, %165, %164, %91, %62
  br label %55

173:                                              ; preds = %55
  br label %183

174:                                              ; preds = %34
  %175 = load i32, i32* %10, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  br label %187

178:                                              ; preds = %174
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %9, align 4
  %181 = sub nsw i32 %180, %179
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %178
  br label %183

183:                                              ; preds = %182, %173
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %9, align 4
  br label %30

187:                                              ; preds = %177, %30
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load i32*, i32** %6, align 8
  %192 = load i32*, i32** %6, align 8
  %193 = call i32 @sbufB(i32* %192)
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %193, %194
  %196 = call i32 @setsbufP(i32* %191, i32 %195)
  br label %197

197:                                              ; preds = %190, %187
  ret void
}

declare dso_local i32* @lj_debug_frame(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_13__* @frame_func(i32*) #1

declare dso_local i8* @lj_debug_funcname(i32*, i32*, i8**) #1

declare dso_local i32 @isluafunc(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @funcproto(%struct.TYPE_13__*) #1

declare dso_local i32 @debug_putchunkname(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @lj_buf_putb(i32*, i32) #1

declare dso_local i32 @lj_buf_putmem(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @debug_frameline(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @lj_strfmt_putint(i32*, i32) #1

declare dso_local i32 @isffunc(%struct.TYPE_13__*) #1

declare dso_local i32 @lj_strfmt_putptr(i32*, i32) #1

declare dso_local i32 @sbuflen(i32*) #1

declare dso_local i32 @setsbufP(i32*, i32) #1

declare dso_local i32 @sbufB(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
