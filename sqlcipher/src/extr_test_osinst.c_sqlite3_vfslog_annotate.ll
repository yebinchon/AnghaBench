; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_osinst.c_sqlite3_vfslog_annotate.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_osinst.c_sqlite3_vfslog_annotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@vfslogOpen = common dso_local global i64 0, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@OS_ANNOTATE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_vfslog_annotate(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.TYPE_5__* @sqlite3_vfs_find(i8* %7)
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @vfslogOpen, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %18, i32* %3, align 4
  br label %27

19:                                               ; preds = %11
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = load i32, i32* @OS_ANNOTATE, align 4
  %22 = call i32 @vfslog_call(%struct.TYPE_5__* %20, i32 %21, i32 0, i32 0, i32 0, i32 0, i32 0)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @vfslog_string(%struct.TYPE_5__* %23, i8* %24)
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %19, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.TYPE_5__* @sqlite3_vfs_find(i8*) #1

declare dso_local i32 @vfslog_call(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vfslog_string(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
