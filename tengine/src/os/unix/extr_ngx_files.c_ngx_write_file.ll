; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_files.c_ngx_write_file.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_files.c_ngx_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"write: %d, %p, %uz, %O\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@NGX_LOG_CRIT = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"lseek() \22%s\22 failed\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_EINTR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"write() was interrupted\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"write() \22%s\22 failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_write_file(%struct.TYPE_5__* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ngx_log_debug4(i32 %13, i32 %16, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19, i32* %20, i64 %21, i32 %22)
  store i32 0, i32* %11, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @SEEK_SET, align 4
  %35 = call i32 @lseek(i32 %32, i32 %33, i32 %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load i32, i32* @NGX_LOG_CRIT, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* @ngx_errno, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ngx_log_error(i32 %38, i32 %41, i64 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @NGX_ERROR, align 4
  store i32 %48, i32* %5, align 4
  br label %115

49:                                               ; preds = %29
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %4
  br label %54

54:                                               ; preds = %110, %71, %53
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @write(i32 %57, i32* %61, i64 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %90

66:                                               ; preds = %54
  %67 = load i64, i64* @ngx_errno, align 8
  store i64 %67, i64* %12, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @NGX_EINTR, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @ngx_log_debug0(i32 %72, i32 %75, i64 %76, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %54

78:                                               ; preds = %66
  %79 = load i32, i32* @NGX_LOG_CRIT, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ngx_log_error(i32 %79, i32 %82, i64 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @NGX_ERROR, align 4
  store i32 %89, i32* %5, align 4
  br label %115

90:                                               ; preds = %54
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %8, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %90
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %5, align 4
  br label %115

110:                                              ; preds = %90
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %8, align 8
  %114 = sub i64 %113, %112
  store i64 %114, i64* %8, align 8
  br label %54

115:                                              ; preds = %108, %78, %37
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @ngx_log_debug4(i32, i32, i32, i8*, i32, i32*, i64, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i64, i8*, i32) #1

declare dso_local i32 @write(i32, i32*, i64) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
