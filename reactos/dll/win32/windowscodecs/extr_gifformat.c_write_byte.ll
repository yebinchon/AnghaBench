; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_write_byte.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_gifformat.c_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_stream = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.output_stream*, i8)* @write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_byte(%struct.output_stream* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.output_stream*, align 8
  %5 = alloca i8, align 1
  store %struct.output_stream* %0, %struct.output_stream** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %7 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 255
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %13 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %16 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %15, i32 0, i32 0
  %17 = call i64 @IStream_Write(i32 %14, %struct.TYPE_2__* %16, i32 16, i32* null)
  %18 = load i64, i64* @S_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %38

21:                                               ; preds = %11
  %22 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %23 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i8, i8* %5, align 1
  %27 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %28 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.output_stream*, %struct.output_stream** %4, align 8
  %32 = getelementptr inbounds %struct.output_stream, %struct.output_stream* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %30, i64 %36
  store i8 %26, i8* %37, align 1
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %25, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @IStream_Write(i32, %struct.TYPE_2__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
