; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_write_output_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_writer.c_write_output_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.output_buffer }
%struct.output_buffer = type { i32, i8*, i32 }

@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64*, i32)* @write_output_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_output_buffer(%struct.TYPE_4__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.output_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.output_buffer* %13, %struct.output_buffer** %8, align 8
  %14 = load %struct.output_buffer*, %struct.output_buffer** %8, align 8
  %15 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 1200
  br i1 %17, label %18, label %68

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64*, i64** %6, align 8
  %23 = call i32 @strlenW(i64* %22)
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32 [ %23, %21 ], [ %25, %24 ]
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %67

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @grow_output_buffer(%struct.TYPE_4__* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %115

43:                                               ; preds = %30
  %44 = load %struct.output_buffer*, %struct.output_buffer** %8, align 8
  %45 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.output_buffer*, %struct.output_buffer** %8, align 8
  %48 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i64*, i64** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @memcpy(i8* %52, i64* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.output_buffer*, %struct.output_buffer** %8, align 8
  %58 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %11, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = bitcast i8* %65 to i64*
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %43, %26
  br label %113

68:                                               ; preds = %3
  %69 = load %struct.output_buffer*, %struct.output_buffer** %8, align 8
  %70 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i64*, i64** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @WideCharToMultiByte(i32 %71, i32 0, i64* %72, i32 %73, i8* null, i32 0, i32* null, i32* null)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @grow_output_buffer(%struct.TYPE_4__* %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @FAILED(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %115

83:                                               ; preds = %68
  %84 = load %struct.output_buffer*, %struct.output_buffer** %8, align 8
  %85 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.output_buffer*, %struct.output_buffer** %8, align 8
  %88 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  store i8* %91, i8** %11, align 8
  %92 = load %struct.output_buffer*, %struct.output_buffer** %8, align 8
  %93 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i64*, i64** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @WideCharToMultiByte(i32 %94, i32 0, i64* %95, i32 %96, i8* %97, i32 %98, i32* null, i32* null)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %105

102:                                              ; preds = %83
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %103, 1
  br label %107

105:                                              ; preds = %83
  %106 = load i32, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i32 [ %104, %102 ], [ %106, %105 ]
  %109 = load %struct.output_buffer*, %struct.output_buffer** %8, align 8
  %110 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %107, %67
  %114 = load i32, i32* @S_OK, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %81, %41
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @strlenW(i64*) #1

declare dso_local i32 @grow_output_buffer(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i64*, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
