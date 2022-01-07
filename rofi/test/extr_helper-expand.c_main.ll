; ModuleID = '/home/carl/AnghaBench/rofi/test/extr_helper-expand.c_main.c'
source_filename = "/home/carl/AnghaBench/rofi/test/extr_helper-expand.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to set locale.\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"../AUTHORS\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"/bin/false\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"~/\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"~root/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @cmd_set_arguments(i32 %8, i8** %9)
  %11 = load i32, i32* @LC_ALL, align 4
  %12 = call i32* @setlocale(i32 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = call i8* @rofi_expand_path(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @TASSERT(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @g_free(i8* %25)
  %27 = call i8* @rofi_expand_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @TASSERT(i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @g_free(i8* %33)
  %35 = call i8* @rofi_expand_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @TASSERT(i32 %39)
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @g_free(i8* %41)
  %43 = call i8* @rofi_expand_path(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i8* %43, i8** %6, align 8
  %44 = call i8* (...) @g_get_home_dir()
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strcmp(i8* %45, i8* %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @TASSERT(i32 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @g_free(i8* %51)
  %53 = call i8* @rofi_expand_path(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  store i8* %53, i8** %6, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 47
  %59 = zext i1 %58 to i32
  %60 = call i32 @TASSERT(i32 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @g_free(i8* %61)
  br label %63

63:                                               ; preds = %18, %14
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @cmd_set_arguments(i32, i8**) #1

declare dso_local i32* @setlocale(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @rofi_expand_path(i8*) #1

declare dso_local i32 @TASSERT(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_get_home_dir(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
