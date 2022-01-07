; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexjsonstring.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexjsonstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8, i32 }

@.str = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"invalid control character in string\00", align 1
@TK_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @lexjsonstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lexjsonstring(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %5 = call i32 @textinit(%struct.TYPE_12__* %4)
  br label %6

6:                                                ; preds = %48, %1
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 4
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 34
  br i1 %11, label %12, label %49

12:                                               ; preds = %6
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 4
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = call i32 @jsY_error(%struct.TYPE_12__* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %48

21:                                               ; preds = %12
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 4
  %25 = sext i8 %24 to i32
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = call i32 @jsY_error(%struct.TYPE_12__* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %47

30:                                               ; preds = %21
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = call i64 @jsY_accept(%struct.TYPE_12__* %31, i8 signext 92)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = call i32 @lexjsonescape(%struct.TYPE_12__* %35)
  br label %46

37:                                               ; preds = %30
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 4
  %42 = sext i8 %41 to i32
  %43 = call i32 @textpush(%struct.TYPE_12__* %38, i32 %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = call i32 @jsY_next(%struct.TYPE_12__* %44)
  br label %46

46:                                               ; preds = %37, %34
  br label %47

47:                                               ; preds = %46, %27
  br label %48

48:                                               ; preds = %47, %18
  br label %6

49:                                               ; preds = %6
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %51 = call i32 @jsY_expect(%struct.TYPE_12__* %50, i8 signext 34)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = call i8* @textend(%struct.TYPE_12__* %52)
  store i8* %53, i8** %3, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 @js_intern(%struct.TYPE_12__* %54, i8* %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @TK_STRING, align 4
  ret i32 %59
}

declare dso_local i32 @textinit(%struct.TYPE_12__*) #1

declare dso_local i32 @jsY_error(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @jsY_accept(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i32 @lexjsonescape(%struct.TYPE_12__*) #1

declare dso_local i32 @textpush(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @jsY_next(%struct.TYPE_12__*) #1

declare dso_local i32 @jsY_expect(%struct.TYPE_12__*, i8 signext) #1

declare dso_local i8* @textend(%struct.TYPE_12__*) #1

declare dso_local i32 @js_intern(%struct.TYPE_12__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
