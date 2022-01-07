; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_test-journal-send.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_test-journal-send.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"GRAPH=graph\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"GRAPH=graph\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"MESSAGE=graph\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"MESSAGE=graph\0A\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"piepapo\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"MESSAGE=foobar\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"VALUE=%i\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"Foobar\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"HUGE=\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"MESSAGE=Huge field attached\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"MESSAGE=uiui\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"VALUE=A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"VALUE=B\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"VALUE=C\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"SINGLETON=1\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"OTHERVALUE=X\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"OTHERVALUE=Y\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"WITH_BINARY=this is a binary value \07\00", align 1
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"Hello World!\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"MESSAGE=Hello World!\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"MESSAGE_ID=52fb62f99e2c49d89cfbf9d6de5e3555\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"PRIORITY=5\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"HOME=%s\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"TERM=%s\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"PAGE_SIZE=%li\00", align 1
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [11 x i8] c"N_CPUS=%li\00", align 1
@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4194304 x i8], align 16
  %7 = alloca [1 x %struct.iovec], align 16
  %8 = alloca [1 x %struct.iovec], align 16
  %9 = alloca [1 x %struct.iovec], align 16
  %10 = alloca [1 x %struct.iovec], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %7, i64 0, i64 0
  %12 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %12, align 16
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %11, i32 0, i32 1
  %14 = call i32 @STRLEN(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %16 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 16
  %17 = getelementptr inbounds %struct.iovec, %struct.iovec* %15, i32 0, i32 1
  %18 = call i32 @STRLEN(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %9, i64 0, i64 0
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %20, align 16
  %21 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 1
  %22 = call i32 @STRLEN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %10, i64 0, i64 0
  %24 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %23, i32 0, i32 1
  %26 = call i32 @STRLEN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  store i32 %26, i32* %25, align 8
  %27 = load i32, i32* @LOG_INFO, align 4
  %28 = call i64 @sd_journal_print(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert_se(i32 %30)
  %32 = call i64 (i8*, i8*, ...) @sd_journal_send(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 7, i8* null)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert_se(i32 %34)
  %36 = load i32, i32* @ENOENT, align 4
  store i32 %36, i32* @errno, align 4
  %37 = call i64 @sd_journal_perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert_se(i32 %39)
  %41 = call i64 @sd_journal_perror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert_se(i32 %43)
  %45 = getelementptr inbounds [4194304 x i8], [4194304 x i8]* %6, i64 0, i64 0
  %46 = call i32 @memset(i8* %45, i8 signext 120, i32 4194304)
  %47 = getelementptr inbounds [4194304 x i8], [4194304 x i8]* %6, i64 0, i64 0
  %48 = call i32 @memcpy(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %49 = getelementptr inbounds [4194304 x i8], [4194304 x i8]* %6, i64 0, i64 0
  %50 = call i32 @char_array_0(i8* %49)
  %51 = getelementptr inbounds [4194304 x i8], [4194304 x i8]* %6, i64 0, i64 0
  %52 = call i64 (i8*, i8*, ...) @sd_journal_send(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i8* %51, i8* null)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert_se(i32 %54)
  %56 = call i64 (i8*, i8*, ...) @sd_journal_send(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0), i8* null)
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert_se(i32 %58)
  %60 = load i32, i32* @LOG_NOTICE, align 4
  %61 = call i32 @syslog(i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %62 = load i32, i32* @LOG_NOTICE, align 4
  %63 = call i64 @sd_journal_print(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert_se(i32 %65)
  %67 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0))
  %68 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0))
  %69 = load i32, i32* @_SC_PAGESIZE, align 4
  %70 = call i32 @sysconf(i32 %69)
  %71 = load i32, i32* @_SC_NPROCESSORS_ONLN, align 4
  %72 = call i32 @sysconf(i32 %71)
  %73 = call i64 (i8*, i8*, ...) @sd_journal_send(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 %72, i8* null)
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert_se(i32 %75)
  %77 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %7, i64 0, i64 0
  %78 = call i64 @sd_journal_sendv(%struct.iovec* %77, i32 1)
  %79 = icmp eq i64 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert_se(i32 %80)
  %82 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %83 = call i64 @sd_journal_sendv(%struct.iovec* %82, i32 1)
  %84 = icmp eq i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert_se(i32 %85)
  %87 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %9, i64 0, i64 0
  %88 = call i64 @sd_journal_sendv(%struct.iovec* %87, i32 1)
  %89 = icmp eq i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert_se(i32 %90)
  %92 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %10, i64 0, i64 0
  %93 = call i64 @sd_journal_sendv(%struct.iovec* %92, i32 1)
  %94 = icmp eq i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert_se(i32 %95)
  %97 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %7, i64 0, i64 0
  %98 = call i64 @sd_journal_sendv(%struct.iovec* %97, i32 1)
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert_se(i32 %100)
  %102 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %8, i64 0, i64 0
  %103 = call i64 @sd_journal_sendv(%struct.iovec* %102, i32 1)
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert_se(i32 %105)
  %107 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %9, i64 0, i64 0
  %108 = call i64 @sd_journal_sendv(%struct.iovec* %107, i32 1)
  %109 = icmp eq i64 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert_se(i32 %110)
  %112 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %10, i64 0, i64 0
  %113 = call i64 @sd_journal_sendv(%struct.iovec* %112, i32 1)
  %114 = icmp eq i64 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @assert_se(i32 %115)
  %117 = call i32 @sleep(i32 1)
  ret i32 0
}

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_journal_print(i32, i8*) #1

declare dso_local i64 @sd_journal_send(i8*, i8*, ...) #1

declare dso_local i64 @sd_journal_perror(i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @char_array_0(i8*) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i32 @sysconf(i32) #1

declare dso_local i64 @sd_journal_sendv(%struct.iovec*, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
