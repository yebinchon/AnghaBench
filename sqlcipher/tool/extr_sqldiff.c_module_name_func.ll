; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_module_name_func.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_sqldiff.c_module_name_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"using\00", align 1
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @module_name_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @module_name_func(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [32 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 1
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32**, i32*** %6, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @sqlite3_value_text(i32* %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %20 = call i8* @gobble_token(i8* %18, i8* %19, i32 32)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %25 = call i64 @sqlite3_stricmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %3
  br label %76

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %31 = call i8* @gobble_token(i8* %29, i8* %30, i32 32)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %36 = call i64 @sqlite3_stricmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %28
  br label %76

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %42 = call i8* @gobble_token(i8* %40, i8* %41, i32 32)
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %47 = call i64 @sqlite3_stricmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %39
  br label %76

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %53 = call i8* @gobble_token(i8* %51, i8* %52, i32 32)
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %76

57:                                               ; preds = %50
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %60 = call i8* @gobble_token(i8* %58, i8* %59, i32 32)
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %65 = call i64 @sqlite3_stricmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %57
  br label %76

68:                                               ; preds = %63
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %71 = call i8* @gobble_token(i8* %69, i8* %70, i32 32)
  store i8* %71, i8** %7, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %74 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %75 = call i32 @sqlite3_result_text(i32* %72, i8* %73, i32 -1, i32 %74)
  br label %76

76:                                               ; preds = %68, %67, %56, %49, %38, %27
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i8* @gobble_token(i8*, i8*, i32) #1

declare dso_local i64 @sqlite3_stricmp(i8*, i8*) #1

declare dso_local i32 @sqlite3_result_text(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
