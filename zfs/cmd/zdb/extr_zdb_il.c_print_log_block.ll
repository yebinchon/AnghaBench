; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb_il.c_print_log_block.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zdb/extr_zdb_il.c_print_log_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64* }

@BP_SPRINTF_LEN = common dso_local global i32 0, align 4
@dump_opt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"already claimed\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"will claim\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"won't claim\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"\09Block seqno %llu, %s%s\0A\00", align 1
@ZIL_ZC_SEQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*, i8*, i64)* @print_log_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_log_block(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @BP_SPRINTF_LEN, align 4
  %16 = add nsw i32 %15, 10
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32*, i32** @dump_opt, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 100
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** @dump_opt, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 105
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MAX(i32 %22, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sle i32 %27, 3
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %73

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = icmp sge i32 %31, 5
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = call i32 @strcpy(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @strlen(i8* %19)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %19, i64 %36
  %38 = call i32 @strlen(i8* %19)
  %39 = sext i32 %38 to i64
  %40 = sub i64 %17, %39
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = call i32 @snprintf_blkptr(i8* %37, i32 %41, %struct.TYPE_9__* %42)
  br label %46

44:                                               ; preds = %30
  %45 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %45, align 16
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %62

50:                                               ; preds = %46
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @spa_min_claim_txg(i32 %56)
  %58 = icmp sge i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %61

60:                                               ; preds = %50
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %61

61:                                               ; preds = %60, %59
  br label %62

62:                                               ; preds = %61, %49
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @ZIL_ZC_SEQ, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i8*, i8** %13, align 8
  %72 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %70, i8* %71, i8* %19)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %73

73:                                               ; preds = %62, %29
  %74 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @snprintf_blkptr(i8*, i32, %struct.TYPE_9__*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @spa_min_claim_txg(i32) #2

declare dso_local i32 @printf(i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
