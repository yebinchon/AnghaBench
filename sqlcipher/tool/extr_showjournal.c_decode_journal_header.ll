; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showjournal.c_decode_journal_header.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showjournal.c_decode_journal_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Header at offset %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Header part 1 (3654616569)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Header part 2 (547447767)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"page count\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"chksum nonce\00", align 1
@cksumNonce = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"initial database size in pages\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"sector size\00", align 1
@sectorSize = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"page size\00", align 1
@pageSize = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @decode_journal_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_journal_header(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i8* @read_content(i32 64, i32 %5)
  store i8* %6, i8** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @print_decode_line(i8* %9, i32 0, i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i8*, i8** %3, align 8
  %12 = call i8* @print_decode_line(i8* %11, i32 4, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @print_decode_line(i8* %13, i32 8, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @print_decode_line(i8* %16, i32 12, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i8* %17, i8** @cksumNonce, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i8* @print_decode_line(i8* %18, i32 16, i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @print_decode_line(i8* %20, i32 20, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i8* %21, i8** @sectorSize, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i8* @print_decode_line(i8* %22, i32 24, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i8* %23, i8** @pageSize, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @print_decode_line(i8* %24, i32 28, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %26 = load i8*, i8** %3, align 8
  %27 = call i8* @print_decode_line(i8* %26, i32 32, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @print_decode_line(i8* %28, i32 36, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %30 = load i8*, i8** %3, align 8
  %31 = call i8* @print_decode_line(i8* %30, i32 40, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i8* @read_content(i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i8* @print_decode_line(i8*, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
