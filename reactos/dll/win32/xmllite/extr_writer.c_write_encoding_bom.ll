; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_write_encoding_bom.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_write_encoding_bom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, %struct.output_buffer }
%struct.output_buffer = type { i64, i64 }

@S_OK = common dso_local global i32 0, align 4
@XmlEncoding_UTF16 = common dso_local global i64 0, align 8
@write_encoding_bom.utf16bom = internal constant [2 x i8] c"\FF\FE", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @write_encoding_bom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_encoding_bom(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.output_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %1
  %17 = load i32, i32* @S_OK, align 4
  store i32 %17, i32* %2, align 4
  br label %62

18:                                               ; preds = %11
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XmlEncoding_UTF16, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store %struct.output_buffer* %30, %struct.output_buffer** %4, align 8
  store i32 2, i32* %5, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @grow_output_buffer(%struct.TYPE_5__* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @FAILED(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %62

41:                                               ; preds = %26
  %42 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %43 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %46 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @memcpy(i64 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @write_encoding_bom.utf16bom, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.output_buffer*, %struct.output_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %41, %18
  %58 = load i64, i64* @TRUE, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @S_OK, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %39, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @grow_output_buffer(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
