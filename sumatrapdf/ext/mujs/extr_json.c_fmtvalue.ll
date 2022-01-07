; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_fmtvalue.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_fmtvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"toJSON\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i8*, i8*, i32)* @fmtvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmtvalue(i32* %0, i32** %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @js_getproperty(i32* %13, i32 -1, i8* %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call i64 @js_isobject(i32* %16, i32 -1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %5
  %20 = load i32*, i32** %7, align 8
  %21 = call i64 @js_hasproperty(i32* %20, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @js_iscallable(i32* %24, i32 -1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @js_copy(i32* %28, i32 -2)
  %30 = load i32*, i32** %7, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @js_pushstring(i32* %30, i8* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @js_call(i32* %33, i32 1)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @js_rot2pop1(i32* %35)
  br label %40

37:                                               ; preds = %23
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @js_pop(i32* %38, i32 1)
  br label %40

40:                                               ; preds = %37, %27
  br label %41

41:                                               ; preds = %40, %19
  br label %42

42:                                               ; preds = %41, %5
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @js_iscallable(i32* %43, i32 2)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @js_copy(i32* %47, i32 2)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @js_copy(i32* %49, i32 -3)
  %51 = load i32*, i32** %7, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @js_pushstring(i32* %51, i8* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @js_copy(i32* %54, i32 -4)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @js_call(i32* %56, i32 2)
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @js_rot2pop1(i32* %58)
  br label %60

60:                                               ; preds = %46, %42
  %61 = load i32*, i32** %7, align 8
  %62 = call i64 @js_isobject(i32* %61, i32 -1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %116

64:                                               ; preds = %60
  %65 = load i32*, i32** %7, align 8
  %66 = call i64 @js_iscallable(i32* %65, i32 -1)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %116, label %68

68:                                               ; preds = %64
  %69 = load i32*, i32** %7, align 8
  %70 = call %struct.TYPE_8__* @js_toobject(i32* %69, i32 -1)
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %12, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %108 [
    i32 129, label %74
    i32 128, label %82
    i32 130, label %91
    i32 131, label %102
  ]

74:                                               ; preds = %68
  %75 = load i32*, i32** %7, align 8
  %76 = load i32**, i32*** %8, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @fmtnum(i32* %75, i32** %76, i32 %80)
  br label %115

82:                                               ; preds = %68
  %83 = load i32*, i32** %7, align 8
  %84 = load i32**, i32*** %8, align 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @fmtstr(i32* %83, i32** %84, i32 %89)
  br label %115

91:                                               ; preds = %68
  %92 = load i32*, i32** %7, align 8
  %93 = load i32**, i32*** %8, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %101 = call i32 @js_puts(i32* %92, i32** %93, i8* %100)
  br label %115

102:                                              ; preds = %68
  %103 = load i32*, i32** %7, align 8
  %104 = load i32**, i32*** %8, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @fmtarray(i32* %103, i32** %104, i8* %105, i32 %106)
  br label %115

108:                                              ; preds = %68
  %109 = load i32*, i32** %7, align 8
  %110 = load i32**, i32*** %8, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @fmtobject(i32* %109, i32** %110, %struct.TYPE_8__* %111, i8* %112, i32 %113)
  br label %115

115:                                              ; preds = %108, %102, %91, %82, %74
  br label %164

116:                                              ; preds = %64, %60
  %117 = load i32*, i32** %7, align 8
  %118 = call i64 @js_isboolean(i32* %117, i32 -1)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %116
  %121 = load i32*, i32** %7, align 8
  %122 = load i32**, i32*** %8, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = call i64 @js_toboolean(i32* %123, i32 -1)
  %125 = icmp ne i64 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %128 = call i32 @js_puts(i32* %121, i32** %122, i8* %127)
  br label %163

129:                                              ; preds = %116
  %130 = load i32*, i32** %7, align 8
  %131 = call i64 @js_isnumber(i32* %130, i32 -1)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32*, i32** %7, align 8
  %135 = load i32**, i32*** %8, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @js_tonumber(i32* %136, i32 -1)
  %138 = call i32 @fmtnum(i32* %134, i32** %135, i32 %137)
  br label %162

139:                                              ; preds = %129
  %140 = load i32*, i32** %7, align 8
  %141 = call i64 @js_isstring(i32* %140, i32 -1)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i32*, i32** %7, align 8
  %145 = load i32**, i32*** %8, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @js_tostring(i32* %146, i32 -1)
  %148 = call i32 @fmtstr(i32* %144, i32** %145, i32 %147)
  br label %161

149:                                              ; preds = %139
  %150 = load i32*, i32** %7, align 8
  %151 = call i64 @js_isnull(i32* %150, i32 -1)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32*, i32** %7, align 8
  %155 = load i32**, i32*** %8, align 8
  %156 = call i32 @js_puts(i32* %154, i32** %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %160

157:                                              ; preds = %149
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 @js_pop(i32* %158, i32 1)
  store i32 0, i32* %6, align 4
  br label %167

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %143
  br label %162

162:                                              ; preds = %161, %133
  br label %163

163:                                              ; preds = %162, %120
  br label %164

164:                                              ; preds = %163, %115
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @js_pop(i32* %165, i32 1)
  store i32 1, i32* %6, align 4
  br label %167

167:                                              ; preds = %164, %157
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @js_getproperty(i32*, i32, i8*) #1

declare dso_local i64 @js_isobject(i32*, i32) #1

declare dso_local i64 @js_hasproperty(i32*, i32, i8*) #1

declare dso_local i64 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

declare dso_local i32 @js_call(i32*, i32) #1

declare dso_local i32 @js_rot2pop1(i32*) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @js_toobject(i32*, i32) #1

declare dso_local i32 @fmtnum(i32*, i32**, i32) #1

declare dso_local i32 @fmtstr(i32*, i32**, i32) #1

declare dso_local i32 @js_puts(i32*, i32**, i8*) #1

declare dso_local i32 @fmtarray(i32*, i32**, i8*, i32) #1

declare dso_local i32 @fmtobject(i32*, i32**, %struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @js_isboolean(i32*, i32) #1

declare dso_local i64 @js_toboolean(i32*, i32) #1

declare dso_local i64 @js_isnumber(i32*, i32) #1

declare dso_local i32 @js_tonumber(i32*, i32) #1

declare dso_local i64 @js_isstring(i32*, i32) #1

declare dso_local i32 @js_tostring(i32*, i32) #1

declare dso_local i64 @js_isnull(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
