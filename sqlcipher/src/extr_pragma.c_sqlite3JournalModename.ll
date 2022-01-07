; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pragma.c_sqlite3JournalModename.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pragma.c_sqlite3JournalModename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sqlite3JournalModename.azModeName = internal constant [6 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"persist\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"truncate\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"wal\00", align 1
@PAGER_JOURNALMODE_DELETE = common dso_local global i64 0, align 8
@PAGER_JOURNALMODE_PERSIST = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_OFF = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_TRUNCATE = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_MEMORY = common dso_local global i32 0, align 4
@PAGER_JOURNALMODE_WAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sqlite3JournalModename(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @PAGER_JOURNALMODE_DELETE, align 8
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* @PAGER_JOURNALMODE_PERSIST, align 4
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* @PAGER_JOURNALMODE_OFF, align 4
  %13 = icmp eq i32 %12, 2
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @PAGER_JOURNALMODE_TRUNCATE, align 4
  %17 = icmp eq i32 %16, 3
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* @PAGER_JOURNALMODE_MEMORY, align 4
  %21 = icmp eq i32 %20, 4
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @PAGER_JOURNALMODE_WAL, align 4
  %25 = icmp eq i32 %24, 5
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @ArraySize(i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @sqlite3JournalModename.azModeName, i64 0, i64 0))
  %33 = icmp sle i32 %31, %32
  br label %34

34:                                               ; preds = %30, %1
  %35 = phi i1 [ false, %1 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @ArraySize(i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @sqlite3JournalModename.azModeName, i64 0, i64 0))
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i8* null, i8** %2, align 8
  br label %47

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [6 x i8*], [6 x i8*]* @sqlite3JournalModename.azModeName, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %2, align 8
  br label %47

47:                                               ; preds = %42, %41
  %48 = load i8*, i8** %2, align 8
  ret i8* %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ArraySize(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
