; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_fileOpen.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showdb.c_fileOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32, i32 }

@g = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@SQLITE_FCNTL_FILE_POINTER = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%s: failed to obtain fd for %s (SQLite too old?)\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @fileOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fileOpen(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %8 = icmp slt i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 1), align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  store i8* bitcast (i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 3) to i8*), i8** %6, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @openDatabase(i8* %14, i8* %15)
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 2), align 8
  %18 = load i32, i32* @SQLITE_FCNTL_FILE_POINTER, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @sqlite3_file_control(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @SQLITE_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %13
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %13
  br label %44

31:                                               ; preds = %2
  %32 = load i8*, i8** %4, align 8
  %33 = load i32, i32* @O_RDONLY, align 4
  %34 = call i64 @open(i8* %32, i32 %33)
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g, i32 0, i32 0), align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %31
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* %40)
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %30
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @openDatabase(i8*, i8*) #1

declare dso_local i32 @sqlite3_file_control(i32, i8*, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @open(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
