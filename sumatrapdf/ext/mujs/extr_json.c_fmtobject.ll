; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_fmtobject.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_json.c_fmtobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"cyclic object value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__**, i32*, i8*, i32)* @fmtobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtobject(i32* %0, %struct.TYPE_7__** %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @js_gettop(i32* %15)
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %14, align 4
  store i32 4, i32* %13, align 4
  br label %18

18:                                               ; preds = %39, %5
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %13, align 4
  %25 = call i64 @js_isobject(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @js_toobject(i32* %28, i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @js_toobject(i32* %31, i32 -1)
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @js_typeerror(i32* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %27
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %18

42:                                               ; preds = %18
  store i32 0, i32* %14, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %45 = call i32 @js_putc(i32* %43, %struct.TYPE_7__** %44, i8 signext 123)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @js_pushiterator(i32* %46, i32 -1, i32 1)
  br label %48

48:                                               ; preds = %106, %42
  %49 = load i32*, i32** %6, align 8
  %50 = call i8* @js_nextiterator(i32* %49, i32 -1)
  store i8* %50, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %109

52:                                               ; preds = %48
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %62 = call i32 @js_putc(i32* %60, %struct.TYPE_7__** %61, i8 signext 44)
  br label %63

63:                                               ; preds = %59, %52
  %64 = load i8*, i8** %9, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @fmtindent(i32* %67, %struct.TYPE_7__** %68, i8* %69, i32 %71)
  br label %73

73:                                               ; preds = %66, %63
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @fmtstr(i32* %74, %struct.TYPE_7__** %75, i8* %76)
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %80 = call i32 @js_putc(i32* %78, %struct.TYPE_7__** %79, i8 signext 58)
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %86 = call i32 @js_putc(i32* %84, %struct.TYPE_7__** %85, i8 signext 32)
  br label %87

87:                                               ; preds = %83, %73
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @js_rot2(i32* %88)
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  %96 = call i32 @fmtvalue(i32* %90, %struct.TYPE_7__** %91, i8* %92, i8* %93, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  br label %106

103:                                              ; preds = %87
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %103, %98
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @js_rot2(i32* %107)
  br label %48

109:                                              ; preds = %48
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @js_pop(i32* %110, i32 1)
  %112 = load i8*, i8** %9, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %109
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32*, i32** %6, align 8
  %119 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @fmtindent(i32* %118, %struct.TYPE_7__** %119, i8* %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %114, %109
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %7, align 8
  %126 = call i32 @js_putc(i32* %124, %struct.TYPE_7__** %125, i8 signext 125)
  ret void
}

declare dso_local i32 @js_gettop(i32*) #1

declare dso_local i64 @js_isobject(i32*, i32) #1

declare dso_local i64 @js_toobject(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32 @js_putc(i32*, %struct.TYPE_7__**, i8 signext) #1

declare dso_local i32 @js_pushiterator(i32*, i32, i32) #1

declare dso_local i8* @js_nextiterator(i32*, i32) #1

declare dso_local i32 @fmtindent(i32*, %struct.TYPE_7__**, i8*, i32) #1

declare dso_local i32 @fmtstr(i32*, %struct.TYPE_7__**, i8*) #1

declare dso_local i32 @js_rot2(i32*) #1

declare dso_local i32 @fmtvalue(i32*, %struct.TYPE_7__**, i8*, i8*, i32) #1

declare dso_local i32 @js_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
