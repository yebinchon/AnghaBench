; ModuleID = '/home/carl/AnghaBench/tig/src/extr_util.c_mkauthor.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_util.c_mkauthor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident = type { i8*, i8* }

@AUTHOR_ABBREVIATED = common dso_local global i32 0, align 4
@AUTHOR_NO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AUTHOR_EMAIL = common dso_local global i32 0, align 4
@AUTHOR_EMAIL_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mkauthor(%struct.ident* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ident*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ident* %0, %struct.ident** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @author_trim(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @AUTHOR_ABBREVIATED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi i1 [ true, %3 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @AUTHOR_NO, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = load %struct.ident*, %struct.ident** %5, align 8
  %27 = icmp ne %struct.ident* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %19
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %73

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AUTHOR_EMAIL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load %struct.ident*, %struct.ident** %5, align 8
  %35 = getelementptr inbounds %struct.ident, %struct.ident* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.ident*, %struct.ident** %5, align 8
  %40 = getelementptr inbounds %struct.ident, %struct.ident* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %4, align 8
  br label %73

42:                                               ; preds = %33, %29
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @AUTHOR_EMAIL_USER, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load %struct.ident*, %struct.ident** %5, align 8
  %48 = getelementptr inbounds %struct.ident, %struct.ident* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.ident*, %struct.ident** %5, align 8
  %53 = getelementptr inbounds %struct.ident, %struct.ident* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i8* @get_email_user(i8* %54)
  store i8* %55, i8** %4, align 8
  br label %73

56:                                               ; preds = %46, %42
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.ident*, %struct.ident** %5, align 8
  %61 = getelementptr inbounds %struct.ident, %struct.ident* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.ident*, %struct.ident** %5, align 8
  %66 = getelementptr inbounds %struct.ident, %struct.ident* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i8* @get_author_initials(i8* %67)
  store i8* %68, i8** %4, align 8
  br label %73

69:                                               ; preds = %59, %56
  %70 = load %struct.ident*, %struct.ident** %5, align 8
  %71 = getelementptr inbounds %struct.ident, %struct.ident* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %4, align 8
  br label %73

73:                                               ; preds = %69, %64, %51, %38, %28
  %74 = load i8*, i8** %4, align 8
  ret i8* %74
}

declare dso_local i32 @author_trim(i32) #1

declare dso_local i8* @get_email_user(i8*) #1

declare dso_local i8* @get_author_initials(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
