; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_journald-stream.c_stdout_stream_scan.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_journald-stream.c_stdout_stream_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@LINE_BREAK_NUL = common dso_local global i32 0, align 4
@LINE_BREAK_NEWLINE = common dso_local global i32 0, align 4
@LINE_BREAK_LINE_MAX = common dso_local global i32 0, align 4
@LINE_BREAK_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @stdout_stream_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stdout_stream_scan(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = call i32 @assert(%struct.TYPE_7__* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %91, %2
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i8* @memchr(i8* %22, i8 signext 10, i64 %23)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i8*, i8** %11, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  br label %36

34:                                               ; preds = %21
  %35 = load i64, i64* %7, align 8
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi i64 [ %33, %28 ], [ %35, %34 ]
  %38 = call i8* @memchr(i8* %25, i8 signext 0, i64 %37)
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %10, align 8
  %48 = load i32, i32* @LINE_BREAK_NUL, align 4
  store i32 %48, i32* %9, align 4
  br label %82

49:                                               ; preds = %36
  %50 = load i8*, i8** %11, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i8*, i8** %11, align 8
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %10, align 8
  %60 = load i32, i32* @LINE_BREAK_NEWLINE, align 4
  store i32 %60, i32* %9, align 4
  br label %81

61:                                               ; preds = %49
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp uge i64 %62, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load i8*, i8** %6, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8, i8* %70, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load i64, i64* %7, align 8
  store i64 %77, i64* %10, align 8
  %78 = load i32, i32* @LINE_BREAK_LINE_MAX, align 4
  store i32 %78, i32* %9, align 4
  br label %80

79:                                               ; preds = %61
  br label %98

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %52
  br label %82

82:                                               ; preds = %81, %41
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @stdout_stream_line(%struct.TYPE_7__* %83, i8* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %137

91:                                               ; preds = %82
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %7, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %7, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  store i8* %97, i8** %6, align 8
  br label %21

98:                                               ; preds = %79
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i64, i64* %7, align 8
  %103 = icmp ugt i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = load i8*, i8** %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8 0, i8* %107, align 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = load i32, i32* @LINE_BREAK_EOF, align 4
  %111 = call i32 @stdout_stream_line(%struct.TYPE_7__* %108, i8* %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = load i32, i32* %8, align 4
  store i32 %115, i32* %3, align 4
  br label %137

116:                                              ; preds = %104
  %117 = load i64, i64* %7, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 %117
  store i8* %119, i8** %6, align 8
  store i64 0, i64* %7, align 8
  br label %120

120:                                              ; preds = %116, %101, %98
  %121 = load i8*, i8** %6, align 8
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ugt i8* %121, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @memmove(i8* %129, i8* %130, i64 %131)
  %133 = load i64, i64* %7, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %126, %120
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %114, %89
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @assert(%struct.TYPE_7__*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i32 @stdout_stream_line(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
