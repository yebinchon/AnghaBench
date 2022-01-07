; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_gzlog.c_gzlog_write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_gzlog.c_gzlog_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log = type { i32, i32, i32, i32, i32, i32 }

@LOGID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".add\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@APPEND_OP = common dso_local global i32 0, align 4
@TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzlog_write(%struct.log* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.log*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.log*, align 8
  store %struct.log* %0, %struct.log** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.log*, %struct.log** %5, align 8
  store %struct.log* %11, %struct.log** %10, align 8
  %12 = load %struct.log*, %struct.log** %10, align 8
  %13 = icmp eq %struct.log* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.log*, %struct.log** %10, align 8
  %16 = getelementptr inbounds %struct.log, %struct.log* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LOGID, align 4
  %19 = call i64 @strcmp(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %3
  store i32 -3, i32* %4, align 4
  br label %105

22:                                               ; preds = %14
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = icmp ule i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  store i32 0, i32* %4, align 4
  br label %105

29:                                               ; preds = %25
  %30 = load %struct.log*, %struct.log** %10, align 8
  %31 = call i64 @log_check(%struct.log* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.log*, %struct.log** %10, align 8
  %35 = call i64 @log_open(%struct.log* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %105

38:                                               ; preds = %33, %29
  %39 = load %struct.log*, %struct.log** %10, align 8
  %40 = getelementptr inbounds %struct.log, %struct.log* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcpy(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.log*, %struct.log** %10, align 8
  %44 = getelementptr inbounds %struct.log, %struct.log* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @O_WRONLY, align 4
  %47 = load i32, i32* @O_CREAT, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @O_TRUNC, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @open(i32 %45, i32 %50, i32 420)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %105

55:                                               ; preds = %38
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @write(i32 %56, i8* %57, i64 %58)
  %60 = load i64, i64* %7, align 8
  %61 = icmp ne i64 %59, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @close(i32 %64)
  %66 = or i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %105

69:                                               ; preds = %55
  %70 = load %struct.log*, %struct.log** %10, align 8
  %71 = call i32 @log_touch(%struct.log* %70)
  %72 = load %struct.log*, %struct.log** %10, align 8
  %73 = load i32, i32* @APPEND_OP, align 4
  %74 = call i64 @log_mark(%struct.log* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 -1, i32* %4, align 4
  br label %105

77:                                               ; preds = %69
  %78 = call i32 @BAIL(i32 8)
  %79 = load %struct.log*, %struct.log** %10, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = call i64 @log_append(%struct.log* %79, i8* %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %105

85:                                               ; preds = %77
  %86 = load %struct.log*, %struct.log** %10, align 8
  %87 = getelementptr inbounds %struct.log, %struct.log* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.log*, %struct.log** %10, align 8
  %90 = getelementptr inbounds %struct.log, %struct.log* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %88, %91
  %93 = ashr i32 %92, 10
  %94 = load %struct.log*, %struct.log** %10, align 8
  %95 = getelementptr inbounds %struct.log, %struct.log* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 10
  %98 = add nsw i32 %93, %97
  %99 = load i32, i32* @TRIGGER, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %85
  store i32 0, i32* %4, align 4
  br label %105

102:                                              ; preds = %85
  %103 = load %struct.log*, %struct.log** %10, align 8
  %104 = call i32 @gzlog_compress(%struct.log* %103)
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %102, %101, %84, %76, %68, %54, %37, %28, %21
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @log_check(%struct.log*) #1

declare dso_local i64 @log_open(%struct.log*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @open(i32, i32, i32) #1

declare dso_local i64 @write(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @log_touch(%struct.log*) #1

declare dso_local i64 @log_mark(%struct.log*, i32) #1

declare dso_local i32 @BAIL(i32) #1

declare dso_local i64 @log_append(%struct.log*, i8*, i64) #1

declare dso_local i32 @gzlog_compress(%struct.log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
