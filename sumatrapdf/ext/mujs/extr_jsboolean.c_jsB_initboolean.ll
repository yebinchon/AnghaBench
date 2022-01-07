; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsboolean.c_jsB_initboolean.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsboolean.c_jsB_initboolean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"Boolean.prototype.toString\00", align 1
@Bp_toString = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Boolean.prototype.valueOf\00", align 1
@Bp_valueOf = common dso_local global i32 0, align 4
@jsB_Boolean = common dso_local global i32 0, align 4
@jsB_new_Boolean = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Boolean\00", align 1
@JS_DONTENUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsB_initboolean(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = call i32 @js_pushobject(%struct.TYPE_10__* %8, %struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = load i32, i32* @Bp_toString, align 4
  %15 = call i32 @jsB_propf(%struct.TYPE_10__* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14, i32 0)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = load i32, i32* @Bp_valueOf, align 4
  %18 = call i32 @jsB_propf(%struct.TYPE_10__* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 0)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = load i32, i32* @jsB_Boolean, align 4
  %21 = load i32, i32* @jsB_new_Boolean, align 4
  %22 = call i32 @js_newcconstructor(%struct.TYPE_10__* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = load i32, i32* @JS_DONTENUM, align 4
  %25 = call i32 @js_defglobal(%struct.TYPE_10__* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  ret void
}

declare dso_local i32 @js_pushobject(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @jsB_propf(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @js_newcconstructor(%struct.TYPE_10__*, i32, i32, i8*, i32) #1

declare dso_local i32 @js_defglobal(%struct.TYPE_10__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
