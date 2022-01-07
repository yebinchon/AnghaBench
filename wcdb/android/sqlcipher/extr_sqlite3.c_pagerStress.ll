; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_pagerStress.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_pagerStress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i64, i32, i32*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PGHDR_DIRTY = common dso_local global i32 0, align 4
@SPILLFLAG_ROLLBACK = common dso_local global i32 0, align 4
@SPILLFLAG_OFF = common dso_local global i32 0, align 4
@SPILLFLAG_NOSYNC = common dso_local global i32 0, align 4
@PGHDR_NEED_SYNC = common dso_local global i32 0, align 4
@PAGER_STAT_SPILL = common dso_local global i64 0, align 8
@PAGER_WRITER_CACHEMOD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"STRESS %d page %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_14__*)* @pagerStress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pagerStress(i8* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %9, %struct.TYPE_15__** %6, align 8
  %10 = load i32, i32* @SQLITE_OK, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = icmp eq %struct.TYPE_15__* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PGHDR_DIRTY, align 4
  %22 = and i32 %20, %21
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @NEVER(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @SQLITE_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %148

31:                                               ; preds = %2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SPILLFLAG_ROLLBACK, align 4
  %36 = and i32 %34, %35
  %37 = call i32 @testcase(i32 %36)
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SPILLFLAG_OFF, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @testcase(i32 %42)
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SPILLFLAG_NOSYNC, align 4
  %48 = and i32 %46, %47
  %49 = call i32 @testcase(i32 %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %31
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SPILLFLAG_ROLLBACK, align 4
  %59 = load i32, i32* @SPILLFLAG_OFF, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63, %54
  %71 = load i32, i32* @SQLITE_OK, align 4
  store i32 %71, i32* %3, align 4
  br label %148

72:                                               ; preds = %63, %31
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @PAGER_STAT_SPILL, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = call i64 @pagerUseWal(%struct.TYPE_15__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %72
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = call i32 @subjournalPageIfRequired(%struct.TYPE_14__* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @SQLITE_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = call i32 @pagerWalFrames(%struct.TYPE_15__* %92, %struct.TYPE_14__* %93, i32 0, i32 0)
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %91, %85
  br label %129

96:                                               ; preds = %72
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %96
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @PAGER_WRITER_CACHEMOD, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103, %96
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %111 = call i32 @syncJournal(%struct.TYPE_15__* %110, i32 1)
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %109, %103
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @SQLITE_OK, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %112
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @PGHDR_NEED_SYNC, align 4
  %121 = and i32 %119, %120
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = call i32 @pager_write_pagelist(%struct.TYPE_15__* %125, %struct.TYPE_14__* %126)
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %116, %112
  br label %129

129:                                              ; preds = %128, %95
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @SQLITE_OK, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %129
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %135 = call i32 @PAGERID(%struct.TYPE_15__* %134)
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = call i32 @PAGERTRACE(i8* %140)
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %143 = call i32 @sqlite3PcacheMakeClean(%struct.TYPE_14__* %142)
  br label %144

144:                                              ; preds = %133, %129
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @pager_error(%struct.TYPE_15__* %145, i32 %146)
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %70, %29
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_15__*) #1

declare dso_local i32 @subjournalPageIfRequired(%struct.TYPE_14__*) #1

declare dso_local i32 @pagerWalFrames(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @syncJournal(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @pager_write_pagelist(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @PAGERTRACE(i8*) #1

declare dso_local i32 @PAGERID(%struct.TYPE_15__*) #1

declare dso_local i32 @sqlite3PcacheMakeClean(%struct.TYPE_14__*) #1

declare dso_local i32 @pager_error(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
