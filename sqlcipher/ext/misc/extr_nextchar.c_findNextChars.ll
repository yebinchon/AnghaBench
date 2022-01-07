; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_nextchar.c_findNextChars.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_nextchar.c_findNextChars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i64 }

@SQLITE_STATIC = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @findNextChars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findNextChars(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8], align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %80, %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SQLITE_STATIC, align 4
  %21 = call i32 @sqlite3_bind_text(i32 %12, i32 1, i8* %16, i32 %19, i32 %20)
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  %25 = call i32 @writeUtf8(i8* %22, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SQLITE_STATIC, align 4
  %32 = call i32 @sqlite3_bind_text(i32 %28, i32 2, i8* %29, i32 %30, i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sqlite3_step(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SQLITE_DONE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %9
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @sqlite3_reset(i32 %43)
  br label %81

45:                                               ; preds = %9
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SQLITE_ROW, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %81

53:                                               ; preds = %45
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @sqlite3_column_text(i32 %56, i32 0)
  store i8* %57, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = call i32 @readUtf8(i8* %63, i32* %8)
  store i32 %64, i32* %5, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sqlite3_reset(i32 %67)
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @nextCharAppend(%struct.TYPE_4__* %69, i32 %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %53
  br label %81

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  br label %9

81:                                               ; preds = %77, %49, %40
  ret void
}

declare dso_local i32 @sqlite3_bind_text(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @writeUtf8(i8*, i32) #1

declare dso_local i32 @sqlite3_step(i32) #1

declare dso_local i32 @sqlite3_reset(i32) #1

declare dso_local i8* @sqlite3_column_text(i32, i32) #1

declare dso_local i32 @readUtf8(i8*, i32*) #1

declare dso_local i32 @nextCharAppend(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
