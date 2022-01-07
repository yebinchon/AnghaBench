; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_writeroutput_flush_stream.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_writeroutput_flush_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.output_buffer }
%struct.output_buffer = type { i64, i64 }

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"write to stream failed (0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @writeroutput_flush_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeroutput_flush_stream(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.output_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @S_OK, align 4
  store i32 %16, i32* %2, align 4
  br label %58

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store %struct.output_buffer* %19, %struct.output_buffer** %4, align 8
  br label %20

20:                                               ; preds = %51, %17
  store i64 0, i64* %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @ISequentialStream_Write(i32 %23, i64 %28, i64 %31, i64* %5)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @FAILED(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %20
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %58

42:                                               ; preds = %20
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %42
  %52 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %53 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %20, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @S_OK, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %36, %15
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ISequentialStream_Write(i32, i64, i64, i64*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
