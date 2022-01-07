; ModuleID = '/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_print_statuschange.c'
source_filename = "/home/carl/AnghaBench/toxcore/testing/extr_nTox.c_print_statuschange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TOX_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"[i] [%d] %s's status changed to %s.\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"[i] [%d] Their status changed to %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_statuschange(i32* %0, i32 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load i32, i32* @TOX_MAX_NAME_LENGTH, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @getfriendname_terminated(i32* %20, i32 %21, i8* %19)
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %48

24:                                               ; preds = %5
  %25 = load i64, i64* %9, align 8
  %26 = add i64 100, %25
  %27 = call i32 @strlen(i8* %19)
  %28 = sext i32 %27 to i64
  %29 = add i64 %26, %28
  %30 = add i64 %29, 1
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %13, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %14, align 8
  %33 = getelementptr inbounds i8, i8* %19, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 (i8*, i8*, i32, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %19, i8* %39)
  br label %45

41:                                               ; preds = %24
  %42 = load i32, i32* %7, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 (i8*, i8*, i32, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = call i32 @new_lines(i8* %32)
  %47 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %47)
  br label %48

48:                                               ; preds = %45, %5
  %49 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %49)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getfriendname_terminated(i32*, i32, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, ...) #2

declare dso_local i32 @new_lines(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
