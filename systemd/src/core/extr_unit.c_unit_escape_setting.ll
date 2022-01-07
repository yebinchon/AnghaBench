; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_escape_setting.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit.c_unit_escape_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNIT_ESCAPE_SPECIFIERS = common dso_local global i32 0, align 4
@UNIT_ESCAPE_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @unit_escape_setting(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %63

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @UNIT_ESCAPE_SPECIFIERS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @specifier_escape(i8* %19)
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i8* null, i8** %4, align 8
  br label %63

24:                                               ; preds = %18
  %25 = load i8*, i8** %8, align 8
  store i8* %25, i8** %5, align 8
  br label %26

26:                                               ; preds = %24, %13
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @UNIT_ESCAPE_C, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @cescape(i8* %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @free(i8* %34)
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  store i8* null, i8** %4, align 8
  br label %63

39:                                               ; preds = %31
  %40 = load i8*, i8** %9, align 8
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %39, %26
  %42 = load i8**, i8*** %7, align 8
  %43 = icmp ne i8** %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = load i8**, i8*** %7, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %52

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i8* [ %47, %49 ], [ %51, %50 ]
  store i8* %53, i8** %4, align 8
  br label %63

54:                                               ; preds = %41
  %55 = load i8*, i8** %8, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %61

58:                                               ; preds = %54
  %59 = load i8*, i8** %5, align 8
  %60 = call i8* @strdup(i8* %59)
  br label %61

61:                                               ; preds = %58, %57
  %62 = phi i8* [ %55, %57 ], [ %60, %58 ]
  store i8* %62, i8** %4, align 8
  br label %63

63:                                               ; preds = %61, %52, %38, %23, %12
  %64 = load i8*, i8** %4, align 8
  ret i8* %64
}

declare dso_local i8* @specifier_escape(i8*) #1

declare dso_local i8* @cescape(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
