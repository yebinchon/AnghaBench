; ModuleID = '/home/carl/AnghaBench/tmux/extr_format.c_format_sub.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_format.c_format_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.format_modifier = type { i32, i32* }

@REG_EXTENDED = common dso_local global i32 0, align 4
@REG_ICASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.format_modifier*, i8*, i8*, i8*)* @format_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_sub(%struct.format_modifier* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.format_modifier*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.format_modifier* %0, %struct.format_modifier** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32, i32* @REG_EXTENDED, align 4
  store i32 %12, i32* %11, align 4
  %13 = load %struct.format_modifier*, %struct.format_modifier** %6, align 8
  %14 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 3
  br i1 %16, label %17, label %29

17:                                               ; preds = %4
  %18 = load %struct.format_modifier*, %struct.format_modifier** %6, align 8
  %19 = getelementptr inbounds %struct.format_modifier, %struct.format_modifier* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @strchr(i32 %22, i8 signext 105)
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* @REG_ICASE, align 4
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %25, %17, %4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i8* @regsub(i8* %30, i8* %31, i8* %32, i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @xstrdup(i8* %38)
  store i8* %39, i8** %5, align 8
  br label %42

40:                                               ; preds = %29
  %41 = load i8*, i8** %10, align 8
  store i8* %41, i8** %5, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i8*, i8** %5, align 8
  ret i8* %43
}

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i8* @regsub(i8*, i8*, i8*, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
