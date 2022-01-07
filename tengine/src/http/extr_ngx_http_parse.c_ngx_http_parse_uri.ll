; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_parse.c_ngx_http_parse_uri.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_parse.c_ngx_http_parse_uri.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32, i32, i32, i8*, i32, i8* }

@NGX_ERROR = common dso_local global i32 0, align 4
@usual = common dso_local global i32* null, align 8
@NGX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_parse_uri(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  br label %10

10:                                               ; preds = %140, %1
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %11, %14
  br i1 %15, label %16, label %143

16:                                               ; preds = %10
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %5, align 1
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %139 [
    i32 0, label %20
    i32 1, label %27
    i32 2, label %70
    i32 3, label %114
  ]

20:                                               ; preds = %16
  %21 = load i8, i8* %5, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 47
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @NGX_ERROR, align 4
  store i32 %25, i32* %2, align 4
  br label %145

26:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %139

27:                                               ; preds = %16
  %28 = load i32*, i32** @usual, align 8
  %29 = load i8, i8* %5, align 1
  %30 = sext i8 %29 to i32
  %31 = ashr i32 %30, 5
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i8, i8* %5, align 1
  %36 = sext i8 %35 to i32
  %37 = and i32 %36, 31
  %38 = shl i32 1, %37
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i32 2, i32* %6, align 4
  br label %139

42:                                               ; preds = %27
  %43 = load i8, i8* %5, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %68 [
    i32 32, label %45
    i32 46, label %48
    i32 37, label %51
    i32 47, label %54
    i32 63, label %57
    i32 35, label %62
    i32 43, label %65
  ]

45:                                               ; preds = %42
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  store i32 2, i32* %6, align 4
  br label %69

48:                                               ; preds = %42
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i32 1, i32* %50, align 4
  store i32 3, i32* %6, align 4
  br label %69

51:                                               ; preds = %42
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  store i32 1, i32* %53, align 8
  store i32 3, i32* %6, align 4
  br label %69

54:                                               ; preds = %42
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i32 1, i32* %56, align 4
  store i32 3, i32* %6, align 4
  br label %69

57:                                               ; preds = %42
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  store i32 3, i32* %6, align 4
  br label %69

62:                                               ; preds = %42
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  store i32 1, i32* %64, align 4
  store i32 3, i32* %6, align 4
  br label %69

65:                                               ; preds = %42
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 6
  store i32 1, i32* %67, align 8
  br label %69

68:                                               ; preds = %42
  store i32 2, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %65, %62, %57, %54, %51, %48, %45
  br label %139

70:                                               ; preds = %16
  %71 = load i32*, i32** @usual, align 8
  %72 = load i8, i8* %5, align 1
  %73 = sext i8 %72 to i32
  %74 = ashr i32 %73, 5
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i8, i8* %5, align 1
  %79 = sext i8 %78 to i32
  %80 = and i32 %79, 31
  %81 = shl i32 1, %80
  %82 = and i32 %77, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %139

85:                                               ; preds = %70
  %86 = load i8, i8* %5, align 1
  %87 = sext i8 %86 to i32
  switch i32 %87, label %113 [
    i32 47, label %88
    i32 46, label %91
    i32 32, label %96
    i32 37, label %99
    i32 63, label %102
    i32 35, label %107
    i32 43, label %110
  ]

88:                                               ; preds = %85
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 7
  store i8* null, i8** %90, align 8
  store i32 1, i32* %6, align 4
  br label %113

91:                                               ; preds = %85
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  br label %113

96:                                               ; preds = %85
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i32 1, i32* %98, align 8
  br label %113

99:                                               ; preds = %85
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  store i32 1, i32* %101, align 8
  store i32 3, i32* %6, align 4
  br label %113

102:                                              ; preds = %85
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  store i32 3, i32* %6, align 4
  br label %113

107:                                              ; preds = %85
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  store i32 1, i32* %109, align 4
  store i32 3, i32* %6, align 4
  br label %113

110:                                              ; preds = %85
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 6
  store i32 1, i32* %112, align 8
  br label %113

113:                                              ; preds = %85, %110, %107, %102, %99, %96, %91, %88
  br label %139

114:                                              ; preds = %16
  %115 = load i32*, i32** @usual, align 8
  %116 = load i8, i8* %5, align 1
  %117 = sext i8 %116 to i32
  %118 = ashr i32 %117, 5
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i8, i8* %5, align 1
  %123 = sext i8 %122 to i32
  %124 = and i32 %123, 31
  %125 = shl i32 1, %124
  %126 = and i32 %121, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %114
  br label %139

129:                                              ; preds = %114
  %130 = load i8, i8* %5, align 1
  %131 = sext i8 %130 to i32
  switch i32 %131, label %138 [
    i32 32, label %132
    i32 35, label %135
  ]

132:                                              ; preds = %129
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  store i32 1, i32* %134, align 8
  br label %138

135:                                              ; preds = %129
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 3
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %129, %135, %132
  br label %139

139:                                              ; preds = %16, %138, %128, %113, %84, %69, %41, %26
  br label %140

140:                                              ; preds = %139
  %141 = load i8*, i8** %4, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %4, align 8
  br label %10

143:                                              ; preds = %10
  %144 = load i32, i32* @NGX_OK, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %143, %24
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
