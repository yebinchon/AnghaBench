; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_split_regexp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_split_regexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REG_NOTBOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Sp_split_regexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sp_split_regexp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %2, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i8* @checkstring(i32* %14, i32 0)
  store i8* %15, i8** %4, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call %struct.TYPE_7__* @js_toregexp(i32* %16, i32 1)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %3, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i64 @js_isdefined(i32* %18, i32 2)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @js_tointeger(i32* %22, i32 2)
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 1073741824, %24 ]
  store i32 %26, i32* %5, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @js_newarray(i32* %27)
  store i32 0, i32* %6, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %25
  %38 = load i32*, i32** %2, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 @js_doregexec(i32* %38, i32 %41, i8* %42, %struct.TYPE_8__* %13, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %174

50:                                               ; preds = %45
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @js_pushliteral(i32* %51, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @js_setindex(i32* %53, i32 -2, i32 0)
  br label %55

55:                                               ; preds = %50, %37
  br label %174

56:                                               ; preds = %25
  %57 = load i8*, i8** %4, align 8
  store i8* %57, i8** %9, align 8
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %160, %93, %56
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = icmp ult i8* %59, %60
  br i1 %61, label %62, label %162

62:                                               ; preds = %58
  %63 = load i32*, i32** %2, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = icmp ugt i8* %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* @REG_NOTBOL, align 4
  br label %74

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = call i64 @js_doregexec(i32* %63, i32 %66, i8* %67, %struct.TYPE_8__* %13, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %162

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = load i8*, i8** %9, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %9, align 8
  br label %58

96:                                               ; preds = %79
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %174

101:                                              ; preds = %96
  %102 = load i32*, i32** %2, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @js_pushlstring(i32* %102, i8* %103, i32 %109)
  %111 = load i32*, i32** %2, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  %114 = call i32 @js_setindex(i32* %111, i32 -2, i32 %112)
  store i32 1, i32* %7, align 4
  br label %115

115:                                              ; preds = %157, %101
  %116 = load i32, i32* %7, align 4
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %160

120:                                              ; preds = %115
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %174

125:                                              ; preds = %120
  %126 = load i32*, i32** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = ptrtoint i8* %140 to i64
  %149 = ptrtoint i8* %147 to i64
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  %152 = call i32 @js_pushlstring(i32* %126, i8* %133, i32 %151)
  %153 = load i32*, i32** %2, align 8
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  %156 = call i32 @js_setindex(i32* %153, i32 -2, i32 %154)
  br label %157

157:                                              ; preds = %125
  %158 = load i32, i32* %7, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %7, align 4
  br label %115

160:                                              ; preds = %115
  %161 = load i8*, i8** %11, align 8
  store i8* %161, i8** %8, align 8
  store i8* %161, i8** %9, align 8
  br label %58

162:                                              ; preds = %78, %58
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %174

167:                                              ; preds = %162
  %168 = load i32*, i32** %2, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = call i32 @js_pushstring(i32* %168, i8* %169)
  %171 = load i32*, i32** %2, align 8
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @js_setindex(i32* %171, i32 -2, i32 %172)
  br label %174

174:                                              ; preds = %167, %166, %124, %100, %55, %49
  ret void
}

declare dso_local i8* @checkstring(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @js_toregexp(i32*, i32) #1

declare dso_local i64 @js_isdefined(i32*, i32) #1

declare dso_local i32 @js_tointeger(i32*, i32) #1

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @js_doregexec(i32*, i32, i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @js_pushliteral(i32*, i8*) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

declare dso_local i32 @js_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @js_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
