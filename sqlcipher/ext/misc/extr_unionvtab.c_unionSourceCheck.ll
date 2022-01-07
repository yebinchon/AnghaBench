; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionSourceCheck.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_unionvtab.c_unionSourceCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"source table schema mismatch\00", align 1
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8**)* @unionSourceCheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unionSourceCheck(%struct.TYPE_4__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %10 = load i8**, i8*** %4, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i8**, i8*** %4, align 8
  %21 = call i8* @unionSourceToStr(i32* %5, %struct.TYPE_4__* %15, i32* %19, i8** %20)
  store i8* %21, i8** %6, align 8
  store i32 1, i32* %7, align 4
  br label %22

22:                                               ; preds = %53, %2
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i8**, i8*** %4, align 8
  %37 = call i8* @unionSourceToStr(i32* %5, %struct.TYPE_4__* %29, i32* %35, i8** %36)
  store i8* %37, i8** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SQLITE_OK, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %28
  %42 = load i8*, i8** %8, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @sqlite3_stricmp(i8* %42, i8* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %48 = load i8**, i8*** %4, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %41, %28
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @sqlite3_free(i8* %51)
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %22

56:                                               ; preds = %22
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @sqlite3_free(i8* %57)
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @unionSourceToStr(i32*, %struct.TYPE_4__*, i32*, i8**) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
