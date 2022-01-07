; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_get_zdb_bin.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_get_zdb_bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"ZDB_PATH\00", align 1
@ztest_dump_core = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid ZDB_PATH '%s'\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/ztest/\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"/zdb/zdb\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"zdb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ztest_get_zdb_bin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest_get_zdb_bin(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @strlcpy(i8* %9, i8* %10, i32 %11)
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @ztest_check_path(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %8
  store i64 0, i64* @ztest_dump_core, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @fatal(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %16, %8
  br label %44

20:                                               ; preds = %2
  %21 = call i32 (...) @getexecname()
  %22 = load i8*, i8** %3, align 8
  %23 = call i32* @realpath(i32 %21, i8* %22)
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @VERIFY(i32 %25)
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @strstr(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @strstr(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @strcat(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i8*, i8** %3, align 8
  %37 = call i64 @ztest_check_path(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %44

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i8*, i8** %3, align 8
  %43 = call i32 @strcpy(i8* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %39, %19
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i64 @ztest_check_path(i8*) #1

declare dso_local i32 @fatal(i32, i8*, i8*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32* @realpath(i32, i8*) #1

declare dso_local i32 @getexecname(...) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
