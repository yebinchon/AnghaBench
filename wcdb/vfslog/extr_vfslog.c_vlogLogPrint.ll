; ModuleID = '/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogLogPrint.c'
source_filename = "/home/carl/AnghaBench/wcdb/vfslog/extr_vfslog.c_vlogLogPrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\22%.*w\22\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%lld,%lld,%s,%d,%s,%s,%s,%d\0A\00", align 1
@VLOG_OPNAME = common dso_local global i32* null, align 8
@VFSLOG_GZIP_BLOCK_SIZE = common dso_local global i64 0, align 8
@Z_FINISH = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i32, i32, i32, i8*, i32)* @vlogLogPrint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlogLogPrint(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [40 x i8], align 16
  %18 = alloca [40 x i8], align 16
  %19 = alloca [1024 x i8], align 16
  %20 = alloca [2048 x i8], align 16
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24, %8
  br label %126

33:                                               ; preds = %24
  %34 = load i32, i32* %13, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  %38 = load i32, i32* %13, align 4
  %39 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 40, i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %42

40:                                               ; preds = %33
  %41 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  store i8 0, i8* %41, align 16
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %14, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = getelementptr inbounds [40 x i8], [40 x i8]* %18, i64 0, i64 0
  %47 = load i32, i32* %14, align 4
  %48 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 40, i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %51

49:                                               ; preds = %42
  %50 = getelementptr inbounds [40 x i8], [40 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %50, align 16
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 (i32, i8*, i8*, i32, ...) @sqlite3_snprintf(i32 1024, i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 1020, i8* %56)
  br label %60

58:                                               ; preds = %51
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %59, align 16
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** @VLOG_OPNAME, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = getelementptr inbounds [40 x i8], [40 x i8]* %17, i64 0, i64 0
  %75 = getelementptr inbounds [40 x i8], [40 x i8]* %18, i64 0, i64 0
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @snprintf(i8* %61, i32 2048, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %62, i32 %63, i32 %68, i32 %73, i8* %74, i8* %75, i8* %76, i32 %77)
  store i32 %78, i32* %21, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @sqlite3_mutex_enter(i32 %81)
  %83 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %84 = load i32, i32* %21, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @fwrite(i8* %83, i32 1, i32 %84, i32 %87)
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @fflush(i32 %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds [2048 x i8], [2048 x i8]* %20, i64 0, i64 0
  %97 = load i32, i32* %21, align 4
  %98 = call i32 @gzwrite(i32 %95, i8* %96, i32 %97)
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @ftell(i32 %101)
  %103 = load i64, i64* @VFSLOG_GZIP_BLOCK_SIZE, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %60
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @Z_FINISH, align 4
  %110 = call i32 @gzflush(i32 %108, i32 %109)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @SEEK_SET, align 4
  %115 = call i32 @fseek(i32 %113, i32 0, i32 %114)
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @fileno(i32 %118)
  %120 = call i32 @ftruncate(i32 %119, i32 0)
  br label %121

121:                                              ; preds = %105, %60
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @sqlite3_mutex_leave(i32 %124)
  br label %126

126:                                              ; preds = %121, %32
  ret void
}

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @gzwrite(i32, i8*, i32) #1

declare dso_local i64 @ftell(i32) #1

declare dso_local i32 @gzflush(i32, i32) #1

declare dso_local i32 @fseek(i32, i32, i32) #1

declare dso_local i32 @ftruncate(i32, i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
