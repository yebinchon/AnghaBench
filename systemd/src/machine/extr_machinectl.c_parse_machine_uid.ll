; ModuleID = '/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_parse_machine_uid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/machine/extr_machinectl.c_parse_machine_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@arg_uid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c".host\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8**)* @parse_machine_uid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_machine_uid(i8* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 64)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %13
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp eq i8* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %72

25:                                               ; preds = %18
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = ptrtoint i8* %29 to i64
  %32 = ptrtoint i8* %30 to i64
  %33 = sub i64 %31, %32
  %34 = trunc i64 %33 to i32
  %35 = call i8* @strndup(i8* %28, i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %72

41:                                               ; preds = %25
  br label %44

42:                                               ; preds = %13
  %43 = load i8*, i8** %5, align 8
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %42, %41
  br label %45

45:                                               ; preds = %44, %3
  %46 = load i64, i64* @arg_uid, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = load i64, i64* @arg_uid, align 8
  %53 = call i8* @strdup(i64 %52)
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %72

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %48, %45
  %61 = load i8*, i8** %8, align 8
  %62 = load i8**, i8*** %7, align 8
  store i8* %61, i8** %62, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i64 @isempty(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %69

67:                                               ; preds = %60
  %68 = load i8*, i8** %9, align 8
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %66 ], [ %68, %67 ]
  %71 = load i8**, i8*** %6, align 8
  store i8* %70, i8** %71, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %56, %38, %22
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i8* @strdup(i64) #1

declare dso_local i64 @isempty(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
