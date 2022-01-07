; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf_stats.c_dbuf_stats_hash_table_headers.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dbuf_stats.c_dbuf_stats_hash_table_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [202 x i8] c"%-96s | %-119s | %s\0A%-16s %-8s %-8s %-8s %-8s %-10s %-8s %-5s %-5s %-7s %3s | %-5s %-5s %-9s %-6s %-8s %-12s %-6s %-6s %-6s %-6s %-6s %-8s %-8s %-8s %-6s | %-6s %-6s %-8s %-8s %-6s %-6s %-6s %-8s %-8s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dbuf\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"arcbuf\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dnode\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"pool\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"objset\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"blkid\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"dbsize\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"meta\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"dbholds\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"dbc\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"atype\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"asize\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"mru\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"gmru\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"mfu\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"gmfu\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"l2\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"l2_dattr\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"l2_asize\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"l2_comp\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"aholds\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"dtype\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"btype\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"data_bs\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"meta_bs\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"bsize\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"lvls\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"dholds\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"dsize\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @dbuf_stats_hash_table_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbuf_stats_hash_table_headers(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @snprintf(i8* %5, i64 %6, i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
