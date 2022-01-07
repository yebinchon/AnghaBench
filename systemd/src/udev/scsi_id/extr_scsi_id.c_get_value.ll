; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_id.c_get_value.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/scsi_id/extr_scsi_id.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_value.quote_string = internal global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@get_value.comma_string = internal global i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_value(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  %5 = load i8**, i8*** %2, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 34
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i8**, i8*** %2, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %11, align 8
  %14 = load i8*, i8** @get_value.quote_string, align 8
  store i8* %14, i8** %4, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load i8*, i8** @get_value.comma_string, align 8
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i8**, i8*** %2, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strsep(i8** %18, i8* %19)
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** @get_value.quote_string, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i8**, i8*** %2, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %28, align 8
  br label %31

31:                                               ; preds = %27, %23, %17
  br label %32

32:                                               ; preds = %38, %31
  %33 = load i8**, i8*** %2, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isspace(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i8**, i8*** %2, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  br label %32

42:                                               ; preds = %32
  %43 = load i8*, i8** %3, align 8
  ret i8* %43
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
