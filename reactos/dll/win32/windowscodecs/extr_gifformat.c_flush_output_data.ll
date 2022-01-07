; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_flush_output_data.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_flush_output_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_stream = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @flush_output_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_output_data(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.output_stream*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.output_stream*
  store %struct.output_stream* %6, %struct.output_stream** %4, align 8
  %7 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %8 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %1
  %13 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %14 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %17 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %16, i32 0, i32 0
  %18 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %19 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i64 @IStream_Write(i32 %15, %struct.TYPE_2__* %17, i32 %24, i32* null)
  %26 = load i64, i64* @S_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %43

29:                                               ; preds = %12
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %32 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  %34 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %35 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %38 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %37, i32 0, i32 0
  %39 = call i64 @IStream_Write(i32 %36, %struct.TYPE_2__* %38, i32 4, i32* null)
  %40 = load i64, i64* @S_OK, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %30, %28
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @IStream_Write(i32, %struct.TYPE_2__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
