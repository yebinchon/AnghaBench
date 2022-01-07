; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_tplt_open.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_tplt_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lemon = type { i8*, i32, i32 }

@tplt_open.templatename = internal global [9 x i8] c"lempar.c\00", align 1
@user_templatename = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Can't find the parser driver template file \22%s\22.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't open the template file \22%s\22.\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%.*s.lt\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s.lt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tplt_open(%struct.lemon* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.lemon*, align 8
  %4 = alloca [1000 x i8], align 16
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.lemon* %0, %struct.lemon** %3, align 8
  %8 = load i64, i64* @user_templatename, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  %11 = load i64, i64* @user_templatename, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i64 @access(i8* %12, i32 4)
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* @stderr, align 4
  %17 = load i64, i64* @user_templatename, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load %struct.lemon*, %struct.lemon** %3, align 8
  %21 = getelementptr inbounds %struct.lemon, %struct.lemon* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  store i32* null, i32** %2, align 8
  br label %108

24:                                               ; preds = %10
  %25 = load i64, i64* @user_templatename, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load i32, i32* @stderr, align 4
  %32 = load i64, i64* @user_templatename, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load %struct.lemon*, %struct.lemon** %3, align 8
  %36 = getelementptr inbounds %struct.lemon, %struct.lemon* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  store i32* null, i32** %2, align 8
  br label %108

39:                                               ; preds = %24
  %40 = load i32*, i32** %5, align 8
  store i32* %40, i32** %2, align 8
  br label %108

41:                                               ; preds = %1
  %42 = load %struct.lemon*, %struct.lemon** %3, align 8
  %43 = getelementptr inbounds %struct.lemon, %struct.lemon* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @strrchr(i8* %44, i8 signext 46)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %41
  %49 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.lemon*, %struct.lemon** %3, align 8
  %52 = getelementptr inbounds %struct.lemon, %struct.lemon* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %50 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.lemon*, %struct.lemon** %3, align 8
  %59 = getelementptr inbounds %struct.lemon, %struct.lemon* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i8*, ...) @lemon_sprintf(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %57, i8* %60)
  br label %68

62:                                               ; preds = %41
  %63 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %64 = load %struct.lemon*, %struct.lemon** %3, align 8
  %65 = getelementptr inbounds %struct.lemon, %struct.lemon* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i8*, ...) @lemon_sprintf(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %62, %48
  %69 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  %70 = call i64 @access(i8* %69, i32 4)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = getelementptr inbounds [1000 x i8], [1000 x i8]* %4, i64 0, i64 0
  store i8* %73, i8** %6, align 8
  br label %84

74:                                               ; preds = %68
  %75 = call i64 @access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tplt_open.templatename, i64 0, i64 0), i32 4)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tplt_open.templatename, i64 0, i64 0), i8** %6, align 8
  br label %83

78:                                               ; preds = %74
  %79 = load %struct.lemon*, %struct.lemon** %3, align 8
  %80 = getelementptr inbounds %struct.lemon, %struct.lemon* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @pathsearch(i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tplt_open.templatename, i64 0, i64 0), i32 0)
  store i8* %82, i8** %6, align 8
  br label %83

83:                                               ; preds = %78, %77
  br label %84

84:                                               ; preds = %83, %72
  %85 = load i8*, i8** %6, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* @stderr, align 4
  %89 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tplt_open.templatename, i64 0, i64 0))
  %90 = load %struct.lemon*, %struct.lemon** %3, align 8
  %91 = getelementptr inbounds %struct.lemon, %struct.lemon* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  store i32* null, i32** %2, align 8
  br label %108

94:                                               ; preds = %84
  %95 = load i8*, i8** %6, align 8
  %96 = call i32* @fopen(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %96, i32** %5, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i32, i32* @stderr, align 4
  %101 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tplt_open.templatename, i64 0, i64 0))
  %102 = load %struct.lemon*, %struct.lemon** %3, align 8
  %103 = getelementptr inbounds %struct.lemon, %struct.lemon* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  store i32* null, i32** %2, align 8
  br label %108

106:                                              ; preds = %94
  %107 = load i32*, i32** %5, align 8
  store i32* %107, i32** %2, align 8
  br label %108

108:                                              ; preds = %106, %99, %87, %39, %30, %15
  %109 = load i32*, i32** %2, align 8
  ret i32* %109
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @lemon_sprintf(i8*, i8*, ...) #1

declare dso_local i8* @pathsearch(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
