; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ExtractTypeName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ExtractTypeName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ExtractTypeName.temp = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [21 x i8] c"ExtractTypeName(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"hit invalid page %x!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ExtractTypeName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = ptrtoint i8* %4 to i32
  %6 = call i32 @DPRINT(i32 %5)
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i8*, i8** %2, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = call i64 @IsAddressValid(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 58
  br label %22

22:                                               ; preds = %17, %12, %7
  %23 = phi i1 [ false, %12 ], [ false, %7 ], [ %21, %17 ]
  br i1 %23, label %24, label %34

24:                                               ; preds = %22
  %25 = load i8*, i8** %2, align 8
  %26 = load i8, i8* %25, align 1
  %27 = load i64, i64* %3, align 8
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* @ExtractTypeName.temp, i64 0, i64 %27
  store i8 %26, i8* %28, align 1
  br label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %2, align 8
  br label %7

34:                                               ; preds = %22
  %35 = load i8*, i8** %2, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = call i64 @IsAddressValid(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %2, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = trunc i64 %41 to i32
  %43 = call i32 @DPRINT(i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* @ExtractTypeName.temp, i64 0, i64 %45
  store i8 0, i8* %46, align 1
  ret i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @ExtractTypeName.temp, i64 0, i64 0)
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @IsAddressValid(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
