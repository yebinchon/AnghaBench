; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_uxini.c_UXINI_GetNextLine.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_uxini.c_UXINI_GetNextLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_4__*, i32*)* @UXINI_GetNextLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @UXINI_GetNextLine(%struct.TYPE_4__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %9

9:                                                ; preds = %117, %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = call i64 @UXINI_eof(%struct.TYPE_4__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i8* null, i8** %3, align 8
  br label %139

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %37, %14
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = call i64 @UXINI_eof(%struct.TYPE_4__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @UXINI_isspace(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br label %33

33:                                               ; preds = %26, %19
  %34 = phi i1 [ true, %19 ], [ %32, %26 ]
  br label %35

35:                                               ; preds = %33, %15
  %36 = phi i1 [ false, %15 ], [ %34, %33 ]
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  br label %15

42:                                               ; preds = %35
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %7, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %6, align 8
  br label %49

49:                                               ; preds = %69, %42
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %51 = call i64 @UXINI_eof(%struct.TYPE_4__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 10
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 59
  br label %67

67:                                               ; preds = %60, %53, %49
  %68 = phi i1 [ false, %53 ], [ false, %49 ], [ %66, %60 ]
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %71, align 8
  store i8* %73, i8** %6, align 8
  br label %49

74:                                               ; preds = %67
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 59
  br i1 %80, label %81, label %101

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %95, %81
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = call i64 @UXINI_eof(%struct.TYPE_4__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 10
  br label %93

93:                                               ; preds = %86, %82
  %94 = phi i1 [ false, %82 ], [ %92, %86 ]
  br i1 %94, label %95, label %100

95:                                               ; preds = %93
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %97, align 8
  br label %82

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %74
  %102 = load i8*, i8** %6, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %8, align 4
  %108 = load i8*, i8** %7, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 59
  br i1 %111, label %112, label %116

112:                                              ; preds = %101
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i8* null, i8** %3, align 8
  br label %139

116:                                              ; preds = %112, %101
  br label %117

117:                                              ; preds = %116
  %118 = load i8*, i8** %7, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 59
  br i1 %121, label %9, label %122

122:                                              ; preds = %117
  br label %123

123:                                              ; preds = %132, %122
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = call i64 @UXINI_isspace(i8 signext %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %8, align 4
  br label %123

135:                                              ; preds = %123
  %136 = load i32, i32* %8, align 4
  %137 = load i32*, i32** %5, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i8*, i8** %7, align 8
  store i8* %138, i8** %3, align 8
  br label %139

139:                                              ; preds = %135, %115, %13
  %140 = load i8*, i8** %3, align 8
  ret i8* %140
}

declare dso_local i64 @UXINI_eof(%struct.TYPE_4__*) #1

declare dso_local i64 @UXINI_isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
