; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_pushlstring.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_pushlstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@js_Value = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@STACK = common dso_local global %struct.TYPE_4__* null, align 8
@TOP = common dso_local global i64 0, align 8
@JS_TSHRSTR = common dso_local global i32 0, align 4
@JS_TMEMSTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_pushlstring(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @CHECKSTACK(i32 1)
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @js_Value, align 4
  %11 = load i32, i32* @type, align 4
  %12 = call i32 @soffsetof(i32 %10, i32 %11)
  %13 = icmp sle i32 %9, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STACK, align 8
  %16 = load i64, i64* @TOP, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %25, %14
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %22, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  %28 = load i8, i8* %26, align 1
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %7, align 8
  store i8 %28, i8* %29, align 1
  br label %21

31:                                               ; preds = %21
  %32 = load i8*, i8** %7, align 8
  store i8 0, i8* %32, align 1
  %33 = load i32, i32* @JS_TSHRSTR, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STACK, align 8
  %35 = load i64, i64* @TOP, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 8
  br label %53

38:                                               ; preds = %3
  %39 = load i32, i32* @JS_TMEMSTR, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STACK, align 8
  %41 = load i64, i64* @TOP, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @jsV_newmemstring(i32* %44, i8* %45, i32 %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STACK, align 8
  %49 = load i64, i64* @TOP, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %47, i32* %52, align 8
  br label %53

53:                                               ; preds = %38, %31
  %54 = load i64, i64* @TOP, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* @TOP, align 8
  ret void
}

declare dso_local i32 @CHECKSTACK(i32) #1

declare dso_local i32 @soffsetof(i32, i32) #1

declare dso_local i32 @jsV_newmemstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
