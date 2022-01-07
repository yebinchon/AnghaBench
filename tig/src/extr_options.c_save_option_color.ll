; ModuleID = '/home/carl/AnghaBench/tig/src/extr_options.c_save_option_color.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_options.c_save_option_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_rule = type { i8*, i32, %struct.line_info }
%struct.line_info = type { i8*, i32, i32, i32, %struct.line_info* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"\0Acolor %s%s%s%s%s%-*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.line_rule*)* @save_option_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_option_color(i8* %0, %struct.line_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.line_rule*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.line_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.line_rule* %1, %struct.line_rule** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load %struct.line_rule*, %struct.line_rule** %5, align 8
  %17 = getelementptr inbounds %struct.line_rule, %struct.line_rule* %16, i32 0, i32 2
  store %struct.line_info* %17, %struct.line_info** %7, align 8
  br label %18

18:                                               ; preds = %116, %2
  %19 = load %struct.line_info*, %struct.line_info** %7, align 8
  %20 = icmp ne %struct.line_info* %19, null
  br i1 %20, label %21, label %120

21:                                               ; preds = %18
  %22 = load %struct.line_info*, %struct.line_info** %7, align 8
  %23 = getelementptr inbounds %struct.line_info, %struct.line_info* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.line_info*, %struct.line_info** %7, align 8
  %28 = getelementptr inbounds %struct.line_info, %struct.line_info* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  br label %31

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %30 ]
  store i8* %32, i8** %8, align 8
  %33 = load %struct.line_info*, %struct.line_info** %7, align 8
  %34 = getelementptr inbounds %struct.line_info, %struct.line_info* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %38, i8** %9, align 8
  %39 = load %struct.line_rule*, %struct.line_rule** %5, align 8
  %40 = getelementptr inbounds %struct.line_rule, %struct.line_rule* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %46, i8** %10, align 8
  %47 = load %struct.line_rule*, %struct.line_rule** %5, align 8
  %48 = getelementptr inbounds %struct.line_rule, %struct.line_rule* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %31
  %54 = load %struct.line_rule*, %struct.line_rule** %5, align 8
  %55 = getelementptr inbounds %struct.line_rule, %struct.line_rule* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  br label %62

57:                                               ; preds = %31
  %58 = load %struct.line_rule*, %struct.line_rule** %5, align 8
  %59 = getelementptr inbounds %struct.line_rule, %struct.line_rule* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i8* @enum_name(i32 %60)
  br label %62

62:                                               ; preds = %57, %53
  %63 = phi i8* [ %56, %53 ], [ %61, %57 ]
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @strlen(i8* %64)
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = add nsw i32 %65, %67
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @strlen(i8* %69)
  %71 = mul nsw i32 2, %70
  %72 = add nsw i32 %68, %71
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = add nsw i32 %72, %74
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %76, 30
  br i1 %77, label %78, label %79

78:                                               ; preds = %62
  br label %82

79:                                               ; preds = %62
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 30, %80
  br label %82

82:                                               ; preds = %79, %78
  %83 = phi i32 [ 0, %78 ], [ %81, %79 ]
  store i32 %83, i32* %13, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @io_fprintf(i32* %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %85, i8* %86, i8* %87, i8* %88, i8* %89, i32 %90, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %82
  %94 = load i32*, i32** %6, align 8
  %95 = load %struct.line_info*, %struct.line_info** %7, align 8
  %96 = getelementptr inbounds %struct.line_info, %struct.line_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @save_option_color_name(i32* %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %93
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.line_info*, %struct.line_info** %7, align 8
  %103 = getelementptr inbounds %struct.line_info, %struct.line_info* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @save_option_color_name(i32* %101, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load i32*, i32** %6, align 8
  %109 = load %struct.line_info*, %struct.line_info** %7, align 8
  %110 = getelementptr inbounds %struct.line_info, %struct.line_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @save_option_color_attr(i32* %108, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %107, %100, %93, %82
  store i32 0, i32* %3, align 4
  br label %121

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115
  %117 = load %struct.line_info*, %struct.line_info** %7, align 8
  %118 = getelementptr inbounds %struct.line_info, %struct.line_info* %117, i32 0, i32 4
  %119 = load %struct.line_info*, %struct.line_info** %118, align 8
  store %struct.line_info* %119, %struct.line_info** %7, align 8
  br label %18

120:                                              ; preds = %18
  store i32 1, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %114
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i8* @enum_name(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @io_fprintf(i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @save_option_color_name(i32*, i32) #1

declare dso_local i32 @save_option_color_attr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
