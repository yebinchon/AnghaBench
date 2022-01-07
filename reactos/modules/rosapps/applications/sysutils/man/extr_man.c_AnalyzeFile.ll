; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/man/extr_man.c_AnalyzeFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/man/extr_man.c_AnalyzeFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLINE = common dso_local global i32 0, align 4
@manfile = common dso_local global i32 0, align 4
@BOLD = common dso_local global i32 0, align 4
@NORMAL = common dso_local global i32 0, align 4
@ITALIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AnalyzeFile() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @MAXLINE, align 4
  %4 = sext i32 %3 to i64
  %5 = mul i64 1, %4
  %6 = trunc i64 %5 to i32
  %7 = call i64 @malloc(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %1, align 8
  %9 = load i32, i32* @MAXLINE, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 1, %10
  %12 = trunc i64 %11 to i32
  %13 = call i64 @malloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %166, %0
  %16 = load i8*, i8** %1, align 8
  %17 = load i32, i32* @MAXLINE, align 4
  %18 = load i32, i32* @manfile, align 4
  %19 = call i64 @fgets(i8* %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %167

21:                                               ; preds = %15
  %22 = load i8*, i8** %1, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 46
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load i8*, i8** %1, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 83
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load i8*, i8** %1, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 72
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* @BOLD, align 4
  %41 = call i32 @SetCl(i32 %40)
  %42 = load i8*, i8** %1, align 8
  %43 = call i32 @sh_outp(i8* %42)
  %44 = load i32, i32* @NORMAL, align 4
  %45 = call i32 @SetCl(i32 %44)
  br label %166

46:                                               ; preds = %33, %27, %21
  %47 = load i8*, i8** %1, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %71

52:                                               ; preds = %46
  %53 = load i8*, i8** %1, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 73
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load i8*, i8** %1, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 32
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* @ITALIC, align 4
  %66 = call i32 @SetCl(i32 %65)
  %67 = load i8*, i8** %1, align 8
  %68 = call i32 @text_outp(i8* %67)
  %69 = load i32, i32* @NORMAL, align 4
  %70 = call i32 @SetCl(i32 %69)
  br label %165

71:                                               ; preds = %58, %52, %46
  %72 = load i8*, i8** %1, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 46
  br i1 %76, label %77, label %90

77:                                               ; preds = %71
  %78 = load i8*, i8** %1, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 47
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i8*, i8** %1, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 34
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %164

90:                                               ; preds = %83, %77, %71
  %91 = load i8*, i8** %1, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 46
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load i8*, i8** %1, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 84
  br i1 %101, label %102, label %112

102:                                              ; preds = %96
  %103 = load i8*, i8** %1, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 72
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i8*, i8** %2, align 8
  %110 = load i8*, i8** %1, align 8
  %111 = call i32 @strcpy(i8* %109, i8* %110)
  br label %163

112:                                              ; preds = %102, %96, %90
  %113 = load i8*, i8** %1, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %118, label %137

118:                                              ; preds = %112
  %119 = load i8*, i8** %1, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 66
  br i1 %123, label %124, label %137

124:                                              ; preds = %118
  %125 = load i8*, i8** %1, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 32
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load i32, i32* @BOLD, align 4
  %132 = call i32 @SetCl(i32 %131)
  %133 = load i8*, i8** %1, align 8
  %134 = call i32 @text_outp(i8* %133)
  %135 = load i32, i32* @NORMAL, align 4
  %136 = call i32 @SetCl(i32 %135)
  br label %162

137:                                              ; preds = %124, %118, %112
  %138 = load i8*, i8** %1, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 0
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 46
  br i1 %142, label %143, label %158

143:                                              ; preds = %137
  %144 = load i8*, i8** %1, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 78
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load i8*, i8** %1, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 76
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = call i32 @putchar(i8 signext 10)
  %157 = call i32 @putchar(i8 signext 32)
  br label %161

158:                                              ; preds = %149, %143, %137
  %159 = load i8*, i8** %1, align 8
  %160 = call i32 @text_outp(i8* %159)
  br label %161

161:                                              ; preds = %158, %155
  br label %162

162:                                              ; preds = %161, %130
  br label %163

163:                                              ; preds = %162, %108
  br label %164

164:                                              ; preds = %163, %89
  br label %165

165:                                              ; preds = %164, %64
  br label %166

166:                                              ; preds = %165, %39
  br label %15

167:                                              ; preds = %15
  %168 = load i8*, i8** %1, align 8
  %169 = load i8*, i8** %2, align 8
  %170 = call i32 @th_outp(i8* %168, i8* %169)
  %171 = load i8*, i8** %1, align 8
  %172 = call i32 @free(i8* %171)
  %173 = load i8*, i8** %2, align 8
  %174 = call i32 @free(i8* %173)
  ret i32 0
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i32 @SetCl(i32) #1

declare dso_local i32 @sh_outp(i8*) #1

declare dso_local i32 @text_outp(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @th_outp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
