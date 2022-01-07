; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_printf.c_sqlite3VMPrintf.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_printf.c_sqlite3VMPrintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32 }

@SQLITE_PRINT_BUF_SIZE = common dso_local global i32 0, align 4
@SQLITE_LIMIT_LENGTH = common dso_local global i64 0, align 8
@SQLITE_PRINTF_INTERNAL = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3VMPrintf(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @SQLITE_PRINT_BUF_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = trunc i64 %12 to i32
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sqlite3StrAccumInit(%struct.TYPE_10__* %10, %struct.TYPE_9__* %19, i8* %14, i32 %20, i32 %26)
  %28 = load i32, i32* @SQLITE_PRINTF_INTERNAL, align 4
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @sqlite3_str_vappendf(%struct.TYPE_10__* %10, i8* %30, i32 %31)
  %33 = call i8* @sqlite3StrAccumFinish(%struct.TYPE_10__* %10)
  store i8* %33, i8** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SQLITE_NOMEM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = call i32 @sqlite3OomFault(%struct.TYPE_9__* %39)
  br label %41

41:                                               ; preds = %38, %3
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %43)
  ret i8* %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @sqlite3StrAccumInit(%struct.TYPE_10__*, %struct.TYPE_9__*, i8*, i32, i32) #2

declare dso_local i32 @sqlite3_str_vappendf(%struct.TYPE_10__*, i8*, i32) #2

declare dso_local i8* @sqlite3StrAccumFinish(%struct.TYPE_10__*) #2

declare dso_local i32 @sqlite3OomFault(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
