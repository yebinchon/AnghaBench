; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_parse_argv.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_pam_systemd.c_parse_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"class=\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"type=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"desktop=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"debug=\00", align 1
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to parse debug= argument, ignoring.\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Unknown parameter '%s', ignoring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8**, i8**, i8**, i8**, i32*)* @parse_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_argv(i32* %0, i32 %1, i8** %2, i8** %3, i8** %4, i8** %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = load i8**, i8*** %10, align 8
  %25 = icmp ne i8** %24, null
  br label %26

26:                                               ; preds = %23, %7
  %27 = phi i1 [ true, %7 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %152, %26
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %155

34:                                               ; preds = %30
  %35 = load i8**, i8*** %10, align 8
  %36 = load i32, i32* %15, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @startswith(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load i8**, i8*** %11, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i8**, i8*** %10, align 8
  %47 = load i32, i32* %15, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 6
  %52 = load i8**, i8*** %11, align 8
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %45, %42
  br label %151

54:                                               ; preds = %34
  %55 = load i8**, i8*** %10, align 8
  %56 = load i32, i32* %15, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @startswith(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %54
  %63 = load i8**, i8*** %12, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i8**, i8*** %10, align 8
  %67 = load i32, i32* %15, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 5
  %72 = load i8**, i8*** %12, align 8
  store i8* %71, i8** %72, align 8
  br label %73

73:                                               ; preds = %65, %62
  br label %150

74:                                               ; preds = %54
  %75 = load i8**, i8*** %10, align 8
  %76 = load i32, i32* %15, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @startswith(i8* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %74
  %83 = load i8**, i8*** %13, align 8
  %84 = icmp ne i8** %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i8**, i8*** %10, align 8
  %87 = load i32, i32* %15, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 8
  %92 = load i8**, i8*** %13, align 8
  store i8* %91, i8** %92, align 8
  br label %93

93:                                               ; preds = %85, %82
  br label %149

94:                                               ; preds = %74
  %95 = load i8**, i8*** %10, align 8
  %96 = load i32, i32* %15, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = call i64 @streq(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load i32*, i32** %14, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32*, i32** %14, align 8
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %102
  br label %148

108:                                              ; preds = %94
  %109 = load i8**, i8*** %10, align 8
  %110 = load i32, i32* %15, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = call i64 @startswith(i8* %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %138

116:                                              ; preds = %108
  %117 = load i8**, i8*** %10, align 8
  %118 = load i32, i32* %15, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 6
  %123 = call i32 @parse_boolean(i8* %122)
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %116
  %127 = load i32*, i32** %8, align 8
  %128 = load i32, i32* @LOG_WARNING, align 4
  %129 = call i32 (i32*, i32, i8*, ...) @pam_syslog(i32* %127, i32 %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %137

130:                                              ; preds = %116
  %131 = load i32*, i32** %14, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %16, align 4
  %135 = load i32*, i32** %14, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %130
  br label %137

137:                                              ; preds = %136, %126
  br label %147

138:                                              ; preds = %108
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* @LOG_WARNING, align 4
  %141 = load i8**, i8*** %10, align 8
  %142 = load i32, i32* %15, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i32*, i32, i8*, ...) @pam_syslog(i32* %139, i32 %140, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %138, %137
  br label %148

148:                                              ; preds = %147, %107
  br label %149

149:                                              ; preds = %148, %93
  br label %150

150:                                              ; preds = %149, %73
  br label %151

151:                                              ; preds = %150, %53
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %15, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %30

155:                                              ; preds = %30
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @startswith(i8*, i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @parse_boolean(i8*) #1

declare dso_local i32 @pam_syslog(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
