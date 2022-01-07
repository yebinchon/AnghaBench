; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_scanner_get_tag.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c_synctex_scanner_get_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @synctex_scanner_get_tag(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = call %struct.TYPE_6__* @synctex_scanner_parse(%struct.TYPE_6__* %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %4, align 8
  %14 = icmp ne %struct.TYPE_6__* %13, null
  br i1 %14, label %15, label %124

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 0, %16
  br i1 %17, label %18, label %124

18:                                               ; preds = %15
  %19 = load i64, i64* %6, align 8
  %20 = sub i64 %19, 1
  store i64 %20, i64* %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @SYNCTEX_IS_PATH_SEPARATOR(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %123, label %27

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @_synctex_scanner_get_tag(%struct.TYPE_6__* %28, i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %125

35:                                               ; preds = %27
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %8, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %9, align 8
  br label %40

40:                                               ; preds = %58, %35
  %41 = load i8*, i8** %8, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %51, %54
  br label %56

56:                                               ; preds = %48, %44, %40
  %57 = phi i1 [ false, %44 ], [ false, %40 ], [ %55, %48 ]
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8* %62, i8** %9, align 8
  br label %40

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %75, %63
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = icmp ugt i8* %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 -1
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @SYNCTEX_IS_PATH_SEPARATOR(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %78

75:                                               ; preds = %68
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 -1
  store i8* %77, i8** %8, align 8
  br label %64

78:                                               ; preds = %74, %64
  %79 = load i8*, i8** %8, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = icmp ugt i8* %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @_synctex_scanner_get_tag(%struct.TYPE_6__* %83, i8* %84)
  store i32 %85, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %125

89:                                               ; preds = %82, %78
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = call i64 @SYNCTEX_IS_PATH_SEPARATOR(i8 signext %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %118, %95
  %97 = load i64, i64* %6, align 8
  %98 = icmp ult i64 0, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  %100 = load i64, i64* %6, align 8
  %101 = sub i64 %100, 1
  store i64 %101, i64* %6, align 8
  %102 = load i8*, i8** %5, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = call i64 @SYNCTEX_IS_PATH_SEPARATOR(i8 signext %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %99
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = call i32 @_synctex_scanner_get_tag(%struct.TYPE_6__* %109, i8* %113)
  store i32 %114, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %125

118:                                              ; preds = %108, %99
  br label %96

119:                                              ; preds = %96
  br label %120

120:                                              ; preds = %119, %89
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %125

123:                                              ; preds = %18
  br label %124

124:                                              ; preds = %123, %15, %2
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %121, %116, %87, %33
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_6__* @synctex_scanner_parse(%struct.TYPE_6__*) #1

declare dso_local i64 @SYNCTEX_IS_PATH_SEPARATOR(i8 signext) #1

declare dso_local i32 @_synctex_scanner_get_tag(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
