; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_skip_user_manager.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_cgroup-util.c_skip_user_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"user@x.service\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"user@\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".service\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @skip_user_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @skip_user_manager(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @isempty(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %68

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strspn(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %3, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i64 @strcspn(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @STRLEN(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i8* null, i8** %2, align 8
  br label %68

24:                                               ; preds = %12
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @memcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 -8
  %33 = call i64 @memcmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %67

35:                                               ; preds = %28
  %36 = load i64, i64* %4, align 8
  %37 = sub i64 %36, 5
  %38 = sub i64 %37, 8
  %39 = add i64 %38, 1
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %5, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %6, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 5
  %44 = load i64, i64* %4, align 8
  %45 = sub i64 %44, 5
  %46 = sub i64 %45, 8
  %47 = call i32 @memcpy(i8* %41, i8* %43, i64 %46)
  %48 = load i64, i64* %4, align 8
  %49 = sub i64 %48, 5
  %50 = sub i64 %49, 8
  %51 = getelementptr inbounds i8, i8* %41, i64 %50
  store i8 0, i8* %51, align 1
  %52 = call i64 @parse_uid(i8* %41, i32* null)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  store i8* null, i8** %2, align 8
  store i32 1, i32* %7, align 4
  br label %65

55:                                               ; preds = %35
  %56 = load i64, i64* %4, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %3, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @strspn(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %61 = load i8*, i8** %3, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %3, align 8
  %64 = load i8*, i8** %3, align 8
  store i8* %64, i8** %2, align 8
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %55, %54
  %66 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %66)
  br label %68

67:                                               ; preds = %28, %24
  store i8* null, i8** %2, align 8
  br label %68

68:                                               ; preds = %67, %65, %23, %11
  %69 = load i8*, i8** %2, align 8
  ret i8* %69
}

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @STRLEN(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @parse_uid(i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
