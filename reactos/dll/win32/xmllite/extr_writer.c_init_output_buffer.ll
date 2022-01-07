; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_init_output_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_init_output_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.output_buffer }
%struct.output_buffer = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Failed to get code page for specified encoding.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @init_output_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_output_buffer(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.output_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.output_buffer* %9, %struct.output_buffer** %4, align 8
  store i32 8192, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @get_code_page(i32 %12, i32* %6)
  store i32 %13, i32* %7, align 4
  %14 = call i64 @FAILED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @WARN(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = call i32 @writeroutput_alloc(%struct.TYPE_4__* %19, i32 8192)
  %21 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %28, i32* %2, align 4
  br label %42

29:                                               ; preds = %18
  %30 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @memset(i32 %32, i32 0, i32 4)
  %34 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %34, i32 0, i32 0
  store i32 8192, i32* %35, align 8
  %36 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @S_OK, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %29, %27
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @get_code_page(i32, i32*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @writeroutput_alloc(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
