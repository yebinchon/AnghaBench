; ModuleID = '/home/carl/AnghaBench/redis/src/extr_acl.c_time_independent_strcmp.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_acl.c_time_independent_strcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_AUTHPASS_MAX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @time_independent_strcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @CONFIG_AUTHPASS_MAX_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load i32, i32* @CONFIG_AUTHPASS_MAX_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = icmp ugt i64 %26, %15
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = icmp ugt i64 %30, %19
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %72

33:                                               ; preds = %28
  %34 = trunc i64 %15 to i32
  %35 = call i32 @memset(i8* %17, i32 0, i32 %34)
  %36 = trunc i64 %19 to i32
  %37 = call i32 @memset(i8* %20, i32 0, i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @memcpy(i8* %17, i8* %38, i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @memcpy(i8* %20, i8* %41, i32 %42)
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %62, %33
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %46, %15
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %17, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %20, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = xor i32 %53, %58
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %44

65:                                               ; preds = %44
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = xor i32 %66, %67
  %69 = load i32, i32* %12, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %72

72:                                               ; preds = %65, %32
  %73 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
