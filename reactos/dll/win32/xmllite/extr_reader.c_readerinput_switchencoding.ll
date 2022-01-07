; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_readerinput_switchencoding.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_readerinput_switchencoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"switching to cp %d\0A\00", align 1
@XmlEncoding_UTF16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i64)* @readerinput_switchencoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readerinput_switchencoding(%struct.TYPE_9__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @get_code_page(i64 %20, i32* %11)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %110

26:                                               ; preds = %2
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 @readerinput_get_convlen(%struct.TYPE_9__* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @XmlEncoding_UTF16, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %26
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @readerinput_grow(%struct.TYPE_9__* %40, i32 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @memcpy(i64 %45, i64 %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  br label %107

64:                                               ; preds = %26
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @MultiByteToWideChar(i32 %65, i32 0, i64 %72, i32 %73, i64* null, i32 0)
  store i32 %74, i32* %8, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @readerinput_grow(%struct.TYPE_9__* %75, i32 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i64*
  store i64* %81, i64** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load i32, i32* %7, align 4
  %91 = load i64*, i64** %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @MultiByteToWideChar(i32 %82, i32 0, i64 %89, i32 %90, i64* %91, i32 %92)
  %94 = load i64*, i64** %10, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %94, i64 %96
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, %100
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  br label %107

107:                                              ; preds = %64, %39
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = call i32 @fixup_buffer_cr(%struct.TYPE_10__* %108, i32 0)
  br label %110

110:                                              ; preds = %107, %25
  ret void
}

declare dso_local i32 @get_code_page(i64, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @readerinput_get_convlen(%struct.TYPE_9__*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @readerinput_grow(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i64, i32, i64*, i32) #1

declare dso_local i32 @fixup_buffer_cr(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
