; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonObjectStep.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonObjectStep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @jsonObjectStep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonObjectStep(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @UNUSED_PARAM(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @sqlite3_aggregate_context(i32* %12, i32 16)
  %14 = inttoptr i64 %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %7, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @jsonInit(%struct.TYPE_6__* %23, i32* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = call i32 @jsonAppendChar(%struct.TYPE_6__* %26, i8 signext 123)
  br label %34

28:                                               ; preds = %17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = call i32 @jsonAppendChar(%struct.TYPE_6__* %29, i8 signext 44)
  %31 = load i32*, i32** %4, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i32**, i32*** %6, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @sqlite3_value_text(i32* %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %8, align 8
  %40 = load i32**, i32*** %6, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @sqlite3_value_bytes(i32* %42)
  store i64 %43, i64* %9, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @jsonAppendString(%struct.TYPE_6__* %44, i8* %45, i64 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = call i32 @jsonAppendChar(%struct.TYPE_6__* %48, i8 signext 58)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = load i32**, i32*** %6, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @jsonAppendValue(%struct.TYPE_6__* %50, i32* %53)
  br label %55

55:                                               ; preds = %34, %3
  ret void
}

declare dso_local i32 @UNUSED_PARAM(i32) #1

declare dso_local i64 @sqlite3_aggregate_context(i32*, i32) #1

declare dso_local i32 @jsonInit(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @jsonAppendChar(%struct.TYPE_6__*, i8 signext) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @jsonAppendString(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @jsonAppendValue(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
