; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_dbfuzz2.c_memtraceFree.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_dbfuzz2.c_memtraceFree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*)*, i32 (i8*)* }

@memtraceOut = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"MEMTRACE: free %d bytes\0A\00", align 1
@memtraceBase = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @memtraceFree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memtraceFree(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %19

6:                                                ; preds = %1
  %7 = load i64, i64* @memtraceOut, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %6
  %10 = load i64, i64* @memtraceOut, align 8
  %11 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memtraceBase, i32 0, i32 0), align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 %11(i8* %12)
  %14 = call i32 @fprintf(i64 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %9, %6
  %16 = load i32 (i8*)*, i32 (i8*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @memtraceBase, i32 0, i32 1), align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 %16(i8* %17)
  br label %19

19:                                               ; preds = %15, %5
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
