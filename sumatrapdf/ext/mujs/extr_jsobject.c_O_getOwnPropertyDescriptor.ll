; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_O_getOwnPropertyDescriptor.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_O_getOwnPropertyDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"not an object\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@JS_READONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"writable\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@JS_DONTENUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"enumerable\00", align 1
@JS_DONTCONF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"configurable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @O_getOwnPropertyDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @O_getOwnPropertyDescriptor(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @js_isobject(i32* %5, i32 1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @js_typeerror(i32* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @js_toobject(i32* %12, i32 1)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @js_tostring(i32* %16, i32 2)
  %18 = call %struct.TYPE_3__* @jsV_getproperty(i32* %14, i32* %15, i32 %17)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %4, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %11
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @js_pushundefined(i32* %22)
  br label %114

24:                                               ; preds = %11
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @js_newobject(i32* %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %56, label %31

31:                                               ; preds = %24
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %31
  %37 = load i32*, i32** %2, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @js_pushvalue(i32* %37, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @js_setproperty(i32* %42, i32 -2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32*, i32** %2, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @JS_READONLY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i32 @js_pushboolean(i32* %44, i32 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @js_setproperty(i32* %54, i32 -2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %89

56:                                               ; preds = %31, %24
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load i32*, i32** %2, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @js_pushobject(i32* %62, i32 %65)
  br label %70

67:                                               ; preds = %56
  %68 = load i32*, i32** %2, align 8
  %69 = call i32 @js_pushundefined(i32* %68)
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @js_setproperty(i32* %71, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32*, i32** %2, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @js_pushobject(i32* %78, i32 %81)
  br label %86

83:                                               ; preds = %70
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @js_pushundefined(i32* %84)
  br label %86

86:                                               ; preds = %83, %77
  %87 = load i32*, i32** %2, align 8
  %88 = call i32 @js_setproperty(i32* %87, i32 -2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %36
  %90 = load i32*, i32** %2, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @JS_DONTENUM, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @js_pushboolean(i32* %90, i32 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = call i32 @js_setproperty(i32* %100, i32 -2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %102 = load i32*, i32** %2, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @JS_DONTCONF, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i32 @js_pushboolean(i32* %102, i32 %110)
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @js_setproperty(i32* %112, i32 -2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %114

114:                                              ; preds = %89, %21
  ret void
}

declare dso_local i32 @js_isobject(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local i32* @js_toobject(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @jsV_getproperty(i32*, i32*, i32) #1

declare dso_local i32 @js_tostring(i32*, i32) #1

declare dso_local i32 @js_pushundefined(i32*) #1

declare dso_local i32 @js_newobject(i32*) #1

declare dso_local i32 @js_pushvalue(i32*, i32) #1

declare dso_local i32 @js_setproperty(i32*, i32, i8*) #1

declare dso_local i32 @js_pushboolean(i32*, i32) #1

declare dso_local i32 @js_pushobject(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
