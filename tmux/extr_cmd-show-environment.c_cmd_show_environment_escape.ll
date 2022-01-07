; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-show-environment.c_cmd_show_environment_escape.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-show-environment.c_cmd_show_environment_escape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.environ_entry = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.environ_entry*)* @cmd_show_environment_escape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cmd_show_environment_escape(%struct.environ_entry* %0) #0 {
  %2 = alloca %struct.environ_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.environ_entry* %0, %struct.environ_entry** %2, align 8
  %7 = load %struct.environ_entry*, %struct.environ_entry** %2, align 8
  %8 = getelementptr inbounds %struct.environ_entry, %struct.environ_entry* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 %12, 1
  %14 = call i8* @xmalloc(i32 %13)
  store i8* %14, i8** %6, align 8
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %40, %1
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %3, align 8
  %18 = load i8, i8* %16, align 1
  store i8 %18, i8* %4, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %15
  %22 = load i8, i8* %4, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 36
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = load i8, i8* %4, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 96
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i8, i8* %4, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 34
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i8, i8* %4, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 92
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %29, %25, %21
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  store i8 92, i8* %38, align 1
  br label %40

40:                                               ; preds = %37, %33
  %41 = load i8, i8* %4, align 1
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %5, align 8
  store i8 %41, i8* %42, align 1
  br label %15

44:                                               ; preds = %15
  %45 = load i8*, i8** %5, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %6, align 8
  ret i8* %46
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
