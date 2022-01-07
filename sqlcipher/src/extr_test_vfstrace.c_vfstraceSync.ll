; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstraceSync.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_vfstrace.c_vfstraceSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_9__*, i32)* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"|0\00", align 1
@SQLITE_SYNC_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"|FULL\00", align 1
@SQLITE_SYNC_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"|NORMAL\00", align 1
@SQLITE_SYNC_DATAONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"|DATAONLY\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"|0x%x\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s.xSync(%s,%s)\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c" -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @vfstraceSync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfstraceSync(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [100 x i8], align 16
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %16 = call i32 @memcpy(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 3)
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SQLITE_SYNC_FULL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %23 = call i32 @strappend(i8* %22, i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SQLITE_SYNC_NORMAL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %31 = call i32 @strappend(i8* %30, i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SQLITE_SYNC_DATAONLY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %40 = call i32 @strappend(i8* %39, i32* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @SQLITE_SYNC_FULL, align 4
  %44 = load i32, i32* @SQLITE_SYNC_DATAONLY, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = sub i64 100, %51
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 %55
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @sqlite3_snprintf(i32 %53, i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %49, %41
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 1
  %68 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @vfstrace_printf(%struct.TYPE_7__* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %63, i32 %66, i8* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %74, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 %75(%struct.TYPE_9__* %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (%struct.TYPE_7__*, i8*, i32, ...) @vfstrace_printf(%struct.TYPE_7__* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strappend(i8*, i32*, i8*) #1

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @vfstrace_printf(%struct.TYPE_7__*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
