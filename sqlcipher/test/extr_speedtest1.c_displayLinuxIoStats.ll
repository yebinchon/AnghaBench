; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_displayLinuxIoStats.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_speedtest1.c_displayLinuxIoStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8* }

@.str = private unnamed_addr constant [12 x i8] c"/proc/%d/io\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@displayLinuxIoStats.aTrans = internal constant [7 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0) }], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"rchar: \00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Bytes received by read():\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"wchar: \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Bytes sent to write():\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"syscr: \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Read() system calls:\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"syscw: \00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Write() system calls:\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"read_bytes: \00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Bytes rcvd from storage:\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"write_bytes: \00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Bytes sent to storage:\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"cancelled_write_bytes: \00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Cancelled write bytes:\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"-- %-28s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @displayLinuxIoStats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @displayLinuxIoStats(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [200 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = getelementptr inbounds [200 x i8], [200 x i8]* %4, i64 0, i64 0
  %8 = call i32 (...) @getpid()
  %9 = call i32 @sqlite3_snprintf(i32 200, i8* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = getelementptr inbounds [200 x i8], [200 x i8]* %4, i64 0, i64 0
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %62

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %58, %15
  %17 = getelementptr inbounds [200 x i8], [200 x i8]* %4, i64 0, i64 0
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @fgets(i8* %17, i32 200, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %59

21:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %55, %21
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 7
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @displayLinuxIoStats.aTrans, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 16
  %32 = call i64 @strlen(i8* %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @displayLinuxIoStats.aTrans, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 16
  %39 = getelementptr inbounds [200 x i8], [200 x i8]* %4, i64 0, i64 0
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @strncmp(i8* %38, i8* %39, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %26
  %44 = load i32*, i32** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [7 x %struct.anon], [7 x %struct.anon]* @displayLinuxIoStats.aTrans, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [200 x i8], [200 x i8]* %4, i64 0, i64 %51
  %53 = call i32 @fprintf(i32* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %49, i8* %52)
  br label %58

54:                                               ; preds = %26
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %22

58:                                               ; preds = %43, %22
  br label %16

59:                                               ; preds = %16
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @fclose(i32* %60)
  br label %62

62:                                               ; preds = %59, %14
  ret void
}

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
