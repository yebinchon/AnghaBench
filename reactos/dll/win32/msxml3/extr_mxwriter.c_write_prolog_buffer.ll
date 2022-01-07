; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_mxwriter.c_write_prolog_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msxml3/extr_mxwriter.c_write_prolog_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64*, i32, i64, i32 }

@write_prolog_buffer.versionW = internal constant [14 x i8] c"<?xml version=", align 1
@write_prolog_buffer.encodingW = internal constant [11 x i8] c" encoding=\22", align 1
@write_prolog_buffer.standaloneW = internal constant [13 x i8] c" standalone=\22", align 1
@write_prolog_buffer.yesW = internal constant [6 x i8] c"yes\22?>", align 1
@write_prolog_buffer.noW = internal constant [5 x i8] c"no\22?>", align 1
@utf16W = common dso_local global i8* null, align 8
@quotW = common dso_local global i8* null, align 8
@MXWriter_Standalone = common dso_local global i64 0, align 8
@VARIANT_TRUE = common dso_local global i64 0, align 8
@crlfW = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @write_prolog_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_prolog_buffer(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @write_prolog_buffer.versionW, i64 0, i64 0))
  %5 = call i32 @write_output_buffer(%struct.TYPE_5__* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @write_prolog_buffer.versionW, i64 0, i64 0), i32 %4)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @write_output_buffer_quoted(%struct.TYPE_5__* %6, i32 %9, i32 -1)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @write_prolog_buffer.encodingW, i64 0, i64 0))
  %13 = call i32 @write_output_buffer(%struct.TYPE_5__* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @write_prolog_buffer.encodingW, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @write_output_buffer(%struct.TYPE_5__* %19, i8* %22, i32 -1)
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = load i8*, i8** @utf16W, align 8
  %27 = load i8*, i8** @utf16W, align 8
  %28 = call i32 @ARRAY_SIZE(i8* %27)
  %29 = sub nsw i32 %28, 1
  %30 = call i32 @write_output_buffer(%struct.TYPE_5__* %25, i8* %26, i32 %29)
  br label %31

31:                                               ; preds = %24, %18
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = load i8*, i8** @quotW, align 8
  %34 = call i32 @write_output_buffer(%struct.TYPE_5__* %32, i8* %33, i32 1)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @write_prolog_buffer.standaloneW, i64 0, i64 0))
  %37 = call i32 @write_output_buffer(%struct.TYPE_5__* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @write_prolog_buffer.standaloneW, i64 0, i64 0), i32 %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @MXWriter_Standalone, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @VARIANT_TRUE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %48 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @write_prolog_buffer.yesW, i64 0, i64 0))
  %49 = call i32 @write_output_buffer(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @write_prolog_buffer.yesW, i64 0, i64 0), i32 %48)
  br label %54

50:                                               ; preds = %31
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = call i32 @ARRAY_SIZE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_prolog_buffer.noW, i64 0, i64 0))
  %53 = call i32 @write_output_buffer(%struct.TYPE_5__* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @write_prolog_buffer.noW, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = load i8*, i8** @crlfW, align 8
  %57 = load i8*, i8** @crlfW, align 8
  %58 = call i32 @ARRAY_SIZE(i8* %57)
  %59 = call i32 @write_output_buffer(%struct.TYPE_5__* %55, i8* %56, i32 %58)
  %60 = load i32, i32* @TRUE, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  ret void
}

declare dso_local i32 @write_output_buffer(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @write_output_buffer_quoted(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
