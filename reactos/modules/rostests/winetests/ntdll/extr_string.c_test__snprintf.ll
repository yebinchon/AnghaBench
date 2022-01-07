; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test__snprintf.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_string.c_test__snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"XXXXXXXXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"hello world\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"_snprintf returned %d, expected %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"_snprintf returned %d, expected %d or < 0.\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"_snprintf returned %d, expected < 0.\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"hello worldX\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"_snprintf returned buffer '%s', expected 'hello worldX'.\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"_snprintf returned buffer '%s', expected '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test__snprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test__snprintf() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i32, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @p__snprintf(i8* null, i32 0, i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @lstrlenA(i8* %8)
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %0
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, -1
  %14 = zext i1 %13 to i32
  %15 = call i64 @broken(i32 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %11, %0
  %18 = phi i1 [ true, %0 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* %4, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @lstrlenA(i8* %21)
  %23 = call i32 (i32, i8*, ...) @ok(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %20, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %43

26:                                               ; preds = %17
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 @p__snprintf(i8* null, i32 1, i8* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @lstrlenA(i8* %30)
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br label %36

36:                                               ; preds = %33, %26
  %37 = phi i1 [ true, %26 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %4, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @lstrlenA(i8* %40)
  %42 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %36, %17
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = sub nsw i32 %46, 1
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @p__snprintf(i8* %44, i32 %47, i8* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %56 = load i8*, i8** %1, align 8
  %57 = call i32 @strcpy(i8* %55, i8* %56)
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @p__snprintf(i8* %58, i32 %60, i8* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @lstrlenA(i8* %64)
  %66 = icmp eq i32 %63, %65
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %4, align 4
  %69 = load i8*, i8** %2, align 8
  %70 = call i32 @lstrlenA(i8* %69)
  %71 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %70)
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %80 = load i8*, i8** %1, align 8
  %81 = call i32 @strcpy(i8* %79, i8* %80)
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %83 = load i8*, i8** %2, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = add nsw i32 %84, 1
  %86 = load i8*, i8** %2, align 8
  %87 = call i32 @p__snprintf(i8* %82, i32 %85, i8* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = load i8*, i8** %2, align 8
  %90 = call i32 @lstrlenA(i8* %89)
  %91 = icmp eq i32 %88, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %4, align 4
  %94 = load i8*, i8** %2, align 8
  %95 = call i32 @lstrlenA(i8* %94)
  %96 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %95)
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %98 = load i8*, i8** %2, align 8
  %99 = call i32 @strcmp(i8* %97, i8* %98)
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %104 = load i8*, i8** %2, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %103, i8* %104)
  ret void
}

declare dso_local i32 @p__snprintf(i8*, i32, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @lstrlenA(i8*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
