; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_demovfs.c_demoFullPathname.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_demovfs.c_demoFullPathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHNAME = common dso_local global i32 0, align 4
@SQLITE_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i8*)* @demoFullPathname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demoFullPathname(i32* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @MAXPATHNAME, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %24, align 16
  br label %32

25:                                               ; preds = %4
  %26 = trunc i64 %15 to i32
  %27 = call i64 @getcwd(i8* %17, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @SQLITE_IOERR, align 4
  store i32 %30, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %46

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* @MAXPATHNAME, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %17, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load i32, i32* %8, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @sqlite3_snprintf(i32 %36, i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %38)
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* @SQLITE_OK, align 4
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %46

46:                                               ; preds = %32, %29
  %47 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getcwd(i8*, i32) #2

declare dso_local i32 @sqlite3_snprintf(i32, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
