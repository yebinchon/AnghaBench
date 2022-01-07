; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtablog.c_vtablog_string_parameter.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_vtablog.c_vtablog_string_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"more than one '%s' parameter\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8*, i8**)* @vtablog_string_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtablog_string_parameter(i8** %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strlen(i8* %12)
  %14 = trunc i64 %13 to i32
  %15 = load i8*, i8** %8, align 8
  %16 = call i8* @vtablog_parameter(i8* %11, i32 %14, i8* %15)
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

20:                                               ; preds = %4
  %21 = load i8**, i8*** %9, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i8**, i8*** %6, align 8
  store i8* %26, i8** %27, align 8
  store i32 1, i32* %5, align 4
  br label %45

28:                                               ; preds = %20
  %29 = load i8*, i8** %10, align 8
  %30 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %31 = load i8**, i8*** %9, align 8
  store i8* %30, i8** %31, align 8
  %32 = load i8**, i8*** %9, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = call i8* (i8*, ...) @sqlite3_mprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i8**, i8*** %6, align 8
  store i8* %36, i8** %37, align 8
  store i32 1, i32* %5, align 4
  br label %45

38:                                               ; preds = %28
  %39 = load i8**, i8*** %9, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @vtablog_trim_whitespace(i8* %40)
  %42 = load i8**, i8*** %9, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @vtablog_dequote(i8* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %35, %24, %19
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i8* @vtablog_parameter(i8*, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, ...) #1

declare dso_local i32 @vtablog_trim_whitespace(i8*) #1

declare dso_local i32 @vtablog_dequote(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
