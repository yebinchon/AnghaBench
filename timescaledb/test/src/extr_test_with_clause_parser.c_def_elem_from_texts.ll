; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/extr_test_with_clause_parser.c_def_elem_from_texts.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/extr_test_with_clause_parser.c_def_elem_from_texts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%d elements invalid for defelem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i32)* @def_elem_from_texts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @def_elem_from_texts(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call %struct.TYPE_4__* @palloc0(i32 24)
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %5, align 8
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %41 [
    i32 1, label %8
    i32 3, label %16
    i32 2, label %26
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DatumGetTextP(i32 %11)
  %13 = call i8* @text_to_cstring(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  br label %45

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @DatumGetTextP(i32 %19)
  %21 = call i8* @text_to_cstring(i32 %20)
  %22 = call i64 @makeString(i8* %21)
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  br label %26

26:                                               ; preds = %2, %16
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DatumGetTextP(i32 %29)
  %31 = call i8* @text_to_cstring(i32 %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @DatumGetTextP(i32 %36)
  %38 = call i8* @text_to_cstring(i32 %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %45

41:                                               ; preds = %2
  %42 = load i32, i32* @ERROR, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @elog(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %26, %8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %46
}

declare dso_local %struct.TYPE_4__* @palloc0(i32) #1

declare dso_local i8* @text_to_cstring(i32) #1

declare dso_local i32 @DatumGetTextP(i32) #1

declare dso_local i64 @makeString(i8*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
