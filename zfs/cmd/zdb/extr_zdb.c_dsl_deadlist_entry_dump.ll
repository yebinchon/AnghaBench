; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dsl_deadlist_entry_dump.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb.c_dsl_deadlist_entry_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }

@dump_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"mintxg %llu -> obj %llu\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"mintxg %llu -> obj %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @dsl_deadlist_entry_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_deadlist_entry_dump(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca [128 x i8], align 16
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @ASSERT(i32 %8)
  %10 = load i32*, i32** @dump_opt, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 100
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 5
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @snprintf(i8* %15, i32 128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %29 = call i32 @dump_full_bpobj(%struct.TYPE_5__* %27, i8* %28, i32 0)
  br label %41

30:                                               ; preds = %2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %39)
  br label %41

41:                                               ; preds = %30, %14
  ret i32 0
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @dump_full_bpobj(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
