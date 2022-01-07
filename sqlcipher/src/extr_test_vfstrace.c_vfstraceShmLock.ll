; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstraceShmLock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstraceShmLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*, i32, i32, i32)* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"|0\00", align 1
@SQLITE_SHM_UNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"|UNLOCK\00", align 1
@SQLITE_SHM_LOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"|LOCK\00", align 1
@SQLITE_SHM_SHARED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"|SHARED\00", align 1
@SQLITE_SHM_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"|EXCLUSIVE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"|0x%x\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s.xShmLock(%s,ofst=%d,n=%d,%s)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @vfstraceShmLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfstraceShmLock(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [100 x i8], align 16
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %10, align 8
  store i32 0, i32* %13, align 4
  %19 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %20 = call i32 @memcpy(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 3)
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SQLITE_SHM_UNLOCK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %27 = call i32 @strappend(i8* %26, i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SQLITE_SHM_LOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %35 = call i32 @strappend(i8* %34, i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SQLITE_SHM_SHARED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %43 = call i32 @strappend(i8* %42, i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SQLITE_SHM_EXCLUSIVE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %51 = call i32 @strappend(i8* %50, i32* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, -16
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 100, %58
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 %62
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @sqlite3_snprintf(i32 %60, i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %56, %52
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 1
  %77 = call i32 @vfstrace_printf(%struct.TYPE_8__* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %70, i32 %73, i32 %74, i32 %75, i8* %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32 (%struct.TYPE_10__*, i32, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32, i32)** %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 %84(%struct.TYPE_10__* %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @vfstrace_print_errcode(%struct.TYPE_8__* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strappend(i8*, i32*, i8*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @vfstrace_printf(%struct.TYPE_8__*, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @vfstrace_print_errcode(%struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
