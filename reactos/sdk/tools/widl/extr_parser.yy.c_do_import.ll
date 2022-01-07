; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.yy.c_do_import.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_parser.yy.c_do_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imports = type { %struct.imports*, i8* }
%struct.TYPE_2__ = type { i8*, i8*, i32, i32 }

@import_stack_ptr = common dso_local global i32 0, align 4
@first_import = common dso_local global %struct.imports* null, align 8
@input_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Unable to open include file %s\0A\00", align 1
@MAX_IMPORT_DEPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Exceeded max import depth\0A\00", align 1
@temp_name = common dso_local global i8* null, align 8
@import_stack = common dso_local global %struct.TYPE_2__* null, align 8
@line_number = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"widl.XXXXXX\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Could not generate a temp name from %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"wt\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Could not open fd %s for writing\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Unable to open %s\0A\00", align 1
@YY_CURRENT_BUFFER = common dso_local global i32 0, align 4
@YY_BUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_import(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.imports*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i32, i32* @import_stack_ptr, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.imports*, %struct.imports** @first_import, align 8
  store %struct.imports* %12, %struct.imports** %7, align 8
  br label %13

13:                                               ; preds = %25, %1
  %14 = load %struct.imports*, %struct.imports** %7, align 8
  %15 = icmp ne %struct.imports* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.imports*, %struct.imports** %7, align 8
  %18 = getelementptr inbounds %struct.imports, %struct.imports* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strcmp(i8* %19, i8* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %16, %13
  %24 = phi i1 [ false, %13 ], [ %22, %16 ]
  br i1 %24, label %25, label %29

25:                                               ; preds = %23
  %26 = load %struct.imports*, %struct.imports** %7, align 8
  %27 = getelementptr inbounds %struct.imports, %struct.imports* %26, i32 0, i32 0
  %28 = load %struct.imports*, %struct.imports** %27, align 8
  store %struct.imports* %28, %struct.imports** %7, align 8
  br label %13

29:                                               ; preds = %23
  %30 = load %struct.imports*, %struct.imports** %7, align 8
  %31 = icmp ne %struct.imports* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %133

33:                                               ; preds = %29
  %34 = call %struct.imports* @xmalloc(i32 16)
  store %struct.imports* %34, %struct.imports** %7, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i8* @xstrdup(i8* %35)
  %37 = load %struct.imports*, %struct.imports** %7, align 8
  %38 = getelementptr inbounds %struct.imports, %struct.imports* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.imports*, %struct.imports** @first_import, align 8
  %40 = load %struct.imports*, %struct.imports** %7, align 8
  %41 = getelementptr inbounds %struct.imports, %struct.imports* %40, i32 0, i32 0
  store %struct.imports* %39, %struct.imports** %41, align 8
  %42 = load %struct.imports*, %struct.imports** %7, align 8
  store %struct.imports* %42, %struct.imports** @first_import, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @strchr(i8* %43, i8 signext 47)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %33
  %47 = load i8*, i8** %3, align 8
  %48 = call i64 @strchr(i8* %47, i8 signext 92)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46, %33
  %51 = load i8*, i8** %3, align 8
  %52 = call i8* @xstrdup(i8* %51)
  store i8* %52, i8** %5, align 8
  br label %62

53:                                               ; preds = %46
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** @input_name, align 8
  %56 = call i8* @wpp_find_include(i8* %54, i8* %55)
  store i8* %56, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 (i8*, ...) @error_loc(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %61, %50
  %63 = load i32, i32* @import_stack_ptr, align 4
  %64 = load i32, i32* @MAX_IMPORT_DEPTH, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 (i8*, ...) @error_loc(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %62
  %69 = load i8*, i8** @temp_name, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @import_stack, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i8* %69, i8** %74, align 8
  %75 = load i8*, i8** @input_name, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @import_stack, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i8* %75, i8** %80, align 8
  %81 = load i32, i32* @line_number, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @import_stack, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i32 %81, i32* %86, align 8
  %87 = load i32, i32* @import_stack_ptr, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @import_stack_ptr, align 4
  %89 = load i8*, i8** %5, align 8
  store i8* %89, i8** @input_name, align 8
  store i32 1, i32* @line_number, align 4
  %90 = call i8* @xstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %90, i8** %6, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @mkstemps(i8* %91, i32 0)
  store i32 %92, i32* %10, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %68
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %94, %68
  %98 = load i8*, i8** %6, align 8
  store i8* %98, i8** @temp_name, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32* @fdopen(i32 %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %100, i32** %4, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i8*, i8** %5, align 8
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @wpp_parse(i8* %106, i32* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @fclose(i32* %109)
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = call i32 @exit(i32 1) #3
  unreachable

115:                                              ; preds = %105
  %116 = load i8*, i8** @temp_name, align 8
  %117 = call i32* @fopen(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32* %117, i32** %4, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i8*, i8** @temp_name, align 8
  %121 = call i32 (i8*, ...) @error_loc(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i32, i32* @YY_CURRENT_BUFFER, align 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** @import_stack, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 3
  store i32 %123, i32* %128, align 4
  %129 = load i32*, i32** %4, align 8
  %130 = load i32, i32* @YY_BUF_SIZE, align 4
  %131 = call i32 @parser__create_buffer(i32* %129, i32 %130)
  %132 = call i32 @parser__switch_to_buffer(i32 %131)
  store i32 1, i32* %2, align 4
  br label %133

133:                                              ; preds = %122, %32
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.imports* @xmalloc(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @wpp_find_include(i8*, i8*) #1

declare dso_local i32 @error_loc(i8*, ...) #1

declare dso_local i32 @mkstemps(i8*, i32) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @wpp_parse(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @parser__switch_to_buffer(i32) #1

declare dso_local i32 @parser__create_buffer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
