; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerBegin.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerBegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PAGER_READER = common dso_local global i64 0, align 8
@PAGER_ERROR = common dso_local global i64 0, align 8
@EXCLUSIVE_LOCK = common dso_local global i32 0, align 4
@RESERVED_LOCK = common dso_local global i32 0, align 4
@PAGER_WRITER_LOCKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"TRANSACTION %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3PagerBegin(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @SQLITE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  br label %163

18:                                               ; preds = %3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGER_READER, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PAGER_ERROR, align 8
  %29 = icmp slt i64 %27, %28
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ false, %18 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 10
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PAGER_READER, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @ALWAYS(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %156

46:                                               ; preds = %30
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = call i64 @pagerUseWal(%struct.TYPE_8__* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %86

56:                                               ; preds = %46
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 9
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %56
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @sqlite3WalExclusiveMode(i32 %64, i32 -1)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = load i32, i32* @EXCLUSIVE_LOCK, align 4
  %70 = call i32 @pagerLockDb(%struct.TYPE_8__* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @SQLITE_OK, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %163

76:                                               ; preds = %67
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @sqlite3WalExclusiveMode(i32 %79, i32 1)
  br label %81

81:                                               ; preds = %76, %61, %56
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sqlite3WalBeginWriteTransaction(i32 %84)
  store i32 %85, i32* %8, align 4
  br label %101

86:                                               ; preds = %46
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = load i32, i32* @RESERVED_LOCK, align 4
  %89 = call i32 @pagerLockDb(%struct.TYPE_8__* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @SQLITE_OK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = load i32, i32* @EXCLUSIVE_LOCK, align 4
  %99 = call i32 @pager_wait_on_lock(%struct.TYPE_8__* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %96, %93, %86
  br label %101

101:                                              ; preds = %100, %81
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @SQLITE_OK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %105, %101
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @SQLITE_OK, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %136, label %130

130:                                              ; preds = %126
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @PAGER_READER, align 8
  %135 = icmp eq i64 %133, %134
  br label %136

136:                                              ; preds = %130, %126
  %137 = phi i1 [ true, %126 ], [ %135, %130 ]
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* @SQLITE_OK, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %136
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %148 = icmp eq i64 %146, %147
  br label %149

149:                                              ; preds = %143, %136
  %150 = phi i1 [ true, %136 ], [ %148, %143 ]
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = call i32 @assert_pager_state(%struct.TYPE_8__* %153)
  %155 = call i32 @assert(i32 %154)
  br label %156

156:                                              ; preds = %149, %30
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = call i32 @PAGERID(%struct.TYPE_8__* %157)
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = call i32 @PAGERTRACE(i8* %160)
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %156, %74, %14
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i64 @pagerUseWal(%struct.TYPE_8__*) #1

declare dso_local i64 @sqlite3WalExclusiveMode(i32, i32) #1

declare dso_local i32 @pagerLockDb(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sqlite3WalBeginWriteTransaction(i32) #1

declare dso_local i32 @pager_wait_on_lock(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_8__*) #1

declare dso_local i32 @PAGERTRACE(i8*) #1

declare dso_local i32 @PAGERID(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
