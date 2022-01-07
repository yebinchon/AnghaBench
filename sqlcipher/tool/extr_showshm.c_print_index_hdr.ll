; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_showshm.c_print_index_hdr.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_showshm.c_print_index_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FG_NBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Wal-index version\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"unused padding\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"transaction counter\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"1 when initialized\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"true if WAL cksums are bigendian\00", align 1
@FG_PGSZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"database page size\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mxFrame\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Size of database in pages\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Cksum of last frame in -wal\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Salt values from the -wal\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Cksum over all prior fields\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @print_index_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_index_hdr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 1
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ true, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 48, i32 0
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 0, %20
  %22 = load i32, i32* @FG_NBO, align 4
  %23 = call i32 @print_decode_line(i8* %19, i32 %21, i32 4, i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 4, %25
  %27 = call i32 @print_decode_line(i8* %24, i32 %26, i32 4, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 8, %29
  %31 = load i32, i32* @FG_NBO, align 4
  %32 = call i32 @print_decode_line(i8* %28, i32 %30, i32 4, i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 12, %34
  %36 = call i32 @print_decode_line(i8* %33, i32 %35, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 13, %38
  %40 = call i32 @print_decode_line(i8* %37, i32 %39, i32 1, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 14, %42
  %44 = load i32, i32* @FG_PGSZ, align 4
  %45 = call i32 @print_decode_line(i8* %41, i32 %43, i32 2, i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 16, %47
  %49 = load i32, i32* @FG_NBO, align 4
  %50 = call i32 @print_decode_line(i8* %46, i32 %48, i32 4, i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 20, %52
  %54 = load i32, i32* @FG_NBO, align 4
  %55 = call i32 @print_decode_line(i8* %51, i32 %53, i32 4, i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i8*, i8** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 24, %57
  %59 = call i32 @print_decode_line(i8* %56, i32 %58, i32 8, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 32, %61
  %63 = call i32 @print_decode_line(i8* %60, i32 %62, i32 8, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 40, %65
  %67 = call i32 @print_decode_line(i8* %64, i32 %66, i32 8, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @print_decode_line(i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
