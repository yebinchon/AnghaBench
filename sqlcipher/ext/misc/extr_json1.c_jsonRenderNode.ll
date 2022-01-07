; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonRenderNode.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonRenderNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i8*, i64, %struct.TYPE_6__* }

@JNODE_REPLACE = common dso_local global i32 0, align 4
@JNODE_PATCH = common dso_local global i32 0, align 4
@JSON_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@JNODE_RAW = common dso_local global i32 0, align 4
@JNODE_REMOVE = common dso_local global i32 0, align 4
@JNODE_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32**)* @jsonRenderNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonRenderNode(%struct.TYPE_6__* %0, i32* %1, i32** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @JNODE_REPLACE, align 4
  %13 = load i32, i32* @JNODE_PATCH, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @JNODE_REPLACE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = load i32**, i32*** %6, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32*, i32** %26, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @jsonAppendValue(i32* %25, i32* %32)
  br label %204

34:                                               ; preds = %17
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  store %struct.TYPE_6__* %38, %struct.TYPE_6__** %4, align 8
  br label %39

39:                                               ; preds = %34, %3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %43 [
    i32 128, label %53
    i32 133, label %56
    i32 129, label %59
    i32 130, label %77
    i32 132, label %77
    i32 134, label %87
    i32 131, label %140
  ]

43:                                               ; preds = %39
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @JSON_NULL, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @jsonAppendRaw(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %204

53:                                               ; preds = %39
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @jsonAppendRaw(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %204

56:                                               ; preds = %39
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @jsonAppendRaw(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  br label %204

59:                                               ; preds = %39
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @JNODE_RAW, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %59
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @jsonAppendString(i32* %67, i8* %71, i32 %74)
  br label %204

76:                                               ; preds = %59
  br label %77

77:                                               ; preds = %39, %39, %76
  %78 = load i32*, i32** %5, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @jsonAppendRaw(i32* %78, i8* %82, i32 %85)
  br label %204

87:                                               ; preds = %39
  store i64 1, i64* %7, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @jsonAppendChar(i32* %88, i8 signext 91)
  br label %90

90:                                               ; preds = %130, %87
  br label %91

91:                                               ; preds = %115, %90
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = icmp ule i64 %92, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %91
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @JNODE_REMOVE, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %98
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @jsonAppendSeparator(i32* %108)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 %111
  %113 = load i32*, i32** %5, align 8
  %114 = load i32**, i32*** %6, align 8
  call void @jsonRenderNode(%struct.TYPE_6__* %112, i32* %113, i32** %114)
  br label %115

115:                                              ; preds = %107, %98
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = load i64, i64* %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %117
  %119 = call i64 @jsonNodeSize(%struct.TYPE_6__* %118)
  %120 = load i64, i64* %7, align 8
  %121 = add i64 %120, %119
  store i64 %121, i64* %7, align 8
  br label %91

122:                                              ; preds = %91
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @JNODE_APPEND, align 4
  %127 = and i32 %125, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %137

130:                                              ; preds = %122
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %135
  store %struct.TYPE_6__* %136, %struct.TYPE_6__** %4, align 8
  store i64 1, i64* %7, align 8
  br label %90

137:                                              ; preds = %129
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @jsonAppendChar(i32* %138, i8 signext 93)
  br label %204

140:                                              ; preds = %39
  store i64 1, i64* %8, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 @jsonAppendChar(i32* %141, i8 signext 123)
  br label %143

143:                                              ; preds = %194, %140
  br label %144

144:                                              ; preds = %177, %143
  %145 = load i64, i64* %8, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = icmp ule i64 %145, %149
  br i1 %150, label %151, label %186

151:                                              ; preds = %144
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = load i64, i64* %8, align 8
  %154 = add i64 %153, 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @JNODE_REMOVE, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %151
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @jsonAppendSeparator(i32* %162)
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %165 = load i64, i64* %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %165
  %167 = load i32*, i32** %5, align 8
  %168 = load i32**, i32*** %6, align 8
  call void @jsonRenderNode(%struct.TYPE_6__* %166, i32* %167, i32** %168)
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @jsonAppendChar(i32* %169, i8 signext 58)
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %172 = load i64, i64* %8, align 8
  %173 = add i64 %172, 1
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i64 %173
  %175 = load i32*, i32** %5, align 8
  %176 = load i32**, i32*** %6, align 8
  call void @jsonRenderNode(%struct.TYPE_6__* %174, i32* %175, i32** %176)
  br label %177

177:                                              ; preds = %161, %151
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %179 = load i64, i64* %8, align 8
  %180 = add i64 %179, 1
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %180
  %182 = call i64 @jsonNodeSize(%struct.TYPE_6__* %181)
  %183 = add i64 1, %182
  %184 = load i64, i64* %8, align 8
  %185 = add i64 %184, %183
  store i64 %185, i64* %8, align 8
  br label %144

186:                                              ; preds = %144
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @JNODE_APPEND, align 4
  %191 = and i32 %189, %190
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  br label %201

194:                                              ; preds = %186
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i64 %199
  store %struct.TYPE_6__* %200, %struct.TYPE_6__** %4, align 8
  store i64 1, i64* %8, align 8
  br label %143

201:                                              ; preds = %193
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @jsonAppendChar(i32* %202, i8 signext 125)
  br label %204

204:                                              ; preds = %24, %201, %137, %77, %66, %56, %53, %43
  ret void
}

declare dso_local i32 @jsonAppendValue(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @jsonAppendRaw(i32*, i8*, i32) #1

declare dso_local i32 @jsonAppendString(i32*, i8*, i32) #1

declare dso_local i32 @jsonAppendChar(i32*, i8 signext) #1

declare dso_local i32 @jsonAppendSeparator(i32*) #1

declare dso_local i64 @jsonNodeSize(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
