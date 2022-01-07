; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_gzlog.c_gzlog_open.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/zlib/examples/extr_gzlog.c_gzlog_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log = type { i32, %struct.log*, %struct.log*, %struct.log* }

@LOGID = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.log* @gzlog_open(i8* %0) #0 {
  %2 = alloca %struct.log*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.log*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store %struct.log* null, %struct.log** %2, align 8
  br label %68

14:                                               ; preds = %8
  %15 = call i8* @malloc(i64 32)
  %16 = bitcast i8* %15 to %struct.log*
  store %struct.log* %16, %struct.log** %5, align 8
  %17 = load %struct.log*, %struct.log** %5, align 8
  %18 = icmp eq %struct.log* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store %struct.log* null, %struct.log** %2, align 8
  br label %68

20:                                               ; preds = %14
  %21 = load %struct.log*, %struct.log** %5, align 8
  %22 = getelementptr inbounds %struct.log, %struct.log* %21, i32 0, i32 3
  %23 = load %struct.log*, %struct.log** %22, align 8
  %24 = load i8*, i8** @LOGID, align 8
  %25 = call i32 @strcpy(%struct.log* %23, i8* %24)
  %26 = load %struct.log*, %struct.log** %5, align 8
  %27 = getelementptr inbounds %struct.log, %struct.log* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i64 @strlen(i8* %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 9
  %32 = call i8* @malloc(i64 %31)
  %33 = bitcast i8* %32 to %struct.log*
  %34 = load %struct.log*, %struct.log** %5, align 8
  %35 = getelementptr inbounds %struct.log, %struct.log* %34, i32 0, i32 1
  store %struct.log* %33, %struct.log** %35, align 8
  %36 = load %struct.log*, %struct.log** %5, align 8
  %37 = getelementptr inbounds %struct.log, %struct.log* %36, i32 0, i32 1
  %38 = load %struct.log*, %struct.log** %37, align 8
  %39 = icmp eq %struct.log* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %20
  %41 = load %struct.log*, %struct.log** %5, align 8
  %42 = call i32 @free(%struct.log* %41)
  store %struct.log* null, %struct.log** %2, align 8
  br label %68

43:                                               ; preds = %20
  %44 = load %struct.log*, %struct.log** %5, align 8
  %45 = getelementptr inbounds %struct.log, %struct.log* %44, i32 0, i32 1
  %46 = load %struct.log*, %struct.log** %45, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @strcpy(%struct.log* %46, i8* %47)
  %49 = load %struct.log*, %struct.log** %5, align 8
  %50 = getelementptr inbounds %struct.log, %struct.log* %49, i32 0, i32 1
  %51 = load %struct.log*, %struct.log** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds %struct.log, %struct.log* %51, i64 %52
  %54 = load %struct.log*, %struct.log** %5, align 8
  %55 = getelementptr inbounds %struct.log, %struct.log* %54, i32 0, i32 2
  store %struct.log* %53, %struct.log** %55, align 8
  %56 = load %struct.log*, %struct.log** %5, align 8
  %57 = call i64 @log_open(%struct.log* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %43
  %60 = load %struct.log*, %struct.log** %5, align 8
  %61 = getelementptr inbounds %struct.log, %struct.log* %60, i32 0, i32 1
  %62 = load %struct.log*, %struct.log** %61, align 8
  %63 = call i32 @free(%struct.log* %62)
  %64 = load %struct.log*, %struct.log** %5, align 8
  %65 = call i32 @free(%struct.log* %64)
  store %struct.log* null, %struct.log** %2, align 8
  br label %68

66:                                               ; preds = %43
  %67 = load %struct.log*, %struct.log** %5, align 8
  store %struct.log* %67, %struct.log** %2, align 8
  br label %68

68:                                               ; preds = %66, %59, %40, %19, %13
  %69 = load %struct.log*, %struct.log** %2, align 8
  ret %struct.log* %69
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strcpy(%struct.log*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(%struct.log*) #1

declare dso_local i64 @log_open(%struct.log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
