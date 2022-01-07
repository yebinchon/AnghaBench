; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_index_usage.c_usage.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_index_usage.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Usage: %s [OPTIONS] DATABASE LOG\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [468 x i8] c"DATABASE is an SQLite database against which various statements\0Ahave been run.  The SQL text is stored in LOG.  LOG is an SQLite\0Adatabase with this schema:\0A\0A    CREATE TABLE sqllog(sql TEXT);\0A\0AThis utility program analyzes statements contained in LOG and prints\0Aa report showing how many times each index in DATABASE is used by the\0Astatements in LOG.\0A\0ADATABASE only needs to contain the schema used by the statements in\0ALOG. The content can be removed from DATABASE.\0A\00", align 1
@.str.2 = private unnamed_addr constant [203 x i8] c"\0AOPTIONS:\0A\0A    --progress N   Show a progress message after every N input rows\0A    -q             Omit error message when parsing log entries\0A    --using NAME   Print SQL statements that use index NAME\0A\00", align 1
@.str.3 = private unnamed_addr constant [137 x i8] c"\0AAnalysis will be done by SQLite version %s dated %.20s\0Acheckin number %.40s. Different versions\0Aof SQLite might use different indexes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([468 x i8], [468 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([203 x i8], [203 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i8* (...) @sqlite3_libversion()
  %8 = call i8* (...) @sqlite3_sourceid()
  %9 = call i8* (...) @sqlite3_sourceid()
  %10 = getelementptr inbounds i8, i8* %9, i64 21
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str.3, i64 0, i64 0), i8* %7, i8* %8, i8* %10)
  %12 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @sqlite3_libversion(...) #1

declare dso_local i8* @sqlite3_sourceid(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
