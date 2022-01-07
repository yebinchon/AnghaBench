; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_grow_output_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_grow_output_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.output_buffer }
%struct.output_buffer = type { i32, i32, i8* }

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @grow_output_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_output_buffer(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.output_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.output_buffer* %10, %struct.output_buffer** %6, align 8
  %11 = load %struct.output_buffer*, %struct.output_buffer** %6, align 8
  %12 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.output_buffer*, %struct.output_buffer** %6, align 8
  %15 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %16, %17
  %19 = add nsw i32 %18, 4
  %20 = icmp slt i32 %13, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %2
  %22 = load %struct.output_buffer*, %struct.output_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 2, %24
  %26 = load %struct.output_buffer*, %struct.output_buffer** %6, align 8
  %27 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @max(i32 %25, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %33 = load %struct.output_buffer*, %struct.output_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @writeroutput_realloc(%struct.TYPE_4__* %32, i8* %35, i32 %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %21
  %41 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %41, i32* %3, align 4
  br label %51

42:                                               ; preds = %21
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.output_buffer*, %struct.output_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.output_buffer*, %struct.output_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %2
  %50 = load i32, i32* @S_OK, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %40
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @writeroutput_realloc(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
