; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_integration.c_workshop_perform_verb.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_integration.c_workshop_perform_verb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@save_files = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"build.build\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"build.build-file\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"debug.fix\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"debug.fix-all\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"toolVerb %s %s %d,%d %d,%d %d,%d %d %s\0A\00", align 1
@sd = common dso_local global i32 0, align 4
@dummy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_perform_verb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %16 = load i32, i32* @MAXPATHLEN, align 4
  %17 = mul nsw i32 2, %16
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @workshop_get_positions(i8* %21, i8** %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i8** %13)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %2
  %25 = load i8*, i8** %13, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i8* @NOCATGETS(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %13, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i64, i64* @save_files, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %29
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44, %40, %36, %32
  %49 = call i32 (...) @workshop_save_files()
  br label %50

50:                                               ; preds = %48, %44
  br label %51

51:                                               ; preds = %50, %29
  %52 = trunc i64 %18 to i32
  %53 = call i8* @NOCATGETS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 @vim_snprintf(i8* %20, i32 %52, i8* %53, i8* %54, i8* %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i8* %63)
  %65 = load i32, i32* @sd, align 4
  %66 = call i32 @strlen(i8* %20)
  %67 = call i32 @write(i32 %65, i8* %20, i32 %66)
  store i32 %67, i32* @dummy, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %51
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @free(i8* %72)
  br label %74

74:                                               ; preds = %71, %51
  br label %75

75:                                               ; preds = %74, %2
  %76 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %76)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @workshop_get_positions(i8*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8**) #2

declare dso_local i8* @NOCATGETS(i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @workshop_save_files(...) #2

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
