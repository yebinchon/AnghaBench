; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_main.c_sqlite3_errmsg16.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_main.c_sqlite3_errmsg16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64 }

@sqlite3_errmsg16.outOfMem = internal constant [14 x i8] c"out of memory\00", align 1
@sqlite3_errmsg16.misuse = internal constant [34 x i8] c"bad parameter or other API misuse\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3_errmsg16(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @sqlite3_errmsg16.outOfMem, i64 0, i64 0), i8** %2, align 8
  br label %53

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i32 @sqlite3SafetyCheckSickOrOk(%struct.TYPE_6__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @sqlite3_errmsg16.misuse, i64 0, i64 0), i8** %2, align 8
  br label %53

13:                                               ; preds = %8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sqlite3_mutex_enter(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @sqlite3_errmsg16.outOfMem, i64 0, i64 0), i8** %4, align 8
  br label %47

23:                                               ; preds = %13
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @sqlite3_value_text16(i32 %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sqlite3ErrStr(i32 %37)
  %39 = call i32 @sqlite3ErrorWithMsg(%struct.TYPE_6__* %31, i32 %34, i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @sqlite3_value_text16(i32 %42)
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %30, %23
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = call i32 @sqlite3OomClear(%struct.TYPE_6__* %45)
  br label %47

47:                                               ; preds = %44, %22
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sqlite3_mutex_leave(i32 %50)
  %52 = load i8*, i8** %4, align 8
  store i8* %52, i8** %2, align 8
  br label %53

53:                                               ; preds = %47, %12, %7
  %54 = load i8*, i8** %2, align 8
  ret i8* %54
}

declare dso_local i32 @sqlite3SafetyCheckSickOrOk(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i8* @sqlite3_value_text16(i32) #1

declare dso_local i32 @sqlite3ErrorWithMsg(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @sqlite3ErrStr(i32) #1

declare dso_local i32 @sqlite3OomClear(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
