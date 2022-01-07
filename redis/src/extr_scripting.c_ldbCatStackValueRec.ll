; ModuleID = '/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbCatStackValueRec.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_scripting.c_ldbCatStackValueRec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDB_MAX_VALUES_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"<max recursion level reached! Nested table?>\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"]=\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"userdata\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"thread\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"light-userdata\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"\22%s@%p\22\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"\22<unknown-lua-type>\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldbCatStackValueRec(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @lua_type(i32* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @LDB_MAX_VALUES_DEPTH, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @sdscat(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %5, align 4
  br label %173

29:                                               ; preds = %4
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %168 [
    i32 131, label %31
    i32 136, label %40
    i32 132, label %49
    i32 133, label %56
    i32 130, label %59
    i32 135, label %141
    i32 128, label %141
    i32 129, label %141
    i32 134, label %141
  ]

31:                                               ; preds = %29
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @lua_tolstring(i32* %32, i32 %33, i64* %11)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %12, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @sdscatrepr(i32 %36, i8* %37, i64 %38)
  store i32 %39, i32* %6, align 4
  br label %171

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @lua_toboolean(i32* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @sdscat(i32 %41, i8* %47)
  store i32 %48, i32* %6, align 4
  br label %171

49:                                               ; preds = %29
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @lua_tonumber(i32* %51, i32 %52)
  %54 = sitofp i32 %53 to double
  %55 = call i32 (i32, i8*, ...) @sdscatprintf(i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %54)
  store i32 %55, i32* %6, align 4
  br label %171

56:                                               ; preds = %29
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @sdscatlen(i32 %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  store i32 %58, i32* %6, align 4
  br label %171

59:                                               ; preds = %29
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %60 = call i32 (...) @sdsempty()
  store i32 %60, i32* %15, align 4
  %61 = call i32 (...) @sdsempty()
  store i32 %61, i32* %16, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @lua_pushnil(i32* %62)
  br label %64

64:                                               ; preds = %83, %59
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @lua_next(i32* %65, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %108

70:                                               ; preds = %64
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 @lua_type(i32* %74, i32 -2)
  %76 = icmp ne i32 %75, 132
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @lua_tonumber(i32* %78, i32 -2)
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %73
  store i32 0, i32* %14, align 4
  br label %83

83:                                               ; preds = %82, %77, %70
  %84 = load i32, i32* %15, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @ldbCatStackValueRec(i32 %84, i32* %85, i32 -1, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @sdscatlen(i32 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @sdscatlen(i32 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @ldbCatStackValueRec(i32 %92, i32* %93, i32 -2, i32 %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = call i32 @sdscatlen(i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @ldbCatStackValueRec(i32 %98, i32* %99, i32 -1, i32 %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @sdscatlen(i32 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  store i32 %103, i32* %16, align 4
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 @lua_pop(i32* %104, i32 1)
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %64

108:                                              ; preds = %64
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @sdslen(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @sdsrange(i32 %113, i32 0, i32 -3)
  br label %115

115:                                              ; preds = %112, %108
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @sdslen(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i32, i32* %16, align 4
  %121 = call i32 @sdsrange(i32 %120, i32 0, i32 -3)
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @sdscatlen(i32 %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %15, align 4
  br label %132

130:                                              ; preds = %122
  %131 = load i32, i32* %16, align 4
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32 [ %129, %128 ], [ %131, %130 ]
  %134 = call i32 @sdscatsds(i32 %125, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @sdscatlen(i32 %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 1)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @sdsfree(i32 %137)
  %139 = load i32, i32* %16, align 4
  %140 = call i32 @sdsfree(i32 %139)
  br label %171

141:                                              ; preds = %29, %29, %29, %29
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i8* @lua_topointer(i32* %142, i32 %143)
  store i8* %144, i8** %17, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %18, align 8
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %145, 135
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8** %18, align 8
  br label %163

148:                                              ; preds = %141
  %149 = load i32, i32* %10, align 4
  %150 = icmp eq i32 %149, 128
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8** %18, align 8
  br label %162

152:                                              ; preds = %148
  %153 = load i32, i32* %10, align 4
  %154 = icmp eq i32 %153, 129
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %18, align 8
  br label %161

156:                                              ; preds = %152
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %157, 134
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8** %18, align 8
  br label %160

160:                                              ; preds = %159, %156
  br label %161

161:                                              ; preds = %160, %155
  br label %162

162:                                              ; preds = %161, %151
  br label %163

163:                                              ; preds = %162, %147
  %164 = load i32, i32* %6, align 4
  %165 = load i8*, i8** %18, align 8
  %166 = load i8*, i8** %17, align 8
  %167 = call i32 (i32, i8*, ...) @sdscatprintf(i32 %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %165, i8* %166)
  store i32 %167, i32* %6, align 4
  br label %171

168:                                              ; preds = %29
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @sdscat(i32 %169, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %168, %163, %132, %56, %49, %40, %31
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %5, align 4
  br label %173

173:                                              ; preds = %171, %26
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @sdscat(i32, i8*) #1

declare dso_local i64 @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @sdscatrepr(i32, i8*, i64) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @sdscatprintf(i32, i8*, ...) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_next(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @sdslen(i32) #1

declare dso_local i32 @sdsrange(i32, i32, i32) #1

declare dso_local i32 @sdscatsds(i32, i32) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i8* @lua_topointer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
