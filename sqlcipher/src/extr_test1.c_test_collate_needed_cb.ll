; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_test_collate_needed_cb.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test1.c_test_collate_needed_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zNeededCollation = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"test_collate\00", align 1
@test_collate_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i8*)* @test_collate_needed_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_collate_needed_cb(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @ENC(i32* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %11, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %41, %4
  %16 = load i8*, i8** %11, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %11, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %20, %15
  %27 = phi i1 [ true, %15 ], [ %25, %20 ]
  br i1 %27, label %28, label %44

28:                                               ; preds = %26
  %29 = load i8*, i8** %11, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i8*, i8** %11, align 8
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** @zNeededCollation, align 8
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  store i8 %34, i8* %39, align 1
  br label %40

40:                                               ; preds = %32, %28
  br label %41

41:                                               ; preds = %40
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 8
  br label %15

44:                                               ; preds = %26
  %45 = load i8*, i8** @zNeededCollation, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @ENC(i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @SQLITE_INT_TO_PTR(i32 %52)
  %54 = load i32, i32* @test_collate_func, align 4
  %55 = call i32 @sqlite3_create_collation(i32* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @ENC(i32*) #1

declare dso_local i32 @sqlite3_create_collation(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @SQLITE_INT_TO_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
