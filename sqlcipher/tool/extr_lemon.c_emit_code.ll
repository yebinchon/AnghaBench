; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_emit_code.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_emit_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rule = type { i8*, i8*, i32, i8* }
%struct.lemon = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"{%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_code(i32* %0, %struct.rule* %1, %struct.lemon* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rule*, align 8
  %7 = alloca %struct.lemon*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.rule* %1, %struct.rule** %6, align 8
  store %struct.lemon* %2, %struct.lemon** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.rule*, %struct.rule** %6, align 8
  %11 = getelementptr inbounds %struct.rule, %struct.rule* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %49

14:                                               ; preds = %4
  %15 = load %struct.rule*, %struct.rule** %6, align 8
  %16 = getelementptr inbounds %struct.rule, %struct.rule* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %14
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.rule*, %struct.rule** %6, align 8
  %25 = getelementptr inbounds %struct.rule, %struct.rule* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.rule*, %struct.rule** %6, align 8
  %29 = getelementptr inbounds %struct.rule, %struct.rule* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %45, %22
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %9, align 8
  br label %31

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %14, %4
  %50 = load %struct.rule*, %struct.rule** %6, align 8
  %51 = getelementptr inbounds %struct.rule, %struct.rule* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %119

54:                                               ; preds = %49
  %55 = load %struct.lemon*, %struct.lemon** %7, align 8
  %56 = getelementptr inbounds %struct.lemon, %struct.lemon* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.rule*, %struct.rule** %6, align 8
  %65 = getelementptr inbounds %struct.rule, %struct.rule* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.lemon*, %struct.lemon** %7, align 8
  %68 = getelementptr inbounds %struct.lemon, %struct.lemon* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @tplt_linedir(i32* %63, i32 %66, i32 %69)
  br label %71

71:                                               ; preds = %59, %54
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.rule*, %struct.rule** %6, align 8
  %74 = getelementptr inbounds %struct.rule, %struct.rule* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %75)
  %77 = load %struct.rule*, %struct.rule** %6, align 8
  %78 = getelementptr inbounds %struct.rule, %struct.rule* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %9, align 8
  br label %80

80:                                               ; preds = %94, %71
  %81 = load i8*, i8** %9, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i8*, i8** %9, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %89, %84
  br label %94

94:                                               ; preds = %93
  %95 = load i8*, i8** %9, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %9, align 8
  br label %80

97:                                               ; preds = %80
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.lemon*, %struct.lemon** %7, align 8
  %104 = getelementptr inbounds %struct.lemon, %struct.lemon* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %118, label %107

107:                                              ; preds = %97
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.lemon*, %struct.lemon** %7, align 8
  %115 = getelementptr inbounds %struct.lemon, %struct.lemon* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @tplt_linedir(i32* %111, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %107, %97
  br label %119

119:                                              ; preds = %118, %49
  %120 = load %struct.rule*, %struct.rule** %6, align 8
  %121 = getelementptr inbounds %struct.rule, %struct.rule* %120, i32 0, i32 3
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %159

124:                                              ; preds = %119
  %125 = load %struct.rule*, %struct.rule** %6, align 8
  %126 = getelementptr inbounds %struct.rule, %struct.rule* %125, i32 0, i32 3
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %159

132:                                              ; preds = %124
  %133 = load i32*, i32** %5, align 8
  %134 = load %struct.rule*, %struct.rule** %6, align 8
  %135 = getelementptr inbounds %struct.rule, %struct.rule* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i32*, i8*, ...) @fprintf(i32* %133, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %136)
  %138 = load %struct.rule*, %struct.rule** %6, align 8
  %139 = getelementptr inbounds %struct.rule, %struct.rule* %138, i32 0, i32 3
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** %9, align 8
  br label %141

141:                                              ; preds = %155, %132
  %142 = load i8*, i8** %9, align 8
  %143 = load i8, i8* %142, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load i8*, i8** %9, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp eq i32 %148, 10
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i32*, i32** %8, align 8
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %150, %145
  br label %155

155:                                              ; preds = %154
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %9, align 8
  br label %141

158:                                              ; preds = %141
  br label %159

159:                                              ; preds = %158, %124, %119
  %160 = load %struct.rule*, %struct.rule** %6, align 8
  %161 = getelementptr inbounds %struct.rule, %struct.rule* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 (i32*, i8*, ...) @fprintf(i32* %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %159
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @tplt_linedir(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
