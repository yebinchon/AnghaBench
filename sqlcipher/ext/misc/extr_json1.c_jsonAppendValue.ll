; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonAppendValue.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_json1.c_jsonAppendValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@JSON_SUBTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"JSON cannot hold BLOB values\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @jsonAppendValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsonAppendValue(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @sqlite3_value_type(i32* %9)
  switch i32 %10, label %45 [
    i32 129, label %11
    i32 130, label %14
    i32 131, label %14
    i32 128, label %24
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = call i32 @jsonAppendRaw(%struct.TYPE_6__* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %60

14:                                               ; preds = %2, %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @sqlite3_value_text(i32* %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @sqlite3_value_bytes(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @jsonAppendRaw(%struct.TYPE_6__* %20, i8* %21, i32 %22)
  br label %60

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = call i64 @sqlite3_value_text(i32* %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %7, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @sqlite3_value_bytes(i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @sqlite3_value_subtype(i32* %30)
  %32 = load i32, i32* @JSON_SUBTYPE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @jsonAppendRaw(%struct.TYPE_6__* %35, i8* %36, i32 %37)
  br label %44

39:                                               ; preds = %24
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @jsonAppendString(%struct.TYPE_6__* %40, i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %60

45:                                               ; preds = %2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sqlite3_result_error(i32 %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 2, i32* %56, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %58 = call i32 @jsonReset(%struct.TYPE_6__* %57)
  br label %59

59:                                               ; preds = %50, %45
  br label %60

60:                                               ; preds = %59, %44, %14, %11
  ret void
}

declare dso_local i32 @sqlite3_value_type(i32*) #1

declare dso_local i32 @jsonAppendRaw(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @sqlite3_value_subtype(i32*) #1

declare dso_local i32 @jsonAppendString(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @sqlite3_result_error(i32, i8*, i32) #1

declare dso_local i32 @jsonReset(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
