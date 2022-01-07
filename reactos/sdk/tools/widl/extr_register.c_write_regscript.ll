; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_write_regscript.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_register.c_write_regscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_regscript = common dso_local global i32 0, align 4
@do_everything = common dso_local global i64 0, align 8
@indent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"HKCR\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"NoRemove Interface\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"NoRemove CLSID\0A\00", align 1
@regscript_name = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c".res\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"WINE_REGISTRY\00", align 1
@regscript_token = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Could not open %s for output\0A\00", align 1
@output_buffer = common dso_local global i32 0, align 4
@output_buffer_pos = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [23 x i8] c"Failed to write to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_regscript(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @do_regscript, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %89

8:                                                ; preds = %1
  %9 = load i64, i64* @do_everything, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @need_proxy_file(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %89

16:                                               ; preds = %11, %8
  %17 = call i32 (...) @init_output_buffer()
  %18 = load i32, i32* @indent, align 4
  %19 = call i32 @put_str(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @indent, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @indent, align 4
  %22 = call i32 @put_str(i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @indent, align 4
  %24 = call i32 @put_str(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @indent, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @indent, align 4
  %27 = call i32 @put_str(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32*, i32** %2, align 8
  %29 = call i32* @find_ps_factory(i32* %28)
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %16
  %33 = load i32*, i32** %2, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @write_interfaces(i32* %33, i32* %34)
  br label %36

36:                                               ; preds = %32, %16
  %37 = load i32, i32* @indent, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* @indent, align 4
  %39 = call i32 @put_str(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @indent, align 4
  %41 = call i32 @put_str(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* @indent, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @indent, align 4
  %44 = call i32 @put_str(i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @write_coclasses(i32* %45, i32* null)
  %47 = load i32, i32* @indent, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* @indent, align 4
  %49 = call i32 @put_str(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @write_progids(i32* %50)
  %52 = load i32, i32* @indent, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* @indent, align 4
  %54 = call i32 @put_str(i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @regscript_name, align 4
  %56 = call i64 @strendswith(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %36
  %59 = load i32, i32* @regscript_token, align 4
  %60 = call i32 @add_output_to_resources(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @regscript_name, align 4
  %62 = call i32 @flush_output_resources(i32 %61)
  br label %89

63:                                               ; preds = %36
  %64 = load i32, i32* @regscript_name, align 4
  %65 = call i32* @fopen(i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @regscript_name, align 4
  %70 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* @output_buffer, align 4
  %73 = load i64, i64* @output_buffer_pos, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i64 @fwrite(i32 %72, i32 1, i64 %73, i32* %74)
  %76 = load i64, i64* @output_buffer_pos, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @regscript_name, align 4
  %80 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %71
  %82 = load i32*, i32** %4, align 8
  %83 = call i64 @fclose(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* @regscript_name, align 4
  %87 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %7, %15, %88, %58
  ret void
}

declare dso_local i32 @need_proxy_file(i32*) #1

declare dso_local i32 @init_output_buffer(...) #1

declare dso_local i32 @put_str(i32, i8*) #1

declare dso_local i32* @find_ps_factory(i32*) #1

declare dso_local i32 @write_interfaces(i32*, i32*) #1

declare dso_local i32 @write_coclasses(i32*, i32*) #1

declare dso_local i32 @write_progids(i32*) #1

declare dso_local i64 @strendswith(i32, i8*) #1

declare dso_local i32 @add_output_to_resources(i8*, i32) #1

declare dso_local i32 @flush_output_resources(i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i64 @fwrite(i32, i32, i64, i32*) #1

declare dso_local i64 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
