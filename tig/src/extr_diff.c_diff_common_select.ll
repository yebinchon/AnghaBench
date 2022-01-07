; ModuleID = '/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_select.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_diff.c_diff_common_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64*, i64, i64, i32 }
%struct.line = type { i64 }

@LINE_DIFF_STAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Press '%s' to jump to file diff\00", align 1
@REQ_ENTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%s to '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_common_select(%struct.view* %0, %struct.line* %1, i8* %2) #0 {
  %4 = alloca %struct.view*, align 8
  %5 = alloca %struct.line*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %4, align 8
  store %struct.line* %1, %struct.line** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.line*, %struct.line** %5, align 8
  %11 = getelementptr inbounds %struct.line, %struct.line* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LINE_DIFF_STAT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %3
  %16 = load %struct.view*, %struct.view** %4, align 8
  %17 = load %struct.line*, %struct.line** %5, align 8
  %18 = call %struct.line* @diff_find_header_from_stat(%struct.view* %16, %struct.line* %17)
  store %struct.line* %18, %struct.line** %7, align 8
  %19 = load %struct.line*, %struct.line** %7, align 8
  %20 = icmp ne %struct.line* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.view*, %struct.view** %4, align 8
  %23 = load %struct.line*, %struct.line** %7, align 8
  %24 = call i8* @diff_get_pathname(%struct.view* %22, %struct.line* %23)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.view*, %struct.view** %4, align 8
  %29 = getelementptr inbounds %struct.view, %struct.view* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 (i32, i8*, i8*, ...) @string_format(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load %struct.view*, %struct.view** %4, align 8
  %36 = getelementptr inbounds %struct.view, %struct.view* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.view*, %struct.view** %4, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.view*, %struct.view** %4, align 8
  %44 = getelementptr inbounds %struct.view, %struct.view* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %27, %21
  br label %50

50:                                               ; preds = %49, %15
  %51 = load %struct.view*, %struct.view** %4, align 8
  %52 = getelementptr inbounds %struct.view, %struct.view* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.view*, %struct.view** %4, align 8
  %55 = load i32, i32* @REQ_ENTER, align 4
  %56 = call i8* @get_view_key(%struct.view* %54, i32 %55)
  %57 = call i32 (i32, i8*, i8*, ...) @string_format(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %119

58:                                               ; preds = %3
  %59 = load %struct.view*, %struct.view** %4, align 8
  %60 = load %struct.line*, %struct.line** %5, align 8
  %61 = call i8* @diff_get_pathname(%struct.view* %59, %struct.line* %60)
  store i8* %61, i8** %9, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %99

64:                                               ; preds = %58
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.view*, %struct.view** %4, align 8
  %69 = getelementptr inbounds %struct.view, %struct.view* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 (i32, i8*, i8*, ...) @string_format(i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %67, %64
  %75 = load %struct.view*, %struct.view** %4, align 8
  %76 = getelementptr inbounds %struct.view, %struct.view* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = call i32 (i32, i8*, i8*, ...) @string_format(i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = load %struct.view*, %struct.view** %4, align 8
  %83 = load %struct.line*, %struct.line** %5, align 8
  %84 = call i64 @diff_get_lineno(%struct.view* %82, %struct.line* %83)
  %85 = load %struct.view*, %struct.view** %4, align 8
  %86 = getelementptr inbounds %struct.view, %struct.view* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i64 %84, i64* %88, align 8
  %89 = load %struct.view*, %struct.view** %4, align 8
  %90 = getelementptr inbounds %struct.view, %struct.view* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  store i64 %84, i64* %92, align 8
  %93 = load %struct.view*, %struct.view** %4, align 8
  %94 = getelementptr inbounds %struct.view, %struct.view* %93, i32 0, i32 2
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 0, i64* %98, align 8
  br label %118

99:                                               ; preds = %58
  %100 = load %struct.view*, %struct.view** %4, align 8
  %101 = getelementptr inbounds %struct.view, %struct.view* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.view*, %struct.view** %4, align 8
  %104 = getelementptr inbounds %struct.view, %struct.view* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.view*, %struct.view** %4, align 8
  %109 = getelementptr inbounds %struct.view, %struct.view* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @strlen(i32 %112)
  %114 = call i32 @string_ncopy(i32 %102, i32 %107, i32 %113)
  %115 = load %struct.view*, %struct.view** %4, align 8
  %116 = load %struct.line*, %struct.line** %5, align 8
  %117 = call i32 @pager_select(%struct.view* %115, %struct.line* %116)
  br label %118

118:                                              ; preds = %99, %74
  br label %119

119:                                              ; preds = %118, %50
  ret void
}

declare dso_local %struct.line* @diff_find_header_from_stat(%struct.view*, %struct.line*) #1

declare dso_local i8* @diff_get_pathname(%struct.view*, %struct.line*) #1

declare dso_local i32 @string_format(i32, i8*, i8*, ...) #1

declare dso_local i8* @get_view_key(%struct.view*, i32) #1

declare dso_local i64 @diff_get_lineno(%struct.view*, %struct.line*) #1

declare dso_local i32 @string_ncopy(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @pager_select(%struct.view*, %struct.line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
