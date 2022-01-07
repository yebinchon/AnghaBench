; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_read_modifiers.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_read_modifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.index_state = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [36 x i8] c"More modifiers than cache entries.\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Less modifiers than cached entries.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.index_state*, i8*, i32)* @read_modifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_modifiers(%struct.index_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.index_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.index_state* %0, %struct.index_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %81, %3
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %15
  %20 = load i8*, i8** %9, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %78

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.index_state*, %struct.index_state** %5, align 8
  %28 = getelementptr inbounds %struct.index_state, %struct.index_state* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %25
  %32 = load %struct.index_state*, %struct.index_state** %5, align 8
  %33 = getelementptr inbounds %struct.index_state, %struct.index_state* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @S_ISDIR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %31, %25
  %44 = phi i1 [ false, %25 ], [ %42, %31 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i32, i32* %12, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %25

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.index_state*, %struct.index_state** %5, align 8
  %51 = getelementptr inbounds %struct.index_state, %struct.index_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp uge i32 %49, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = call i32 @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

56:                                               ; preds = %48
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @g_strndup(i8* %57, i32 %63)
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load %struct.index_state*, %struct.index_state** %5, align 8
  %67 = getelementptr inbounds %struct.index_state, %struct.index_state* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %68, i64 %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* %65, i8** %73, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %77, i8** %8, align 8
  br label %78

78:                                               ; preds = %56, %19
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %9, align 8
  br label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %15

84:                                               ; preds = %15
  br label %85

85:                                               ; preds = %105, %84
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.index_state*, %struct.index_state** %5, align 8
  %88 = getelementptr inbounds %struct.index_state, %struct.index_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %85
  %92 = load %struct.index_state*, %struct.index_state** %5, align 8
  %93 = getelementptr inbounds %struct.index_state, %struct.index_state* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %94, i64 %96
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @S_ISDIR(i32 %100)
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %91, %85
  %104 = phi i1 [ false, %85 ], [ %102, %91 ]
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = load i32, i32* %12, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %85

108:                                              ; preds = %103
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.index_state*, %struct.index_state** %5, align 8
  %111 = getelementptr inbounds %struct.index_state, %struct.index_state* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = call i32 @seaf_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %119

116:                                              ; preds = %108
  %117 = load %struct.index_state*, %struct.index_state** %5, align 8
  %118 = getelementptr inbounds %struct.index_state, %struct.index_state* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %116, %114, %54
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @seaf_warning(i8*) #1

declare dso_local i8* @g_strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
