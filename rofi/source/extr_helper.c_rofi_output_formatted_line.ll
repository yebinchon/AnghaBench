; ModuleID = '/home/carl/AnghaBench/rofi/source/extr_helper.c_rofi_output_formatted_line.c'
source_filename = "/home/carl/AnghaBench/rofi/source/extr_helper.c_rofi_output_formatted_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rofi_output_formatted_line(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %153, %4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %16, %13
  %25 = phi i1 [ false, %13 ], [ %23, %16 ]
  br i1 %25, label %26, label %156

26:                                               ; preds = %24
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 105
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @stdout, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %152

38:                                               ; preds = %26
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 100
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = load i32, i32* @stdout, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %151

51:                                               ; preds = %38
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 115
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @stdout, align 4
  %62 = call i32 @fputs(i8* %60, i32 %61)
  br label %150

63:                                               ; preds = %51
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 112
  br i1 %70, label %71, label %86

71:                                               ; preds = %63
  store i8* null, i8** %10, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @pango_parse_markup(i8* %72, i32 -1, i32 0, i32* null, i8** %10, i32* null, i32* null)
  %74 = load i8*, i8** %10, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* @stdout, align 4
  %79 = call i32 @fputs(i8* %77, i32 %78)
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @g_free(i8* %80)
  br label %85

82:                                               ; preds = %71
  %83 = load i32, i32* @stdout, align 4
  %84 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %76
  br label %149

86:                                               ; preds = %63
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 113
  br i1 %93, label %94, label %102

94:                                               ; preds = %86
  %95 = load i8*, i8** %6, align 8
  %96 = call i8* @g_shell_quote(i8* %95)
  store i8* %96, i8** %11, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* @stdout, align 4
  %99 = call i32 @fputs(i8* %97, i32 %98)
  %100 = load i8*, i8** %11, align 8
  %101 = call i32 @g_free(i8* %100)
  br label %148

102:                                              ; preds = %86
  %103 = load i8*, i8** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 102
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load i8*, i8** %8, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* @stdout, align 4
  %116 = call i32 @fputs(i8* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  br label %147

118:                                              ; preds = %102
  %119 = load i8*, i8** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 70
  br i1 %125, label %126, label %138

126:                                              ; preds = %118
  %127 = load i8*, i8** %8, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %126
  %130 = load i8*, i8** %8, align 8
  %131 = call i8* @g_shell_quote(i8* %130)
  store i8* %131, i8** %12, align 8
  %132 = load i8*, i8** %12, align 8
  %133 = load i32, i32* @stdout, align 4
  %134 = call i32 @fputs(i8* %132, i32 %133)
  %135 = load i8*, i8** %12, align 8
  %136 = call i32 @g_free(i8* %135)
  br label %137

137:                                              ; preds = %129, %126
  br label %146

138:                                              ; preds = %118
  %139 = load i8*, i8** %5, align 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = load i32, i32* @stdout, align 4
  %145 = call i32 @fputc(i8 signext %143, i32 %144)
  br label %146

146:                                              ; preds = %138, %137
  br label %147

147:                                              ; preds = %146, %117
  br label %148

148:                                              ; preds = %147, %94
  br label %149

149:                                              ; preds = %148, %85
  br label %150

150:                                              ; preds = %149, %59
  br label %151

151:                                              ; preds = %150, %46
  br label %152

152:                                              ; preds = %151, %34
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %13

156:                                              ; preds = %24
  %157 = load i32, i32* @stdout, align 4
  %158 = call i32 @fputc(i8 signext 10, i32 %157)
  %159 = load i32, i32* @stdout, align 4
  %160 = call i32 @fflush(i32 %159)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @pango_parse_markup(i8*, i32, i32, i32*, i8**, i32*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_shell_quote(i8*) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
