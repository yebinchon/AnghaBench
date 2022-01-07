; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_speedtest1_run.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_speedtest1_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32*, i32, i64, i64 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SQLITE_ROW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"nil\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @speedtest1_run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 5), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %70

8:                                                ; preds = %0
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %10 = call i32 @assert(i32* %9)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  br label %11

11:                                               ; preds = %65, %8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %13 = call i64 @sqlite3_step(i32* %12)
  %14 = load i64, i64* @SQLITE_ROW, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %11
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %18 = call i32 @sqlite3_column_count(i32* %17)
  store i32 %18, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %62, %16
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %19
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %25 = load i32, i32* %1, align 4
  %26 = call i64 @sqlite3_column_text(i32* %24, i32 %25)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %31

31:                                               ; preds = %30, %23
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 6
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8 32, i8* %48, align 1
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  %57 = call i32 @memcpy(i8* %53, i8* %54, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  br label %61

61:                                               ; preds = %49, %31
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %1, align 4
  br label %19

65:                                               ; preds = %19
  br label %11

66:                                               ; preds = %11
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %68 = call i32 @sqlite3_reset(i32* %67)
  %69 = call i32 (...) @speedtest1_shrink_memory()
  br label %70

70:                                               ; preds = %66, %7
  ret void
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i64 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_reset(i32*) #1

declare dso_local i32 @speedtest1_shrink_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
