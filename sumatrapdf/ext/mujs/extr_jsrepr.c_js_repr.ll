; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrepr.c_js_repr.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrepr.c_js_repr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_17__ = type { i8* }

@.str = private unnamed_addr constant [10 x i8] c"undefined\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_repr(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %5, align 8
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %8 = call i64 @js_try(%struct.TYPE_16__* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %13 = call i32 @js_free(%struct.TYPE_16__* %11, %struct.TYPE_17__* %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = call i32 @js_throw(%struct.TYPE_16__* %14)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @js_copy(%struct.TYPE_16__* %17, i32 %18)
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = call i32 @reprvalue(%struct.TYPE_16__* %29, %struct.TYPE_17__** %5)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = call i32 @js_pop(%struct.TYPE_16__* %34, i32 1)
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = call i32 @js_putc(%struct.TYPE_16__* %36, %struct.TYPE_17__** %5, i32 0)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %40 = icmp ne %struct.TYPE_17__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %16
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  br label %46

45:                                               ; preds = %16
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i8* [ %44, %41 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %45 ]
  %48 = call i32 @js_pushstring(%struct.TYPE_16__* %38, i8* %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = call i32 @js_endtry(%struct.TYPE_16__* %49)
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = call i32 @js_free(%struct.TYPE_16__* %51, %struct.TYPE_17__* %52)
  ret void
}

declare dso_local i64 @js_try(%struct.TYPE_16__*) #1

declare dso_local i32 @js_free(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

declare dso_local i32 @js_throw(%struct.TYPE_16__*) #1

declare dso_local i32 @js_copy(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @reprvalue(%struct.TYPE_16__*, %struct.TYPE_17__**) #1

declare dso_local i32 @js_pop(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @js_putc(%struct.TYPE_16__*, %struct.TYPE_17__**, i32) #1

declare dso_local i32 @js_pushstring(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @js_endtry(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
