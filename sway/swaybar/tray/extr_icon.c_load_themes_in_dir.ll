; ModuleID = '/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_load_themes_in_dir.c'
source_filename = "/home/carl/AnghaBench/sway/swaybar/tray/extr_icon.c_load_themes_in_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }
%struct.icon_theme = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @load_themes_in_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @load_themes_in_dir(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.icon_theme*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32* @opendir(i8* %8)
  store i32* %9, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %44

12:                                               ; preds = %1
  %13 = call i32* (...) @create_list()
  store i32* %13, i32** %5, align 8
  br label %14

14:                                               ; preds = %39, %26, %12
  %15 = load i32*, i32** %4, align 8
  %16 = call %struct.dirent* @readdir(i32* %15)
  store %struct.dirent* %16, %struct.dirent** %6, align 8
  %17 = icmp ne %struct.dirent* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load %struct.dirent*, %struct.dirent** %6, align 8
  %20 = getelementptr inbounds %struct.dirent, %struct.dirent* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 46
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %14

27:                                               ; preds = %18
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.dirent*, %struct.dirent** %6, align 8
  %30 = getelementptr inbounds %struct.dirent, %struct.dirent* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call %struct.icon_theme* @read_theme_file(i8* %28, i8* %31)
  store %struct.icon_theme* %32, %struct.icon_theme** %7, align 8
  %33 = load %struct.icon_theme*, %struct.icon_theme** %7, align 8
  %34 = icmp ne %struct.icon_theme* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.icon_theme*, %struct.icon_theme** %7, align 8
  %38 = call i32 @list_add(i32* %36, %struct.icon_theme* %37)
  br label %39

39:                                               ; preds = %35, %27
  br label %14

40:                                               ; preds = %14
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @closedir(i32* %41)
  %43 = load i32*, i32** %5, align 8
  store i32* %43, i32** %2, align 8
  br label %44

44:                                               ; preds = %40, %11
  %45 = load i32*, i32** %2, align 8
  ret i32* %45
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32* @create_list(...) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local %struct.icon_theme* @read_theme_file(i8*, i8*) #1

declare dso_local i32 @list_add(i32*, %struct.icon_theme*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
