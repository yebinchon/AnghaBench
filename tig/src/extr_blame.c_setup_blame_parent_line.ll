; ModuleID = '/home/carl/AnghaBench/tig/src/extr_blame.c_setup_blame_parent_line.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_blame.c_setup_blame_parent_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.blame = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.io = type { i32 }
%struct.buffer = type { i8* }

@SIZEOF_REF = common dso_local global i32 0, align 4
@SIZEOF_STR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@encoding_arg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"--no-textconv\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"--no-ext-diff\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"--no-color\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"-U0\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@IO_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, %struct.blame*)* @setup_blame_parent_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_blame_parent_line(%struct.view* %0, %struct.blame* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.blame*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [11 x i8*], align 16
  %9 = alloca %struct.io, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.blame* %1, %struct.blame** %4, align 8
  %16 = load i32, i32* @SIZEOF_REF, align 4
  %17 = load i32, i32* @SIZEOF_STR, align 4
  %18 = add nsw i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load i32, i32* @SIZEOF_REF, align 4
  %23 = load i32, i32* @SIZEOF_STR, align 4
  %24 = add nsw i32 %22, %23
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  %27 = getelementptr inbounds [11 x i8*], [11 x i8*]* %8, i64 0, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** @encoding_arg, align 8
  store i8* %30, i8** %29, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %31, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %32, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8** %34, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8* %21, i8** %35, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  store i8* %26, i8** %36, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %37, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  store i8* null, i8** %38, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %39 = load %struct.view*, %struct.view** %3, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.view*, %struct.view** %3, align 8
  %45 = getelementptr inbounds %struct.view, %struct.view* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @string_format(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %43, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %2
  %52 = load %struct.blame*, %struct.blame** %4, align 8
  %53 = getelementptr inbounds %struct.blame, %struct.blame* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.blame*, %struct.blame** %4, align 8
  %58 = getelementptr inbounds %struct.blame, %struct.blame* %57, i32 0, i32 2
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @string_format(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %56, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load i32, i32* @IO_RD, align 4
  %66 = getelementptr inbounds [11 x i8*], [11 x i8*]* %8, i64 0, i64 0
  %67 = call i32 @io_run(%struct.io* %9, i32 %65, i32* null, i32* null, i8** %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64, %51, %2
  store i32 1, i32* %13, align 4
  br label %136

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %133, %70
  %72 = call i64 @io_get(%struct.io* %9, %struct.buffer* %12, i8 signext 10, i32 1)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %134

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.buffer, %struct.buffer* %12, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %14, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 64
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load i8*, i8** %14, align 8
  %83 = call i8* @strchr(i8* %82, i8 signext 43)
  store i8* %83, i8** %15, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  %86 = call i32 @atoi(i8* %85)
  store i32 %86, i32* %10, align 4
  %87 = load i8*, i8** %15, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i8*, i8** %15, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = call i32 @atoi(i8* %91)
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %89, %81
  br label %133

94:                                               ; preds = %74
  %95 = load i8*, i8** %14, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 43
  br i1 %98, label %99, label %132

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %132

102:                                              ; preds = %99
  %103 = load %struct.blame*, %struct.blame** %4, align 8
  %104 = getelementptr inbounds %struct.blame, %struct.blame* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %106, 1
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %129

109:                                              ; preds = %102
  %110 = load %struct.blame*, %struct.blame** %4, align 8
  %111 = getelementptr inbounds %struct.blame, %struct.blame* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %14, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = call i32 @strcmp(i32 %112, i8* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 1
  br label %124

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123, %120
  %125 = phi i32 [ %122, %120 ], [ 0, %123 ]
  %126 = load %struct.view*, %struct.view** %3, align 8
  %127 = getelementptr inbounds %struct.view, %struct.view* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  br label %134

129:                                              ; preds = %109, %102
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %129, %99, %94
  br label %133

133:                                              ; preds = %132, %93
  br label %71

134:                                              ; preds = %124, %71
  %135 = call i32 @io_done(%struct.io* %9)
  store i32 0, i32* %13, align 4
  br label %136

136:                                              ; preds = %134, %69
  %137 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %13, align 4
  switch i32 %138, label %140 [
    i32 0, label %139
    i32 1, label %139
  ]

139:                                              ; preds = %136, %136
  ret void

140:                                              ; preds = %136
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @string_format(i8*, i8*, i32, i32) #2

declare dso_local i32 @io_run(%struct.io*, i32, i32*, i32*, i8**) #2

declare dso_local i64 @io_get(%struct.io*, %struct.buffer*, i8 signext, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @io_done(%struct.io*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
