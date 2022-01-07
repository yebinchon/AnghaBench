; ModuleID = '/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_lookup_field.c'
source_filename = "/home/carl/AnghaBench/systemd/src/journal/extr_sd-journal.c_lookup_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REPLACE_VAR_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @lookup_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup_field(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @assert(i8* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @assert(i8* %14)
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @sd_journal_get_data(i8* %16, i8* %17, i8** %7, i64* %8)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @REPLACE_VAR_MAX, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %2
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @strdup(i8* %26)
  store i8* %27, i8** %3, align 8
  br label %40

28:                                               ; preds = %21
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = sub i64 %36, %37
  %39 = call i8* @strndup(i8* %35, i64 %38)
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %28, %25
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @sd_journal_get_data(i8*, i8*, i8**, i64*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strndup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
