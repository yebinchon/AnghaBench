; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerSetPagesize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_sqlite3PagerSetPagesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, i64, i8*, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MAX_PAGE_SIZE = common dso_local global i32 0, align 4
@PAGER_OPEN = common dso_local global i64 0, align 8
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3PagerSetPagesize(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @SQLITE_OK, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 512
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @SQLITE_MAX_PAGE_SIZE, align 4
  %22 = icmp sle i32 %20, %21
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i1 [ true, %3 ], [ %24, %23 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %130

38:                                               ; preds = %33, %25
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @sqlite3PcacheRefCount(i32 %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %130

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %130

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %130

53:                                               ; preds = %47
  store i8* null, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PAGER_OPEN, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @isOpen(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sqlite3OsFileSize(i32 %68, i32* %10)
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %65, %59, %53
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @SQLITE_OK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 8
  %77 = call i64 @sqlite3PageMalloc(i32 %76)
  %78 = inttoptr i64 %77 to i8*
  store i8* %78, i8** %9, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %82, i32* %7, align 4
  br label %89

83:                                               ; preds = %74
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = call i32 @memset(i8* %87, i32 0, i32 8)
  br label %89

89:                                               ; preds = %83, %81
  br label %90

90:                                               ; preds = %89, %70
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @SQLITE_OK, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = call i32 @pager_reset(%struct.TYPE_6__* %95)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @sqlite3PcacheSetPageSize(i32 %99, i32 %100)
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %94, %90
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @SQLITE_OK, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %126

106:                                              ; preds = %102
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @sqlite3PageFree(i8* %109)
  %111 = load i8*, i8** %9, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* %8, align 4
  %119 = sdiv i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %129

126:                                              ; preds = %102
  %127 = load i8*, i8** %9, align 8
  %128 = call i32 @sqlite3PageFree(i8* %127)
  br label %129

129:                                              ; preds = %126, %106
  br label %130

130:                                              ; preds = %129, %47, %44, %38, %33
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %5, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @SQLITE_OK, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %162

138:                                              ; preds = %130
  %139 = load i32, i32* %6, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %141, %138
  %146 = load i32, i32* %6, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = icmp slt i32 %149, 1000
  br label %151

151:                                              ; preds = %148, %145
  %152 = phi i1 [ false, %145 ], [ %150, %148 ]
  %153 = zext i1 %152 to i32
  %154 = call i32 @assert(i32 %153)
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = call i32 @pagerReportSize(%struct.TYPE_6__* %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = call i32 @pagerFixMaplimit(%struct.TYPE_6__* %160)
  br label %162

162:                                              ; preds = %151, %130
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3PcacheRefCount(i32) #1

declare dso_local i64 @isOpen(i32) #1

declare dso_local i32 @sqlite3OsFileSize(i32, i32*) #1

declare dso_local i64 @sqlite3PageMalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @pager_reset(%struct.TYPE_6__*) #1

declare dso_local i32 @sqlite3PcacheSetPageSize(i32, i32) #1

declare dso_local i32 @sqlite3PageFree(i8*) #1

declare dso_local i32 @pagerReportSize(%struct.TYPE_6__*) #1

declare dso_local i32 @pagerFixMaplimit(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
