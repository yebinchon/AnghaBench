; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_readerinput_detectencoding.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_readerinput_detectencoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }

@readerinput_detectencoding.utf8bom = internal constant [3 x i8] c"\EF\BB\BF", align 1
@readerinput_detectencoding.utf16lebom = internal constant [2 x i8] c"\FF\FE", align 1
@XmlEncoding_Unknown = common dso_local global i32 0, align 4
@MX_E_INPUTEND = common dso_local global i32 0, align 4
@XmlEncoding_UTF8 = common dso_local global i32 0, align 4
@XmlEncoding_UTF16 = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*)* @readerinput_detectencoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readerinput_detectencoding(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %6, align 8
  %13 = load i32, i32* @XmlEncoding_Unknown, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %17, 3
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = call i32 @readerinput_growraw(%struct.TYPE_8__* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @FAILED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %107

27:                                               ; preds = %19
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @MX_E_INPUTEND, align 4
  store i32 %33, i32* %3, align 4
  br label %107

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %7, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %41 = call i64 @readerinput_is_utf8(%struct.TYPE_8__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @XmlEncoding_UTF8, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %105

46:                                               ; preds = %35
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 60
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 63
  br i1 %57, label %68, label %58

58:                                               ; preds = %51
  %59 = load i8*, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 33
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i8*, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @is_namestartchar(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63, %58, %51
  %69 = load i32, i32* @XmlEncoding_UTF16, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %63
  br label %104

72:                                               ; preds = %46
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @memcmp(i64 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @readerinput_detectencoding.utf8bom, i64 0, i64 0), i32 3)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %72
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 3
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load i32, i32* @XmlEncoding_UTF8, align 4
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  br label %103

87:                                               ; preds = %72
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @memcmp(i64 %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @readerinput_detectencoding.utf16lebom, i64 0, i64 0), i32 2)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %97, 2
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load i32, i32* @XmlEncoding_UTF16, align 4
  %101 = load i32*, i32** %5, align 8
  store i32 %100, i32* %101, align 4
  br label %102

102:                                              ; preds = %93, %87
  br label %103

103:                                              ; preds = %102, %78
  br label %104

104:                                              ; preds = %103, %71
  br label %105

105:                                              ; preds = %104, %43
  %106 = load i32, i32* @S_OK, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %32, %25
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @readerinput_growraw(%struct.TYPE_8__*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i64 @readerinput_is_utf8(%struct.TYPE_8__*) #1

declare dso_local i64 @is_namestartchar(i8 signext) #1

declare dso_local i32 @memcmp(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
