; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_layout.c_get_layout_toggle.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_layout.c_get_layout_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@L_HORIZ = common dso_local global i32 0, align 4
@L_VERT = common dso_local global i32 0, align 4
@L_STACKED = common dso_local global i32 0, align 4
@L_TABBED = common dso_local global i32 0, align 4
@L_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32, i32, %struct.sway_output*)* @get_layout_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_layout_toggle(i32 %0, i8** %1, i32 %2, i32 %3, %struct.sway_output* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sway_output*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.sway_output* %4, %struct.sway_output** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.sway_output*, %struct.sway_output** %11, align 8
  %21 = call i32 @toggle_split_layout(i32 %18, i32 %19, %struct.sway_output* %20)
  store i32 %21, i32* %6, align 4
  br label %149

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %70

25:                                               ; preds = %22
  %26 = load i8**, i8*** %8, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strcasecmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.sway_output*, %struct.sway_output** %11, align 8
  %35 = call i32 @toggle_split_layout(i32 %32, i32 %33, %struct.sway_output* %34)
  store i32 %35, i32* %6, align 4
  br label %149

36:                                               ; preds = %25
  %37 = load i8**, i8*** %8, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcasecmp(i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @L_HORIZ, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @L_VERT, align 4
  br label %66

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @L_VERT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @L_STACKED, align 4
  br label %64

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @L_STACKED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @L_TABBED, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @L_HORIZ, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  br label %64

64:                                               ; preds = %62, %52
  %65 = phi i32 [ %53, %52 ], [ %63, %62 ]
  br label %66

66:                                               ; preds = %64, %46
  %67 = phi i32 [ %47, %46 ], [ %65, %64 ]
  store i32 %67, i32* %6, align 4
  br label %149

68:                                               ; preds = %36
  %69 = load i32, i32* @L_NONE, align 4
  store i32 %69, i32* %6, align 4
  br label %149

70:                                               ; preds = %22
  store i32 1, i32* %13, align 4
  br label %71

71:                                               ; preds = %103, %70
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %106

75:                                               ; preds = %71
  %76 = load i8**, i8*** %8, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @parse_layout_string(i8* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %101, label %85

85:                                               ; preds = %75
  %86 = load i8**, i8*** %8, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @L_VERT, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @L_HORIZ, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %93, %75
  br label %106

102:                                              ; preds = %97, %85
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %71

106:                                              ; preds = %101, %71
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %144, %106
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %147

113:                                              ; preds = %109
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp sge i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 1, i32* %14, align 4
  br label %118

118:                                              ; preds = %117, %113
  %119 = load i8**, i8*** %8, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %119, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @parse_layout_string(i8* %123)
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @L_NONE, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %6, align 4
  br label %149

130:                                              ; preds = %118
  %131 = load i8**, i8*** %8, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @strcmp(i8* %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %130
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.sway_output*, %struct.sway_output** %11, align 8
  %142 = call i32 @toggle_split_layout(i32 %139, i32 %140, %struct.sway_output* %141)
  store i32 %142, i32* %6, align 4
  br label %149

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %14, align 4
  br label %109

147:                                              ; preds = %109
  %148 = load i32, i32* @L_NONE, align 4
  store i32 %148, i32* %6, align 4
  br label %149

149:                                              ; preds = %147, %138, %128, %68, %66, %31, %17
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

declare dso_local i32 @toggle_split_layout(i32, i32, %struct.sway_output*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @parse_layout_string(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
