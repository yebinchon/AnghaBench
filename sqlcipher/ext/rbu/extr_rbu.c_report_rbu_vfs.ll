; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_rbu.c_report_rbu_vfs.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rbu/extr_rbu.c_report_rbu_vfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@SQLITE_FCNTL_VFSNAME = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"using vfs \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"vfs name not available\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_rbu_vfs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32* @sqlite3rbu_db(i32* %5, i32 0)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %1
  store i8* null, i8** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @SQLITE_FCNTL_VFSNAME, align 4
  %12 = call i32 @sqlite3_file_control(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11, i8** %4)
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @stdout, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %22

19:                                               ; preds = %9
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @sqlite3_free(i8* %23)
  br label %25

25:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32* @sqlite3rbu_db(i32*, i32) #1

declare dso_local i32 @sqlite3_file_control(i32*, i8*, i32, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
