; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_Fp_toString.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsfunction.c_Fp_toString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8*, i32, i8** }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"not a function\00", align 1
@JS_CFUNCTION = common dso_local global i64 0, align 8
@JS_CSCRIPT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"function \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c") { [byte code] }\00", align 1
@JS_CCFUNCTION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"() { [native code] }\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"function () { }\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @Fp_toString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Fp_toString(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %2, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call %struct.TYPE_14__* @js_toobject(i32* %7, i32 0)
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @js_iscallable(i32* %9, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @js_typeerror(i32* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @JS_CFUNCTION, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @JS_CSCRIPT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %92

27:                                               ; preds = %21, %15
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %6, align 8
  %33 = load i32*, i32** %2, align 8
  %34 = call i64 @js_try(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load i32*, i32** %2, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = call i32 @js_free(i32* %37, %struct.TYPE_16__* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @js_throw(i32* %40)
  br label %42

42:                                               ; preds = %36, %27
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @js_puts(i32* %43, %struct.TYPE_16__** %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @js_puts(i32* %45, %struct.TYPE_16__** %4, i8* %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @js_putc(i32* %50, %struct.TYPE_16__** %4, i8 signext 40)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %74, %42
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %2, align 8
  %63 = call i32 @js_putc(i32* %62, %struct.TYPE_16__** %4, i8 signext 44)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32*, i32** %2, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 2
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @js_puts(i32* %65, %struct.TYPE_16__** %4, i8* %72)
  br label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %52

77:                                               ; preds = %52
  %78 = load i32*, i32** %2, align 8
  %79 = call i32 @js_puts(i32* %78, %struct.TYPE_16__** %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @js_putc(i32* %80, %struct.TYPE_16__** %4, i8 signext 0)
  %82 = load i32*, i32** %2, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @js_pushstring(i32* %82, i32 %85)
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @js_endtry(i32* %87)
  %89 = load i32*, i32** %2, align 8
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = call i32 @js_free(i32* %89, %struct.TYPE_16__* %90)
  br label %136

92:                                               ; preds = %21
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @JS_CCFUNCTION, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %132

98:                                               ; preds = %92
  %99 = load i32*, i32** %2, align 8
  %100 = call i64 @js_try(i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32*, i32** %2, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = call i32 @js_free(i32* %103, %struct.TYPE_16__* %104)
  %106 = load i32*, i32** %2, align 8
  %107 = call i32 @js_throw(i32* %106)
  br label %108

108:                                              ; preds = %102, %98
  %109 = load i32*, i32** %2, align 8
  %110 = call i32 @js_puts(i32* %109, %struct.TYPE_16__** %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32*, i32** %2, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @js_puts(i32* %111, %struct.TYPE_16__** %4, i8* %116)
  %118 = load i32*, i32** %2, align 8
  %119 = call i32 @js_puts(i32* %118, %struct.TYPE_16__** %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %120 = load i32*, i32** %2, align 8
  %121 = call i32 @js_putc(i32* %120, %struct.TYPE_16__** %4, i8 signext 0)
  %122 = load i32*, i32** %2, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @js_pushstring(i32* %122, i32 %125)
  %127 = load i32*, i32** %2, align 8
  %128 = call i32 @js_endtry(i32* %127)
  %129 = load i32*, i32** %2, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %131 = call i32 @js_free(i32* %129, %struct.TYPE_16__* %130)
  br label %135

132:                                              ; preds = %92
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 @js_pushliteral(i32* %133, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %108
  br label %136

136:                                              ; preds = %135, %77
  ret void
}

declare dso_local %struct.TYPE_14__* @js_toobject(i32*, i32) #1

declare dso_local i32 @js_iscallable(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i64 @js_try(i32*) #1

declare dso_local i32 @js_free(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @js_throw(i32*) #1

declare dso_local i32 @js_puts(i32*, %struct.TYPE_16__**, i8*) #1

declare dso_local i32 @js_putc(i32*, %struct.TYPE_16__**, i8 signext) #1

declare dso_local i32 @js_pushstring(i32*, i32) #1

declare dso_local i32 @js_endtry(i32*) #1

declare dso_local i32 @js_pushliteral(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
