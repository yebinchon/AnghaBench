; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_read_line.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_http.c_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"read failed %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"returning empty string\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"returning %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32*)* @read_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_line(%struct.TYPE_5__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = call i32 @EnterCriticalSection(i32* %14)
  br label %16

16:                                               ; preds = %105, %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @memchr(i32* %24, i8 signext 10, i32 %27)
  store i32* %28, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %16
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = ptrtoint i32* %32 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %52

48:                                               ; preds = %16
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %48, %31
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @min(i32 %53, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @memcpy(i8* %62, i32* %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @remove_data(%struct.TYPE_5__* %76, i32 %77)
  %79 = load i32*, i32** %12, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %52
  br label %106

82:                                               ; preds = %52
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = call i32 @read_more_data(%struct.TYPE_5__* %83, i32 -1)
  store i32 %84, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @WARN(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = call i32 @LeaveCriticalSection(i32* %90)
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %144

93:                                               ; preds = %82
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %93
  %99 = load i32*, i32** %7, align 8
  store i32 0, i32* %99, align 4
  %100 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = call i32 @LeaveCriticalSection(i32* %102)
  %104 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %104, i32* %4, align 4
  br label %144

105:                                              ; preds = %93
  br label %16

106:                                              ; preds = %81
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = call i32 @LeaveCriticalSection(i32* %108)
  %110 = load i32, i32* %10, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %106
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 13
  br i1 %125, label %126, label %129

126:                                              ; preds = %117
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %126, %117, %114
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  %132 = load i32*, i32** %7, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %106
  %134 = load i8*, i8** %6, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %134, i64 %138
  store i8 0, i8* %139, align 1
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @debugstr_a(i8* %140)
  %142 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %133, %98, %86
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32* @memchr(i32*, i8 signext, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @remove_data(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @read_more_data(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_a(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
