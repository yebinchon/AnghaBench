; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_jsB_initobject.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsobject.c_jsB_initobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Object.prototype.toString\00", align 1
@Op_toString = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Object.prototype.toLocaleString\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Object.prototype.valueOf\00", align 1
@Op_valueOf = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Object.prototype.hasOwnProperty\00", align 1
@Op_hasOwnProperty = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Object.prototype.isPrototypeOf\00", align 1
@Op_isPrototypeOf = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Object.prototype.propertyIsEnumerable\00", align 1
@Op_propertyIsEnumerable = common dso_local global i32 0, align 4
@jsB_Object = common dso_local global i32 0, align 4
@jsB_new_Object = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Object.getPrototypeOf\00", align 1
@O_getPrototypeOf = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Object.getOwnPropertyDescriptor\00", align 1
@O_getOwnPropertyDescriptor = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Object.getOwnPropertyNames\00", align 1
@O_getOwnPropertyNames = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"Object.create\00", align 1
@O_create = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"Object.defineProperty\00", align 1
@O_defineProperty = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"Object.defineProperties\00", align 1
@O_defineProperties = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"Object.seal\00", align 1
@O_seal = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [14 x i8] c"Object.freeze\00", align 1
@O_freeze = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"Object.preventExtensions\00", align 1
@O_preventExtensions = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"Object.isSealed\00", align 1
@O_isSealed = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [16 x i8] c"Object.isFrozen\00", align 1
@O_isFrozen = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [20 x i8] c"Object.isExtensible\00", align 1
@O_isExtensible = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"Object.keys\00", align 1
@O_keys = common dso_local global i32 0, align 4
@JS_DONTENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsB_initobject(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @js_pushobject(%struct.TYPE_7__* %3, i32 %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = load i32, i32* @Op_toString, align 4
  %10 = call i32 @jsB_propf(%struct.TYPE_7__* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %9, i32 0)
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = load i32, i32* @Op_toString, align 4
  %13 = call i32 @jsB_propf(%struct.TYPE_7__* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 0)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = load i32, i32* @Op_valueOf, align 4
  %16 = call i32 @jsB_propf(%struct.TYPE_7__* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32 0)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = load i32, i32* @Op_hasOwnProperty, align 4
  %19 = call i32 @jsB_propf(%struct.TYPE_7__* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %18, i32 1)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = load i32, i32* @Op_isPrototypeOf, align 4
  %22 = call i32 @jsB_propf(%struct.TYPE_7__* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %21, i32 1)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = load i32, i32* @Op_propertyIsEnumerable, align 4
  %25 = call i32 @jsB_propf(%struct.TYPE_7__* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %24, i32 1)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = load i32, i32* @jsB_Object, align 4
  %28 = load i32, i32* @jsB_new_Object, align 4
  %29 = call i32 @js_newcconstructor(%struct.TYPE_7__* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 1)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = load i32, i32* @O_getPrototypeOf, align 4
  %32 = call i32 @jsB_propf(%struct.TYPE_7__* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %31, i32 1)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = load i32, i32* @O_getOwnPropertyDescriptor, align 4
  %35 = call i32 @jsB_propf(%struct.TYPE_7__* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %34, i32 2)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = load i32, i32* @O_getOwnPropertyNames, align 4
  %38 = call i32 @jsB_propf(%struct.TYPE_7__* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %37, i32 1)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = load i32, i32* @O_create, align 4
  %41 = call i32 @jsB_propf(%struct.TYPE_7__* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %40, i32 2)
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = load i32, i32* @O_defineProperty, align 4
  %44 = call i32 @jsB_propf(%struct.TYPE_7__* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %43, i32 3)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = load i32, i32* @O_defineProperties, align 4
  %47 = call i32 @jsB_propf(%struct.TYPE_7__* %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %46, i32 2)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = load i32, i32* @O_seal, align 4
  %50 = call i32 @jsB_propf(%struct.TYPE_7__* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %49, i32 1)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = load i32, i32* @O_freeze, align 4
  %53 = call i32 @jsB_propf(%struct.TYPE_7__* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %52, i32 1)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = load i32, i32* @O_preventExtensions, align 4
  %56 = call i32 @jsB_propf(%struct.TYPE_7__* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %55, i32 1)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = load i32, i32* @O_isSealed, align 4
  %59 = call i32 @jsB_propf(%struct.TYPE_7__* %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %58, i32 1)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = load i32, i32* @O_isFrozen, align 4
  %62 = call i32 @jsB_propf(%struct.TYPE_7__* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %61, i32 1)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = load i32, i32* @O_isExtensible, align 4
  %65 = call i32 @jsB_propf(%struct.TYPE_7__* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %64, i32 1)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = load i32, i32* @O_keys, align 4
  %68 = call i32 @jsB_propf(%struct.TYPE_7__* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %67, i32 1)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %70 = load i32, i32* @JS_DONTENUM, align 4
  %71 = call i32 @js_defglobal(%struct.TYPE_7__* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  ret void
}

declare dso_local i32 @js_pushobject(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @jsB_propf(%struct.TYPE_7__*, i8*, i32, i32) #1

declare dso_local i32 @js_newcconstructor(%struct.TYPE_7__*, i32, i32, i8*, i32) #1

declare dso_local i32 @js_defglobal(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
