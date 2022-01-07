; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_diff.c_diffopt_changed.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_diff.c_diffopt_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_3__* }

@p_dip = common dso_local global i8* null, align 8
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [7 x i8] c"filler\00", align 1
@DIFF_FILLER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"context:\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"icase\00", align 1
@DIFF_ICASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"iwhite\00", align 1
@DIFF_IWHITE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"horizontal\00", align 1
@DIFF_HORIZONTAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"vertical\00", align 1
@DIFF_VERTICAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"foldcolumn:\00", align 1
@FAIL = common dso_local global i32 0, align 4
@diff_flags = common dso_local global i32 0, align 4
@first_tabpage = common dso_local global %struct.TYPE_3__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@diff_context = common dso_local global i32 0, align 4
@diff_foldcolumn = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diffopt_changed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  store i32 6, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 2, i32* %5, align 4
  %7 = load i8*, i8** @p_dip, align 8
  store i8* %7, i8** %2, align 8
  br label %8

8:                                                ; preds = %121, %0
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8, i8* @NUL, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %122

15:                                               ; preds = %8
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @STRNCMP(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 6
  store i8* %21, i8** %2, align 8
  %22 = load i32, i32* @DIFF_FILLER, align 4
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  br label %99

25:                                               ; preds = %15
  %26 = load i8*, i8** %2, align 8
  %27 = call i64 @STRNCMP(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @VIM_ISDIGIT(i8 signext %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 8
  store i8* %37, i8** %2, align 8
  %38 = call i32 @getdigits(i8** %2)
  store i32 %38, i32* %3, align 4
  br label %98

39:                                               ; preds = %29, %25
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @STRNCMP(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %2, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 5
  store i8* %45, i8** %2, align 8
  %46 = load i32, i32* @DIFF_ICASE, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  br label %97

49:                                               ; preds = %39
  %50 = load i8*, i8** %2, align 8
  %51 = call i64 @STRNCMP(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i8*, i8** %2, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 6
  store i8* %55, i8** %2, align 8
  %56 = load i32, i32* @DIFF_IWHITE, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %96

59:                                               ; preds = %49
  %60 = load i8*, i8** %2, align 8
  %61 = call i64 @STRNCMP(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i8*, i8** %2, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 10
  store i8* %65, i8** %2, align 8
  %66 = load i32, i32* @DIFF_HORIZONTAL, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  br label %95

69:                                               ; preds = %59
  %70 = load i8*, i8** %2, align 8
  %71 = call i64 @STRNCMP(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i8*, i8** %2, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 8
  store i8* %75, i8** %2, align 8
  %76 = load i32, i32* @DIFF_VERTICAL, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %94

79:                                               ; preds = %69
  %80 = load i8*, i8** %2, align 8
  %81 = call i64 @STRNCMP(i8* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 11)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i8*, i8** %2, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 11
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @VIM_ISDIGIT(i8 signext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i8*, i8** %2, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 11
  store i8* %91, i8** %2, align 8
  %92 = call i32 @getdigits(i8** %2)
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %83, %79
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94, %63
  br label %96

96:                                               ; preds = %95, %53
  br label %97

97:                                               ; preds = %96, %43
  br label %98

98:                                               ; preds = %97, %35
  br label %99

99:                                               ; preds = %98, %19
  %100 = load i8*, i8** %2, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 44
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i8*, i8** %2, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* @NUL, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @FAIL, align 4
  store i32 %112, i32* %1, align 4
  br label %160

113:                                              ; preds = %104, %99
  %114 = load i8*, i8** %2, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 44
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i8*, i8** %2, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %2, align 8
  br label %121

121:                                              ; preds = %118, %113
  br label %8

122:                                              ; preds = %8
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @DIFF_HORIZONTAL, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* @DIFF_VERTICAL, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i32, i32* @FAIL, align 4
  store i32 %133, i32* %1, align 4
  br label %160

134:                                              ; preds = %127, %122
  %135 = load i32, i32* @diff_flags, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** @first_tabpage, align 8
  store %struct.TYPE_3__* %139, %struct.TYPE_3__** %6, align 8
  br label %140

140:                                              ; preds = %147, %138
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %142 = icmp ne %struct.TYPE_3__* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load i32, i32* @TRUE, align 4
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  br label %147

147:                                              ; preds = %143
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  store %struct.TYPE_3__* %150, %struct.TYPE_3__** %6, align 8
  br label %140

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151, %134
  %153 = load i32, i32* %4, align 4
  store i32 %153, i32* @diff_flags, align 4
  %154 = load i32, i32* %3, align 4
  store i32 %154, i32* @diff_context, align 4
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* @diff_foldcolumn, align 4
  %156 = load i32, i32* @TRUE, align 4
  %157 = call i32 @diff_redraw(i32 %156)
  %158 = call i32 @check_scrollbind(i32 0, i64 0)
  %159 = load i32, i32* @OK, align 4
  store i32 %159, i32* %1, align 4
  br label %160

160:                                              ; preds = %152, %132, %111
  %161 = load i32, i32* %1, align 4
  ret i32 %161
}

declare dso_local i64 @STRNCMP(i8*, i8*, i32) #1

declare dso_local i64 @VIM_ISDIGIT(i8 signext) #1

declare dso_local i32 @getdigits(i8**) #1

declare dso_local i32 @diff_redraw(i32) #1

declare dso_local i32 @check_scrollbind(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
