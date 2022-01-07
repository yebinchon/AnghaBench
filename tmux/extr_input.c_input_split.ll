; ModuleID = '/home/carl/AnghaBench/tmux/extr_input.c_input_split.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_input.c_input_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_ctx = type { i64, i64, i8*, %struct.input_param* }
%struct.input_param = type { i64, i32, i32 }

@INPUT_STRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@INPUT_MISSING = common dso_local global i64 0, align 8
@INPUT_NUMBER = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"parameter %u: missing\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"parameter %u: string %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"parameter %u: number %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_ctx*)* @input_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_split(%struct.input_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.input_param*, align 8
  %8 = alloca i64, align 8
  store %struct.input_ctx* %0, %struct.input_ctx** %3, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %12 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %16, i32 0, i32 3
  %18 = load %struct.input_param*, %struct.input_param** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.input_param, %struct.input_param* %18, i64 %19
  %21 = getelementptr inbounds %struct.input_param, %struct.input_param* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INPUT_STRING, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %26, i32 0, i32 3
  %28 = load %struct.input_param*, %struct.input_param** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.input_param, %struct.input_param* %28, i64 %29
  %31 = getelementptr inbounds %struct.input_param, %struct.input_param* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @free(i32 %32)
  br label %34

34:                                               ; preds = %25, %15
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %9

38:                                               ; preds = %9
  %39 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %163

46:                                               ; preds = %38
  %47 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %47, i32 0, i32 3
  %49 = load %struct.input_param*, %struct.input_param** %48, align 8
  %50 = getelementptr inbounds %struct.input_param, %struct.input_param* %49, i64 0
  store %struct.input_param* %50, %struct.input_param** %7, align 8
  %51 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %5, align 8
  br label %54

54:                                               ; preds = %110, %46
  %55 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %55, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %111

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i64, i64* @INPUT_MISSING, align 8
  %64 = load %struct.input_param*, %struct.input_param** %7, align 8
  %65 = getelementptr inbounds %struct.input_param, %struct.input_param* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %92

66:                                               ; preds = %57
  %67 = load i8*, i8** %6, align 8
  %68 = call i32* @strchr(i8* %67, i8 signext 58)
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i64, i64* @INPUT_STRING, align 8
  %72 = load %struct.input_param*, %struct.input_param** %7, align 8
  %73 = getelementptr inbounds %struct.input_param, %struct.input_param* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @xstrdup(i8* %74)
  %76 = load %struct.input_param*, %struct.input_param** %7, align 8
  %77 = getelementptr inbounds %struct.input_param, %struct.input_param* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  br label %91

78:                                               ; preds = %66
  %79 = load i64, i64* @INPUT_NUMBER, align 8
  %80 = load %struct.input_param*, %struct.input_param** %7, align 8
  %81 = getelementptr inbounds %struct.input_param, %struct.input_param* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* @INT_MAX, align 4
  %84 = call i32 @strtonum(i8* %82, i32 0, i32 %83, i8** %4)
  %85 = load %struct.input_param*, %struct.input_param** %7, align 8
  %86 = getelementptr inbounds %struct.input_param, %struct.input_param* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  store i32 -1, i32* %2, align 4
  br label %163

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %70
  br label %92

92:                                               ; preds = %91, %62
  %93 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %93, i32 0, i32 3
  %95 = load %struct.input_param*, %struct.input_param** %94, align 8
  %96 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %97 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  %100 = getelementptr inbounds %struct.input_param, %struct.input_param* %95, i64 %99
  store %struct.input_param* %100, %struct.input_param** %7, align 8
  %101 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %105 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %104, i32 0, i32 3
  %106 = load %struct.input_param*, %struct.input_param** %105, align 8
  %107 = call i64 @nitems(%struct.input_param* %106)
  %108 = icmp eq i64 %103, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  store i32 -1, i32* %2, align 4
  br label %163

110:                                              ; preds = %92
  br label %54

111:                                              ; preds = %54
  store i64 0, i64* %8, align 8
  br label %112

112:                                              ; preds = %159, %111
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %115 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ult i64 %113, %116
  br i1 %117, label %118, label %162

118:                                              ; preds = %112
  %119 = load %struct.input_ctx*, %struct.input_ctx** %3, align 8
  %120 = getelementptr inbounds %struct.input_ctx, %struct.input_ctx* %119, i32 0, i32 3
  %121 = load %struct.input_param*, %struct.input_param** %120, align 8
  %122 = load i64, i64* %8, align 8
  %123 = getelementptr inbounds %struct.input_param, %struct.input_param* %121, i64 %122
  store %struct.input_param* %123, %struct.input_param** %7, align 8
  %124 = load %struct.input_param*, %struct.input_param** %7, align 8
  %125 = getelementptr inbounds %struct.input_param, %struct.input_param* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @INPUT_MISSING, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load i64, i64* %8, align 8
  %131 = call i32 (i8*, i64, ...) @log_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %130)
  br label %158

132:                                              ; preds = %118
  %133 = load %struct.input_param*, %struct.input_param** %7, align 8
  %134 = getelementptr inbounds %struct.input_param, %struct.input_param* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @INPUT_STRING, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i64, i64* %8, align 8
  %140 = load %struct.input_param*, %struct.input_param** %7, align 8
  %141 = getelementptr inbounds %struct.input_param, %struct.input_param* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i64, ...) @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %139, i32 %142)
  br label %157

144:                                              ; preds = %132
  %145 = load %struct.input_param*, %struct.input_param** %7, align 8
  %146 = getelementptr inbounds %struct.input_param, %struct.input_param* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @INPUT_NUMBER, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load i64, i64* %8, align 8
  %152 = load %struct.input_param*, %struct.input_param** %7, align 8
  %153 = getelementptr inbounds %struct.input_param, %struct.input_param* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i8*, i64, ...) @log_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %151, i32 %154)
  br label %156

156:                                              ; preds = %150, %144
  br label %157

157:                                              ; preds = %156, %138
  br label %158

158:                                              ; preds = %157, %129
  br label %159

159:                                              ; preds = %158
  %160 = load i64, i64* %8, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %8, align 8
  br label %112

162:                                              ; preds = %112
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %109, %89, %45
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @free(i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @xstrdup(i8*) #1

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i64 @nitems(%struct.input_param*) #1

declare dso_local i32 @log_debug(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
