; ModuleID = '/home/carl/AnghaBench/tmux/extr_format-draw.c_format_trim_right.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format-draw.c_format_trim_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i8*, i32, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"]\00", align 1
@UTF8_MORE = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @format_trim_right(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.utf8_data, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %8, align 8
  store i64 0, i64* %10, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @format_width(i8* %16)
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp sle i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i8* @xstrdup(i8* %22)
  store i8* %23, i8** %3, align 8
  br label %166

24:                                               ; preds = %2
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %5, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %12, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = add nsw i64 %29, 1
  %31 = call i8* @xmalloc(i64 %30)
  store i8* %31, i8** %6, align 8
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %162, %24
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %163

37:                                               ; preds = %32
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 35
  br i1 %42, label %43, label %77

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 91
  br i1 %48, label %49, label %77

49:                                               ; preds = %43
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = call i8* @format_skip(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %163

56:                                               ; preds = %49
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8*, i8** %8, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = trunc i64 %64 to i32
  %66 = call i32 @memcpy(i8* %57, i8* %58, i32 %65)
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8*, i8** %8, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %7, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  store i8* %76, i8** %8, align 8
  br label %162

77:                                               ; preds = %43, %37
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = call i32 @utf8_open(%struct.utf8_data* %13, i8 signext %79)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* @UTF8_MORE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %133

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %96, %83
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @UTF8_MORE, align 4
  %93 = icmp eq i32 %91, %92
  br label %94

94:                                               ; preds = %90, %84
  %95 = phi i1 [ false, %84 ], [ %93, %90 ]
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = load i8*, i8** %8, align 8
  %98 = load i8, i8* %97, align 1
  %99 = call i32 @utf8_append(%struct.utf8_data* %13, i8 signext %98)
  store i32 %99, i32* %14, align 4
  br label %84

100:                                              ; preds = %94
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* @UTF8_DONE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %100
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %12, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %104
  %109 = load i8*, i8** %7, align 8
  %110 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %13, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %13, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @memcpy(i8* %109, i8* %111, i32 %113)
  %115 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %13, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %7, align 8
  br label %120

120:                                              ; preds = %108, %104
  %121 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %13, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %10, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %10, align 8
  br label %132

125:                                              ; preds = %100
  %126 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %13, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = sext i32 %127 to i64
  %130 = sub i64 0, %129
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  store i8* %131, i8** %8, align 8
  br label %132

132:                                              ; preds = %125, %120
  br label %161

133:                                              ; preds = %77
  %134 = load i8*, i8** %8, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sgt i32 %136, 31
  br i1 %137, label %138, label %157

138:                                              ; preds = %133
  %139 = load i8*, i8** %8, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp slt i32 %141, 127
  br i1 %142, label %143, label %157

143:                                              ; preds = %138
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %12, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load i8*, i8** %8, align 8
  %149 = load i8, i8* %148, align 1
  %150 = load i8*, i8** %7, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %7, align 8
  store i8 %149, i8* %150, align 1
  br label %152

152:                                              ; preds = %147, %143
  %153 = load i64, i64* %10, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %10, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %8, align 8
  br label %160

157:                                              ; preds = %138, %133
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %8, align 8
  br label %160

160:                                              ; preds = %157, %152
  br label %161

161:                                              ; preds = %160, %132
  br label %162

162:                                              ; preds = %161, %56
  br label %32

163:                                              ; preds = %55, %32
  %164 = load i8*, i8** %7, align 8
  store i8 0, i8* %164, align 1
  %165 = load i8*, i8** %6, align 8
  store i8* %165, i8** %3, align 8
  br label %166

166:                                              ; preds = %163, %21
  %167 = load i8*, i8** %3, align 8
  ret i8* %167
}

declare dso_local i64 @format_width(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

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
