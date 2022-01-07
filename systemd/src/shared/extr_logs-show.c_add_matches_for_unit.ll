; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_logs-show.c_add_matches_for_unit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_logs-show.c_add_matches_for_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"_SYSTEMD_UNIT=\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"COREDUMP_UNIT=\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"UNIT=\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"OBJECT_SYSTEMD_UNIT=\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"MESSAGE_ID=fc2e22bc6ee647b6b90729ab34a250b1\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"_UID=0\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"_PID=1\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c".slice\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"_SYSTEMD_SLICE=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_matches_for_unit(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @assert(i8* %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @assert(i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strjoina(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strjoina(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strjoina(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @strjoina(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @sd_journal_add_match(i8* %23, i8* %24, i32 0)
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %70, label %27

27:                                               ; preds = %2
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @sd_journal_add_disjunction(i8* %28)
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %70, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @sd_journal_add_match(i8* %32, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32 %33, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %70, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @sd_journal_add_match(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store i32 %37, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @sd_journal_add_match(i8* %40, i8* %41, i32 0)
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @sd_journal_add_disjunction(i8* %45)
  store i32 %46, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %70, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 @sd_journal_add_match(i8* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 0)
  store i32 %50, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %70, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @sd_journal_add_match(i8* %53, i8* %54, i32 0)
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %52
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @sd_journal_add_disjunction(i8* %58)
  store i32 %59, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %3, align 8
  %63 = call i32 @sd_journal_add_match(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store i32 %63, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %3, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @sd_journal_add_match(i8* %66, i8* %67, i32 0)
  store i32 %68, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %65, %61, %57, %52, %48, %44, %39, %35, %31, %27, %2
  %71 = phi i1 [ true, %61 ], [ true, %57 ], [ true, %52 ], [ true, %48 ], [ true, %44 ], [ true, %39 ], [ true, %35 ], [ true, %31 ], [ true, %27 ], [ true, %2 ], [ %69, %65 ]
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %70
  %76 = load i8*, i8** %4, align 8
  %77 = call i64 @endswith(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %75
  %80 = load i8*, i8** %4, align 8
  %81 = call i8* @strjoina(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %80)
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %3, align 8
  %83 = call i32 @sd_journal_add_disjunction(i8* %82)
  store i32 %83, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load i8*, i8** %3, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @sd_journal_add_match(i8* %86, i8* %87, i32 0)
  store i32 %88, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %85, %79
  %91 = phi i1 [ true, %79 ], [ %89, %85 ]
  %92 = zext i1 %91 to i32
  br label %93

93:                                               ; preds = %90, %75, %70
  %94 = load i32, i32* %9, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i32 @sd_journal_add_match(i8*, i8*, i32) #1

declare dso_local i32 @sd_journal_add_disjunction(i8*) #1

declare dso_local i64 @endswith(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
