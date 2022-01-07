; ModuleID = '/home/carl/AnghaBench/tig/src/extr_argv.c_format_expand_arg.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_argv.c_format_expand_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.format_context = type { i32, i32, i32, i32, %struct.format_var* }
%struct.format_var = type { i32 (%struct.format_context.0*, %struct.format_var*)*, i32*, i32, i32 }
%struct.format_context.0 = type opaque

@.str = private unnamed_addr constant [9 x i8] c"%(prompt\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Command argument: \00", align 1
@SIZEOF_STR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@argv_env = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.format_context*, i8*, i8*)* @format_expand_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_expand_arg(%struct.format_context* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.format_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.format_var*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.format_context* %0, %struct.format_context** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.format_context*, %struct.format_context** %5, align 8
  %19 = getelementptr inbounds %struct.format_context, %struct.format_context* %18, i32 0, i32 4
  %20 = load %struct.format_var*, %struct.format_var** %19, align 8
  store %struct.format_var* %20, %struct.format_var** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @prefixcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %82, label %24

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %25 = load i32, i32* @SIZEOF_STR, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %11, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %12, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sub nsw i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %15, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %66

42:                                               ; preds = %24
  %43 = load i32, i32* %15, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = load i8*, i8** %14, align 8
  %48 = call i64 @string_format(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %46, i8* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  store i8* %28, i8** %16, align 8
  br label %51

51:                                               ; preds = %56, %50
  %52 = load i8*, i8** %16, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isspace(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %16, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %16, align 8
  br label %51

59:                                               ; preds = %51
  %60 = load i8*, i8** %16, align 8
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i8*, i8** %16, align 8
  store i8* %64, i8** %10, align 8
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %45, %42, %24
  %67 = load i8*, i8** %10, align 8
  %68 = call i8* @read_prompt(i8* %67)
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %80

72:                                               ; preds = %66
  %73 = load %struct.format_context*, %struct.format_context** %5, align 8
  %74 = getelementptr inbounds %struct.format_context, %struct.format_context* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.format_context*, %struct.format_context** %5, align 8
  %77 = getelementptr inbounds %struct.format_context, %struct.format_context* %76, i32 0, i32 2
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @string_format_from(i32 %75, i32* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  store i32 %79, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %80

80:                                               ; preds = %72, %71
  %81 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %81)
  br label %138

82:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %134, %82
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.format_context*, %struct.format_context** %5, align 8
  %86 = getelementptr inbounds %struct.format_context, %struct.format_context* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %137

89:                                               ; preds = %83
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.format_var*, %struct.format_var** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.format_var, %struct.format_var* %91, i64 %93
  %95 = getelementptr inbounds %struct.format_var, %struct.format_var* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.format_var*, %struct.format_var** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.format_var, %struct.format_var* %97, i64 %99
  %101 = getelementptr inbounds %struct.format_var, %struct.format_var* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i64 @string_enum_compare(i8* %90, i32 %96, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %89
  br label %134

106:                                              ; preds = %89
  %107 = load %struct.format_var*, %struct.format_var** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.format_var, %struct.format_var* %107, i64 %109
  %111 = getelementptr inbounds %struct.format_var, %struct.format_var* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @argv_env, i32 0, i32 0)
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.format_context*, %struct.format_context** %5, align 8
  %116 = getelementptr inbounds %struct.format_context, %struct.format_context* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %114
  store i32 1, i32* %4, align 4
  br label %138

120:                                              ; preds = %114, %106
  %121 = load %struct.format_var*, %struct.format_var** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.format_var, %struct.format_var* %121, i64 %123
  %125 = getelementptr inbounds %struct.format_var, %struct.format_var* %124, i32 0, i32 0
  %126 = load i32 (%struct.format_context.0*, %struct.format_var*)*, i32 (%struct.format_context.0*, %struct.format_var*)** %125, align 8
  %127 = load %struct.format_context*, %struct.format_context** %5, align 8
  %128 = bitcast %struct.format_context* %127 to %struct.format_context.0*
  %129 = load %struct.format_var*, %struct.format_var** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.format_var, %struct.format_var* %129, i64 %131
  %133 = call i32 %126(%struct.format_context.0* %128, %struct.format_var* %132)
  store i32 %133, i32* %4, align 4
  br label %138

134:                                              ; preds = %105
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %83

137:                                              ; preds = %83
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %137, %120, %119, %80
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @prefixcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @STRING_SIZE(i8*) #1

declare dso_local i64 @string_format(i8*, i8*, i32, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @read_prompt(i8*) #1

declare dso_local i32 @string_format_from(i32, i32*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @string_enum_compare(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
