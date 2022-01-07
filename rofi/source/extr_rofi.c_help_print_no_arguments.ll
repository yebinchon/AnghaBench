; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_rofi.c_help_print_no_arguments.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_rofi.c_help_print_no_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Rofi is unsure what to show.\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Please specify the mode you want to show.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"    %srofi%s -show %s{mode}%s\0A\0A\00", align 1
@color_bold = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@color_reset = common dso_local global i8* null, align 8
@color_green = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"The following modi are enabled:\0A\00", align 1
@num_modi = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c" * %s%s%s\0A\00", align 1
@modi = common dso_local global %struct.TYPE_3__** null, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"\0AThe following can be enabled:\0A\00", align 1
@num_available_modi = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@available_modi = common dso_local global %struct.TYPE_3__** null, align 8
@TRUE = common dso_local global i32 0, align 4
@color_red = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [74 x i8] c"\0ATo activate a mode, add it to the list of modi in the %smodi%s setting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @help_print_no_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help_print_no_arguments() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @fileno(i32 %6)
  %8 = call i32 @isatty(i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = load i8*, i8** @color_bold, align 8
  br label %19

18:                                               ; preds = %0
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i8* [ %17, %16 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %18 ]
  %21 = load i32, i32* %1, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i8*, i8** @color_reset, align 8
  br label %26

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %25 ]
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8*, i8** @color_green, align 8
  br label %33

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i8* [ %31, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %32 ]
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** @color_reset, align 8
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i8* [ %38, %37 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %39 ]
  %42 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %20, i8* %27, i8* %34, i8* %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %73, %40
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @num_modi, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %45
  %50 = load i32, i32* @stderr, align 4
  %51 = load i32, i32* %1, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i8*, i8** @color_green, align 8
  br label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i8* [ %54, %53 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %55 ]
  %58 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @modi, align 8
  %59 = load i32, i32* %2, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %58, i64 %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %1, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i8*, i8** @color_reset, align 8
  br label %70

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i8* [ %68, %67 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %69 ]
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %57, i8* %64, i8* %71)
  br label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %2, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %45

76:                                               ; preds = %45
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %135, %76
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @num_available_modi, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %138

83:                                               ; preds = %79
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %104, %83
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @num_modi, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @modi, align 8
  %91 = load i32, i32* %5, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %90, i64 %92
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @available_modi, align 8
  %96 = load i32, i32* %3, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %95, i64 %97
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = icmp eq %struct.TYPE_3__* %94, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %89
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %4, align 4
  br label %107

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %85

107:                                              ; preds = %101, %85
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %134, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @stderr, align 4
  %112 = load i32, i32* %1, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i8*, i8** @color_red, align 8
  br label %117

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i8* [ %115, %114 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %116 ]
  %119 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @available_modi, align 8
  %120 = load i32, i32* %3, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %119, i64 %121
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %1, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i8*, i8** @color_reset, align 8
  br label %131

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i8* [ %129, %128 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %130 ]
  %133 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %118, i8* %125, i8* %132)
  br label %134

134:                                              ; preds = %131, %107
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %3, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %3, align 4
  br label %79

138:                                              ; preds = %79
  %139 = load i32, i32* @stderr, align 4
  %140 = load i32, i32* %1, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i8*, i8** @color_green, align 8
  br label %145

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i8* [ %143, %142 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %144 ]
  %147 = load i32, i32* %1, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i8*, i8** @color_reset, align 8
  br label %152

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i8* [ %150, %149 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %151 ]
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i8* %146, i8* %153)
  ret void
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
