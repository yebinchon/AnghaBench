; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_findoldfile.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_findoldfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@installdir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"/\\\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"\0AERROR: %s and %s clash.  Remove or rename %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"\0AERROR: failed to rename %s to %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\0AERROR: failed to rename %s back to %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @findoldfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findoldfile(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  %8 = load i8**, i8*** %2, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** @installdir, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** @installdir, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @strnicmp(i8* %19, i8* %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  %27 = load i8, i8* %25, align 1
  %28 = call i32* @strchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = call i32* @strchr(i8* %31, i8 signext 92)
  %33 = icmp ne i32* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call i32* @strchr(i8* %35, i8 signext 47)
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30, %24, %18, %1
  br label %94

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = add nsw i32 %41, 1
  %43 = call i8* @alloc(i32 %42)
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strcpy(i8* %44, i8* %45)
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  store i8 120, i8* %52, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @access(i8* %53, i32 0)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %39
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %58, i8* %59)
  %61 = call i32 @myexit(i32 1)
  br label %62

62:                                               ; preds = %56, %39
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @rename(i8* %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i8* @strerror(i32 0)
  %71 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* %69, i8* %70)
  %72 = call i32 @myexit(i32 1)
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i8*, i8** %5, align 8
  %75 = call i8* @searchpath_save(i8* %74)
  store i8* %75, i8** %7, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i64 @rename(i8* %76, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %5, align 8
  %83 = call i8* @strerror(i32 0)
  %84 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %81, i8* %82, i8* %83)
  %85 = call i32 @myexit(i32 1)
  br label %86

86:                                               ; preds = %80, %73
  %87 = load i8**, i8*** %2, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @free(i8* %90)
  %92 = load i8*, i8** %7, align 8
  %93 = load i8**, i8*** %2, align 8
  store i8* %92, i8** %93, align 8
  br label %94

94:                                               ; preds = %86, %38
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strnicmp(i8*, i8*, i64) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @alloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @myexit(i32) #1

declare dso_local i64 @rename(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i8* @searchpath_save(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
