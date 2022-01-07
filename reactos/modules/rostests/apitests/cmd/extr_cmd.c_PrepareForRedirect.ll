; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/cmd/extr_cmd.c_PrepareForRedirect.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/cmd/extr_cmd.c_PrepareForRedirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, i32* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i64, i64)* @PrepareForRedirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PrepareForRedirect(%struct.TYPE_5__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %20 = load i32, i32* @TRUE, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %19, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %4
  %32 = call i64 @CreatePipe(i8** %10, i8** %11, %struct.TYPE_6__* %16, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @MyDuplicateHandle(i8* %35, i64 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %124

41:                                               ; preds = %34
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @CloseHandle(i8* %42)
  br label %45

44:                                               ; preds = %31
  br label %124

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %45, %4
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = call i64 @CreatePipe(i8** %12, i8** %13, %struct.TYPE_6__* %16, i32 0)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = call i32 @MyDuplicateHandle(i8* %53, i64 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %124

59:                                               ; preds = %52
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @CloseHandle(i8* %60)
  br label %63

62:                                               ; preds = %49
  br label %124

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i8*, i8** %13, align 8
  %73 = ptrtoint i8** %15 to i64
  %74 = load i32, i32* @TRUE, align 4
  %75 = call i32 @MyDuplicateHandle(i8* %72, i64 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %124

78:                                               ; preds = %71
  br label %98

79:                                               ; preds = %67, %64
  %80 = load i64, i64* %9, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = call i64 @CreatePipe(i8** %14, i8** %15, %struct.TYPE_6__* %16, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i8*, i8** %14, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @MyDuplicateHandle(i8* %86, i64 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  br label %124

92:                                               ; preds = %85
  %93 = load i8*, i8** %14, align 8
  %94 = call i32 @CloseHandle(i8* %93)
  br label %96

95:                                               ; preds = %82
  br label %124

96:                                               ; preds = %92
  br label %97

97:                                               ; preds = %96, %79
  br label %98

98:                                               ; preds = %97, %78
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i8*, i8** %10, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i32* %103, i32** %105, align 8
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i64, i64* %8, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i8*, i8** %13, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  store i32* %111, i32** %113, align 8
  br label %114

114:                                              ; preds = %109, %106
  %115 = load i64, i64* %9, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i8*, i8** %15, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store i32* %119, i32** %121, align 8
  br label %122

122:                                              ; preds = %117, %114
  %123 = load i32, i32* @TRUE, align 4
  store i32 %123, i32* %5, align 4
  br label %138

124:                                              ; preds = %95, %91, %77, %62, %58, %44, %40
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @CloseHandle(i8* %125)
  %127 = load i8*, i8** %11, align 8
  %128 = call i32 @CloseHandle(i8* %127)
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @CloseHandle(i8* %129)
  %131 = load i8*, i8** %13, align 8
  %132 = call i32 @CloseHandle(i8* %131)
  %133 = load i8*, i8** %14, align 8
  %134 = call i32 @CloseHandle(i8* %133)
  %135 = load i8*, i8** %15, align 8
  %136 = call i32 @CloseHandle(i8* %135)
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %124, %122
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i64 @CreatePipe(i8**, i8**, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @MyDuplicateHandle(i8*, i64, i32) #1

declare dso_local i32 @CloseHandle(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
