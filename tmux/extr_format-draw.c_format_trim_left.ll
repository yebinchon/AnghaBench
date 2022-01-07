; ModuleID = '/home/carl/AnghaBench/tmux/extr_format-draw.c_format_trim_left.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format-draw.c_format_trim_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i64, i8*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"]\00", align 1
@UTF8_MORE = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_trim_left(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.utf8_data, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load i8*, i8** %3, align 8
  store i8* %12, i8** %7, align 8
  store i64 0, i64* %9, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = add nsw i64 %14, 1
  %16 = call i8* @xmalloc(i64 %15)
  store i8* %16, i8** %5, align 8
  store i8* %16, i8** %6, align 8
  br label %17

17:                                               ; preds = %151, %2
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %152

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %62

28:                                               ; preds = %22
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 91
  br i1 %33, label %34, label %62

34:                                               ; preds = %28
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = call i8* @format_skip(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %152

41:                                               ; preds = %34
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memcpy(i8* %42, i8* %43, i32 %50)
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8*, i8** %7, align 8
  %55 = ptrtoint i8* %53 to i64
  %56 = ptrtoint i8* %54 to i64
  %57 = sub i64 %55, %56
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 %57
  store i8* %59, i8** %6, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %7, align 8
  br label %151

62:                                               ; preds = %28, %22
  %63 = load i8*, i8** %7, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @utf8_open(%struct.utf8_data* %10, i8 signext %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* @UTF8_MORE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %121

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %81, %68
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @UTF8_MORE, align 4
  %78 = icmp eq i32 %76, %77
  br label %79

79:                                               ; preds = %75, %69
  %80 = phi i1 [ false, %69 ], [ %78, %75 ]
  br i1 %80, label %81, label %85

81:                                               ; preds = %79
  %82 = load i8*, i8** %7, align 8
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @utf8_append(%struct.utf8_data* %10, i8 signext %83)
  store i32 %84, i32* %11, align 4
  br label %69

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @UTF8_DONE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %85
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %10, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %90, %92
  %94 = load i64, i64* %4, align 8
  %95 = icmp sle i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %89
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %10, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %10, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @memcpy(i8* %97, i8* %99, i32 %101)
  %103 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %10, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %6, align 8
  br label %108

108:                                              ; preds = %96, %89
  %109 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %10, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = add nsw i64 %111, %110
  store i64 %112, i64* %9, align 8
  br label %120

113:                                              ; preds = %85
  %114 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %10, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %7, align 8
  %117 = sext i32 %115 to i64
  %118 = sub i64 0, %117
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  store i8* %119, i8** %7, align 8
  br label %120

120:                                              ; preds = %113, %108
  br label %150

121:                                              ; preds = %62
  %122 = load i8*, i8** %7, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sgt i32 %124, 31
  br i1 %125, label %126, label %146

126:                                              ; preds = %121
  %127 = load i8*, i8** %7, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp slt i32 %129, 127
  br i1 %130, label %131, label %146

131:                                              ; preds = %126
  %132 = load i64, i64* %9, align 8
  %133 = add nsw i64 %132, 1
  %134 = load i64, i64* %4, align 8
  %135 = icmp sle i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %131
  %137 = load i8*, i8** %7, align 8
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8
  store i8 %138, i8* %139, align 1
  br label %141

141:                                              ; preds = %136, %131
  %142 = load i64, i64* %9, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %9, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %7, align 8
  br label %149

146:                                              ; preds = %126, %121
  %147 = load i8*, i8** %7, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %7, align 8
  br label %149

149:                                              ; preds = %146, %141
  br label %150

150:                                              ; preds = %149, %120
  br label %151

151:                                              ; preds = %150, %41
  br label %17

152:                                              ; preds = %40, %17
  %153 = load i8*, i8** %6, align 8
  store i8 0, i8* %153, align 1
  %154 = load i8*, i8** %5, align 8
  ret i8* %154
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @format_skip(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @utf8_open(%struct.utf8_data*, i8 signext) #1

declare dso_local i32 @utf8_append(%struct.utf8_data*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
