; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_match.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsstring.c_Sp_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8*, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@JS_REGEXP_G = common dso_local global i32 0, align 4
@REG_NOTBOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Sp_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Sp_match(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  store i32* %0, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @checkstring(i32* %11, i32 0)
  store i8* %12, i8** %4, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @js_isregexp(i32* %13, i32 1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @js_copy(i32* %17, i32 1)
  br label %32

19:                                               ; preds = %1
  %20 = load i32*, i32** %2, align 8
  %21 = call i64 @js_isundefined(i32* %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @js_newregexp(i32* %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %31

26:                                               ; preds = %19
  %27 = load i32*, i32** %2, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = call i8* @js_tostring(i32* %28, i32 1)
  %30 = call i32 @js_newregexp(i32* %27, i8* %29, i32 0)
  br label %31

31:                                               ; preds = %26, %23
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32*, i32** %2, align 8
  %34 = call %struct.TYPE_8__* @js_toregexp(i32* %33, i32 -1)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %3, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @JS_REGEXP_G, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load i32*, i32** %2, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @js_RegExp_prototype_exec(i32* %42, %struct.TYPE_8__* %43, i8* %44)
  br label %121

46:                                               ; preds = %32
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @js_newarray(i32* %49)
  store i32 0, i32* %5, align 4
  %51 = load i8*, i8** %4, align 8
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %112, %46
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ule i8* %58, %59
  br i1 %60, label %61, label %113

61:                                               ; preds = %57
  %62 = load i32*, i32** %2, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = icmp ugt i8* %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @REG_NOTBOL, align 4
  br label %73

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = call i64 @js_doregexec(i32* %62, i32 %65, i8* %66, %struct.TYPE_9__* %10, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %113

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %8, align 8
  %89 = load i32*, i32** %2, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @js_pushlstring(i32* %89, i8* %90, i32 %96)
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  %101 = call i32 @js_setindex(i32* %98, i32 -2, i32 %99)
  %102 = load i8*, i8** %8, align 8
  store i8* %102, i8** %6, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = ptrtoint i8* %103 to i64
  %106 = ptrtoint i8* %104 to i64
  %107 = sub i64 %105, %106
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %78
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %6, align 8
  br label %112

112:                                              ; preds = %109, %78
  br label %57

113:                                              ; preds = %77, %57
  %114 = load i32, i32* %5, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load i32*, i32** %2, align 8
  %118 = call i32 @js_pop(i32* %117, i32 1)
  %119 = load i32*, i32** %2, align 8
  %120 = call i32 @js_pushnull(i32* %119)
  br label %121

121:                                              ; preds = %41, %116, %113
  ret void
}

declare dso_local i8* @checkstring(i32*, i32) #1

declare dso_local i64 @js_isregexp(i32*, i32) #1

declare dso_local i32 @js_copy(i32*, i32) #1

declare dso_local i64 @js_isundefined(i32*, i32) #1

declare dso_local i32 @js_newregexp(i32*, i8*, i32) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @js_toregexp(i32*, i32) #1

declare dso_local i32 @js_RegExp_prototype_exec(i32*, %struct.TYPE_8__*, i8*) #1

declare dso_local i32 @js_newarray(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @js_doregexec(i32*, i32, i8*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @js_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @js_setindex(i32*, i32, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

declare dso_local i32 @js_pushnull(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
