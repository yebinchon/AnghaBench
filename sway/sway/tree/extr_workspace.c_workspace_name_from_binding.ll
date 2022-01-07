; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_name_from_binding.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_name_from_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_binding = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c",;\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"workspace\00", align 1
@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Got valid workspace command for target: '%s'\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"next_on_output\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"prev_on_output\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"back_and_forth\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"number \00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Isolated name from workspace number: '%s'\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Workspace: Found free name %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_binding*, i8*, i32*, i8**)* @workspace_name_from_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @workspace_name_from_binding(%struct.sway_binding* %0, i8* %1, i32* %2, i8** %3) #0 {
  %5 = alloca %struct.sway_binding*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.sway_binding* %0, %struct.sway_binding** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %16 = load %struct.sway_binding*, %struct.sway_binding** %5, align 8
  %17 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i8* @strdup(i8* %18)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  store i8* %20, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %21 = call i8* @argsep(i8** %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call i8* @argsep(i8** %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %24, %4
  %27 = load i8*, i8** %12, align 8
  %28 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %167

30:                                               ; preds = %26
  %31 = load i8*, i8** %11, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %167

33:                                               ; preds = %30
  %34 = load i8*, i8** %11, align 8
  %35 = call i8* @strdup(i8* %34)
  store i8* %35, i8** %13, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = call i8* @do_var_replacement(i8* %36)
  store i8* %37, i8** %13, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @strip_quotes(i8* %38)
  %40 = load i32, i32* @SWAY_DEBUG, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @sway_log(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %13, align 8
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %72, label %46

46:                                               ; preds = %33
  %47 = load i8*, i8** %13, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %13, align 8
  %52 = call i32 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %53 = call i64 @strncmp(i8* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %13, align 8
  %57 = call i32 @strlen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %58 = call i64 @strncmp(i8* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %13, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load i8*, i8** %13, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %13, align 8
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68, %64, %60, %55, %50, %46, %33
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @free(i8* %75)
  br label %170

77:                                               ; preds = %68
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %80 = call i64 @strncmp(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %79)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %124

82:                                               ; preds = %77
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %86 = sub nsw i32 %84, %85
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %14, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i8* @malloc(i64 %89)
  store i8* %90, i8** %15, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i64, i64* %14, align 8
  %97 = sub i64 %96, 1
  %98 = call i32 @strncpy(i8* %91, i8* %95, i64 %97)
  %99 = load i8*, i8** %15, align 8
  %100 = load i64, i64* %14, align 8
  %101 = sub i64 %100, 1
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 0, i8* %102, align 1
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i8*, i8** %15, align 8
  store i8* %105, i8** %13, align 8
  %106 = load i32, i32* @SWAY_DEBUG, align 4
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @sway_log(i32 %106, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i8* %107)
  %109 = load i8*, i8** %13, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = call i64 @isdigit(i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %82
  %115 = load i8*, i8** %13, align 8
  %116 = call i64 @workspace_by_number(i8* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @free(i8* %121)
  br label %170

123:                                              ; preds = %114, %82
  br label %124

124:                                              ; preds = %123, %77
  %125 = load i8*, i8** %13, align 8
  %126 = call i64 @workspace_by_name(i8* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load i8*, i8** %13, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i8*, i8** %10, align 8
  %132 = call i32 @free(i8* %131)
  br label %170

133:                                              ; preds = %124
  %134 = load i8*, i8** %6, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = call i32 @workspace_valid_on_output(i8* %134, i8* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load i8*, i8** %13, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load i8*, i8** %10, align 8
  %142 = call i32 @free(i8* %141)
  br label %170

143:                                              ; preds = %133
  %144 = load %struct.sway_binding*, %struct.sway_binding** %5, align 8
  %145 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %143
  %151 = load %struct.sway_binding*, %struct.sway_binding** %5, align 8
  %152 = getelementptr inbounds %struct.sway_binding, %struct.sway_binding* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %7, align 8
  store i32 %153, i32* %154, align 4
  %155 = load i8**, i8*** %8, align 8
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @free(i8* %156)
  %158 = load i8*, i8** %13, align 8
  %159 = load i8**, i8*** %8, align 8
  store i8* %158, i8** %159, align 8
  %160 = load i32, i32* @SWAY_DEBUG, align 4
  %161 = load i8*, i8** %13, align 8
  %162 = call i32 @sway_log(i32 %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %161)
  br label %166

163:                                              ; preds = %143
  %164 = load i8*, i8** %13, align 8
  %165 = call i32 @free(i8* %164)
  br label %166

166:                                              ; preds = %163, %150
  br label %167

167:                                              ; preds = %166, %30, %26
  %168 = load i8*, i8** %10, align 8
  %169 = call i32 @free(i8* %168)
  br label %170

170:                                              ; preds = %167, %138, %128, %118, %72
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @argsep(i8**, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @do_var_replacement(i8*) #1

declare dso_local i32 @strip_quotes(i8*) #1

declare dso_local i32 @sway_log(i32, i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @workspace_by_number(i8*) #1

declare dso_local i64 @workspace_by_name(i8*) #1

declare dso_local i32 @workspace_valid_on_output(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
