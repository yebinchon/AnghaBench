; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regcmds.c_PerformRegAction.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/regdump/extr_regcmds.c_PerformRegAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@KEY_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No file name is specified\0A%s\00", align 1
@usage = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't open file \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"No registry key is specified for removal\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Unhandled action!\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PerformRegAction(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @KEY_MAX_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %79 [
    i32 130, label %18
    i32 129, label %44
    i32 128, label %56
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = call i32 @get_file_name(i32** %5, i8* %13, i32 %19)
  %21 = getelementptr inbounds i8, i8* %13, i64 0
  %22 = load i8, i8* %21, align 16
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** @usage, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %84

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %40, %28
  %30 = getelementptr inbounds i8, i8* %13, i64 0
  %31 = load i8, i8* %30, align 16
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = call i32 @import_registry_file(i8* %13)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = call i32 @perror(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %13)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %84

40:                                               ; preds = %33
  %41 = load i32, i32* @MAX_PATH, align 4
  %42 = call i32 @get_file_name(i32** %5, i8* %13, i32 %41)
  br label %29

43:                                               ; preds = %29
  br label %82

44:                                               ; preds = %2
  %45 = load i32, i32* @KEY_MAX_LEN, align 4
  %46 = call i32 @get_file_name(i32** %5, i8* %16, i32 %45)
  %47 = getelementptr inbounds i8, i8* %16, i64 0
  %48 = load i8, i8* %47, align 16
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** @usage, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %84

54:                                               ; preds = %44
  %55 = call i32 @delete_registry_key(i8* %16)
  br label %82

56:                                               ; preds = %2
  %57 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %57, align 16
  %58 = load i32, i32* @MAX_PATH, align 4
  %59 = call i32 @get_file_name(i32** %5, i8* %13, i32 %58)
  %60 = getelementptr inbounds i8, i8* %13, i64 0
  %61 = load i8, i8* %60, align 16
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load i8*, i8** @usage, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %84

67:                                               ; preds = %56
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @KEY_MAX_LEN, align 4
  %74 = call i32 @get_file_name(i32** %5, i8* %16, i32 %73)
  %75 = call i32 @export_registry_key(i8* %13, i8* %16)
  br label %78

76:                                               ; preds = %67
  %77 = call i32 @export_registry_key(i8* %13, i8* null)
  br label %78

78:                                               ; preds = %76, %72
  br label %82

79:                                               ; preds = %2
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %84

82:                                               ; preds = %78, %54, %43
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %84

84:                                               ; preds = %82, %79, %63, %50, %36, %24
  %85 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %85)
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_file_name(i32**, i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @import_registry_file(i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @delete_registry_key(i8*) #2

declare dso_local i32 @export_registry_key(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
