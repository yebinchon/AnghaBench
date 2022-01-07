; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_parse_title_format.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_parse_title_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%title\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%app_id\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%class\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%instance\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%shell\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sway_view*, i8*)* @parse_title_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_title_format(%struct.sway_view* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sway_view*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %10 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %15 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13, %2
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %22 = call i32 @view_get_title(%struct.sway_view* %21)
  %23 = call i64 @append_prop(i8* %20, i32 %22)
  store i64 %23, i64* %3, align 8
  br label %138

24:                                               ; preds = %13
  store i64 0, i64* %6, align 8
  %25 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %26 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 37)
  store i8* %29, i8** %8, align 8
  br label %30

30:                                               ; preds = %126, %24
  %31 = load i8*, i8** %8, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %129

33:                                               ; preds = %30
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @lenient_strncat(i8* %34, i8* %35, i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %33
  %55 = load i8*, i8** %5, align 8
  %56 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %57 = call i32 @view_get_title(%struct.sway_view* %56)
  %58 = call i64 @append_prop(i8* %55, i32 %57)
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 6
  store i8* %62, i8** %7, align 8
  br label %126

63:                                               ; preds = %33
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @strncmp(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %70 = call i32 @view_get_app_id(%struct.sway_view* %69)
  %71 = call i64 @append_prop(i8* %68, i32 %70)
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 7
  store i8* %75, i8** %7, align 8
  br label %125

76:                                               ; preds = %63
  %77 = load i8*, i8** %8, align 8
  %78 = call i64 @strncmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i8*, i8** %5, align 8
  %82 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %83 = call i32 @view_get_class(%struct.sway_view* %82)
  %84 = call i64 @append_prop(i8* %81, i32 %83)
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 6
  store i8* %88, i8** %7, align 8
  br label %124

89:                                               ; preds = %76
  %90 = load i8*, i8** %8, align 8
  %91 = call i64 @strncmp(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i8*, i8** %5, align 8
  %95 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %96 = call i32 @view_get_instance(%struct.sway_view* %95)
  %97 = call i64 @append_prop(i8* %94, i32 %96)
  %98 = load i64, i64* %6, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %6, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 9
  store i8* %101, i8** %7, align 8
  br label %123

102:                                              ; preds = %89
  %103 = load i8*, i8** %8, align 8
  %104 = call i64 @strncmp(i8* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %102
  %107 = load i8*, i8** %5, align 8
  %108 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %109 = call i32 @view_get_shell(%struct.sway_view* %108)
  %110 = call i64 @append_prop(i8* %107, i32 %109)
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %6, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 6
  store i8* %114, i8** %7, align 8
  br label %122

115:                                              ; preds = %102
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @lenient_strcat(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i8*, i8** %7, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %7, align 8
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %6, align 8
  br label %122

122:                                              ; preds = %115, %106
  br label %123

123:                                              ; preds = %122, %93
  br label %124

124:                                              ; preds = %123, %80
  br label %125

125:                                              ; preds = %124, %67
  br label %126

126:                                              ; preds = %125, %54
  %127 = load i8*, i8** %7, align 8
  %128 = call i8* @strchr(i8* %127, i8 signext 37)
  store i8* %128, i8** %8, align 8
  br label %30

129:                                              ; preds = %30
  %130 = load i8*, i8** %5, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = call i32 @lenient_strcat(i8* %130, i8* %131)
  %133 = load i8*, i8** %7, align 8
  %134 = call i64 @strlen(i8* %133)
  %135 = load i64, i64* %6, align 8
  %136 = add i64 %135, %134
  store i64 %136, i64* %6, align 8
  %137 = load i64, i64* %6, align 8
  store i64 %137, i64* %3, align 8
  br label %138

138:                                              ; preds = %129, %19
  %139 = load i64, i64* %3, align 8
  ret i64 %139
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @append_prop(i8*, i32) #1

declare dso_local i32 @view_get_title(%struct.sway_view*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lenient_strncat(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @view_get_app_id(%struct.sway_view*) #1

declare dso_local i32 @view_get_class(%struct.sway_view*) #1

declare dso_local i32 @view_get_instance(%struct.sway_view*) #1

declare dso_local i32 @view_get_shell(%struct.sway_view*) #1

declare dso_local i32 @lenient_strcat(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
